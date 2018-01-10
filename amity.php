<?php
//settings default
$config_file = "config.json";
$start = false;
$build = false;


//options
$shortopts  = "";
$shortopts .= "c:";  // Required value
$shortopts .= "::"; // Optional value
$shortopts .= "bs"; // These options do not accept values
$longopts  = array(
      "config:",
      "build",
      "start"
);
$options = getopt($shortopts, $longopts);

//assiginig values
if(isset($options["c"])) $config_file = $options["c"];
if(isset($options["config"])) $config_file = $options["config"];
if(isset($options["s"]) || isset($options["start"])) $start = true;
if(isset($options["b"]) || isset($options["build"])) $build = true;

class Module {
      private $name;
      private $path;
      private $version;
      private $require;
      private $provides;
      private $out;
      private $dir;
      public $namespace;
      public function __construct($path, $out, $dir) {
            $this->path = $path;
            $this->out = $out;
            $this->dir = $dir;
            $config = json_decode(file_get_contents($this->path . DIRECTORY_SEPARATOR . "config.json"));
            $this->name = $config->module;
            $this->namespace = $config->namespace;
            $this->version = $config->version;
            $this->require = $config->require;
            $this->provides = $config->provides;
      }
      private function checkProvider($name = "") {
            if(isset($this->provides->$name)) {
                  if(is_file($this->path . DIRECTORY_SEPARATOR . $this->provides->$name)) return true;
            }
            return false;
      }
      public function getXML() {
            $string = "";
            if($this->checkProvider("stringtable")) $string = file_get_contents($this->path . DIRECTORY_SEPARATOR . $this->provides->stringtable);
            return $string;
      }
      public function getINI() {
            $string = "";
            if($this->checkProvider("db_ini")) $string = file_get_contents($this->path . DIRECTORY_SEPARATOR . $this->provides->db_ini);
            return $string;
      }
      public function getProvider($name) {
            $str = '#include "' . $this->name;
            return ($this->checkProvider($name)) ? $str . "\\" . $this->provides->$name . '"' : "";
      }
}
class Amity {
      private $path;
      private $mission;
      private $server;
      private $addons;
      private $output;
      private $config;
      private $modules;
      private $mission_modules = array();
      private $extDB;
      private $server_modules = array();
      private $environment;


      public function __construct($config_file) {
            $this->path = dirname(__FILE__);
            $this->config = json_decode(file_get_contents($config_file));
            $this->mission = $this->path . DIRECTORY_SEPARATOR . $this->config->mission;
            $this->server = $this->path . DIRECTORY_SEPARATOR . $this->config->server;
            $this->output = $this->path . DIRECTORY_SEPARATOR . $this->config->output;
            $this->addons = $this->path . DIRECTORY_SEPARATOR . $this->config->addons;
            $this->extDB_dir = $this->path . DIRECTORY_SEPARATOR . $this->config->extDB->dir;
            $this->extDB_ini = $this->config->extDB->ini;
            $this->environment = $this->config->environment;
      }
      public function start() {
            $server_out = $this->output . DIRECTORY_SEPARATOR . $this->config->server;
            $extDB_out = $this->output . DIRECTORY_SEPARATOR . $this->config->extDB->dir;
            $mission_out = $this->output . DIRECTORY_SEPARATOR . $this->config->mission;
            $MPMissions = $this->environment->local->arma3 . DIRECTORY_SEPARATOR . "MPmissions";

            $this->clearFolder($MPMissions. DIRECTORY_SEPARATOR . $this->config->mission);
            $this->clearFolder($this->environment->local->temp . DIRECTORY_SEPARATOR . $this->config->server);
            $this->clearFolder($this->environment->local->arma3 . DIRECTORY_SEPARATOR . $this->config->extDB->dir);

            $this->copyFiles($server_out, $this->environment->local->temp . DIRECTORY_SEPARATOR. $this->config->server);
            $this->copyFiles($mission_out, $MPMissions. DIRECTORY_SEPARATOR. $this->config->mission);
            $this->copyFiles($extDB_out, $this->environment->local->arma3 . DIRECTORY_SEPARATOR . $this->config->extDB->dir);
            $server_folder = $this->environment->local->arma3 . DIRECTORY_SEPARATOR . "@" . $this->config->server;
            $server_addons = $server_folder . DIRECTORY_SEPARATOR . "addons";
            if(!is_dir($server_folder)) {
                  mkdir($server_folder);
                  mkdir($server_addons);
            }
            $this->makePBO($server_out, $server_addons);

      }
      private function makePBO($from, $to) {
            echo "Make PBO" . PHP_EOL;
            echo "From: " . $from . PHP_EOL;
            echo "To: " . $to . PHP_EOL;
            if(is_dir($from) && (is_dir($to) || is_file($to))) {
                  $run = '"' . $this->environment->local->arma3Tools . "\AddonBuilder\AddonBuilder.exe" . '" ';
                  $run .= '"' . $from . '" "' . $to . '"';
                  echo $run . PHP_EOL;
                  shell_exec($run);
            }
      }
      private function startServer() {
            $this->environment->local->arma3;
            shell_exec("start /b");
      }
      private function createAddons() {
            $folder = $this->output . DIRECTORY_SEPARATOR . "addons";
            if(is_dir($folder)) $this->clearFolder($folder);
            mkdir($folder);
      }
      private function compile_extdb() {
            $extDB_out = $this->output . DIRECTORY_SEPARATOR . $this->config->extDB->dir;
            $this->createAddons();
            if(is_dir($extDB_out)) {
                  echo "Clearing extDB directory" . PHP_EOL;
                  $this->clearFolder($extDB_out);
            }
            echo "Creating extDB Folder" . PHP_EOL;
            mkdir($extDB_out);
            $this->copyFiles($this->extDB_dir, $extDB_out);
      }
      public function compile_server($extDB = false) {
            $server_out = $this->output . DIRECTORY_SEPARATOR . $this->config->server;
            echo "Setting output to:" . PHP_EOL;
            echo $server_out . PHP_EOL;

            $server_config = json_decode(file_get_contents($this->server  . DIRECTORY_SEPARATOR . "config.json"));
            if(is_dir($server_out)) {
                  echo "Clearing Server directory" . PHP_EOL;
                  $this->clearFolder($server_out);
            }
            echo "Creating Server Folder" . PHP_EOL;
            mkdir($server_out);

            echo "Scaning for modules" . PHP_EOL;
            $jsons = $this->scan_files($this->server . DIRECTORY_SEPARATOR . $server_config->modules->dir, array("json"));
            foreach($jsons as $j) {
                  $module = new Module(pathinfo($j, PATHINFO_DIRNAME), $server_out, $server_config->modules->dir);
                  array_push($this->server_modules, $module);
                  echo $module->namespace . PHP_EOL;
            }

            //copying files
            echo "Copying files" . PHP_EOL;
            $this->copyFiles($this->server, $server_out, $server_config->exclude);

            //autoloading Modules
            echo "Putting Includes into .hpp files" . PHP_EOL;
            $server_folder = $server_out . DIRECTORY_SEPARATOR . $server_config->modules->dir;
            foreach($this->server_modules as $m) {
                  file_put_contents($server_folder . DIRECTORY_SEPARATOR . "Functions.hpp", $m->getProvider("Functions") . PHP_EOL, FILE_APPEND | LOCK_EX);
            }

            //crafting INI
            if($extDB) {
                  echo "Compiling extDB" . PHP_EOL;
                  $this->compile_extdb();
                  echo "Preparing .ini file" . PHP_EOL;
                  $this->appendINI($this->output . DIRECTORY_SEPARATOR . $this->config->extDB->dir . DIRECTORY_SEPARATOR . "sql_custom" . DIRECTORY_SEPARATOR . $this->extDB_ini, $this->server_modules);
            }

            //adding modules to settings
            echo "Adding modules to mission serverConfig.cpp" . PHP_EOL;
            $this->autoloadFunction($server_out . DIRECTORY_SEPARATOR . "Functions" . DIRECTORY_SEPARATOR . "Core" . DIRECTORY_SEPARATOR . "Init" . DIRECTORY_SEPARATOR . 'initModules.sqf', $this->server_modules, '/[ \t]{0,}(modules)[ \t]{0,}[=]{1}[ \t]{0,}[\[]/', "];");

      }
      public function compile_mission() {
            //prepare output
            $mission_out = $this->output . DIRECTORY_SEPARATOR . $this->config->mission;
            echo "Setting output to:" . PHP_EOL;
            echo $mission_out . PHP_EOL;

            $mission_config = json_decode(file_get_contents($this->mission  . DIRECTORY_SEPARATOR . "config.json"));
            if(is_dir($mission_out)) {
                  echo "Clearing Mission directory" . PHP_EOL;
                  $this->clearFolder($mission_out);
            }
            echo "Creating Mission Folder" . PHP_EOL;
            mkdir($mission_out);

            //find modules
            echo "Scaning for modules" . PHP_EOL;
            $jsons = $this->scan_files($this->mission . DIRECTORY_SEPARATOR . $mission_config->modules->dir, array("json"));
            foreach($jsons as $j) {
                  $module = new Module(pathinfo($j, PATHINFO_DIRNAME), $mission_out, $mission_config->modules->dir);
                  array_push($this->mission_modules, $module);
                  echo $module->namespace . PHP_EOL;
            }


            //copying files
            echo "Copying files" . PHP_EOL;
            $this->copyFiles($this->mission, $mission_out, $mission_config->exclude);

            //crafting XML
            echo "Preparing Stringtable" . PHP_EOL;
            $this->appendXML($mission_out . DIRECTORY_SEPARATOR . "stringtable.xml", $this->mission_modules);

            //autoloading Modules
            echo "Putting Includes into .hpp files" . PHP_EOL;
            $module_folder = $mission_out . DIRECTORY_SEPARATOR . $mission_config->modules->dir;
            foreach($this->mission_modules as $m) {
                  file_put_contents($module_folder . DIRECTORY_SEPARATOR . "Config.hpp", $m->getProvider("Config") . PHP_EOL, FILE_APPEND | LOCK_EX);
                  file_put_contents($module_folder . DIRECTORY_SEPARATOR . "Functions.hpp", $m->getProvider("Functions") . PHP_EOL, FILE_APPEND | LOCK_EX);
                  file_put_contents($module_folder . DIRECTORY_SEPARATOR . "Dialogs.hpp", $m->getProvider("Dialogs") . PHP_EOL, FILE_APPEND | LOCK_EX);
                  file_put_contents($module_folder . DIRECTORY_SEPARATOR . "RscTitles.hpp", $m->getProvider("RscTitles") . PHP_EOL, FILE_APPEND | LOCK_EX);
            }

            //adding modules to settings
            echo "Adding modules to mission Config.hpp" . PHP_EOL;
            $this->autoloadFunction($mission_out . DIRECTORY_SEPARATOR . 'Config' . DIRECTORY_SEPARATOR . "Config.hpp", $this->mission_modules);
      }
      private function autoloadFunction($file, $modules, $regex = '/[ \t]{0,}(modules)[ \t]{0,}[=]{1}[ \t]{0,}[\{]/', $brace = "};") {
            $str = file_get_contents($file);
            $index = -1;
            if(preg_match($regex, $str, $matches, PREG_OFFSET_CAPTURE)) {
                  $index = $matches[0][1];
                  $length = strlen($matches[0][0]);
                  $newIndex = $index + $length;
                  $end = strpos($str, $brace, $newIndex);

                  $before = substr($str, 0, $newIndex);
                  $after = "\t\t" . substr($str, $end);
                  $str = "";
                  foreach($modules as $m) {
                        $str .= PHP_EOL . "\t\t\t" . '"' . $m->namespace . '",';
                  }
                  $str = rtrim($str, ',') . PHP_EOL;
                  file_put_contents($file, $before . $str . $after);
            }
      }
      private function copyFiles($from, $to, $exclude = array()) {
            if(is_file($from)) return copy($from, $to);
            if(!is_dir($from)) return false;
            if(!is_dir($to)) mkdir($to);
            $dir = dir($from);
            while (false !== $entry = $dir->read()) {
                  if ($entry == '.' || $entry == '..') continue;
                  if(count($exclude) == 0 || !in_array(pathinfo($entry, PATHINFO_EXTENSION), $exclude))
                  $this->copyFiles($from . DIRECTORY_SEPARATOR . $entry, $to . DIRECTORY_SEPARATOR . $entry, $exclude);
            }
            $dir->close();
            return true;
      }
      private function scan_files($dir = ".", $include = array()) {
            $array = array();
            $files = scandir($dir);
            foreach($files as $f) {
                  if($f == ".." || $f == ".") continue;
                  $f = $dir . DIRECTORY_SEPARATOR . $f;
                  if(is_dir($f)) $array = array_merge($array, $this->scan_files($f, $include));
                  else {
                        if(count($include) == 0 || in_array(pathinfo($f, PATHINFO_EXTENSION), $include)) {
                              array_push($array, $f);
                        }
                  }
            }
            return $array;
      }
      private function clearFolder($dir) {
            if(file_exists($dir)) {
                  $files = array_diff(scandir($dir), array('.','..'));
                  foreach ($files as $file) {
                        (is_dir("$dir/$file")) ? $this->clearFolder("$dir/$file") : unlink("$dir/$file");
                  }
                  return rmdir($dir);
            }
            return false;
      }
      private function appendXML($file, $modules) {
            $string = '<?xml version="1.0" encoding="utf-8" ?>' . PHP_EOL;
            $string .= '<Project name="AmityFramework">' . PHP_EOL;
            $string .= '<Package name="AmityMission">' . PHP_EOL;
            file_put_contents($file, $string, FILE_APPEND | LOCK_EX);
            $core = file_get_contents($this->mission . DIRECTORY_SEPARATOR . "stringtable.xml");
            file_put_contents($file, $core, FILE_APPEND | LOCK_EX);
            foreach($modules as $m) {
                  file_put_contents($file, $m->getXML(), FILE_APPEND | LOCK_EX);
            }
            $string = '</Package>' . PHP_EOL . '</Project>' . PHP_EOL;
            file_put_contents($file, $string, FILE_APPEND | LOCK_EX);
      }
      private function appendINI($file, $modules) {
            file_put_contents($file, file_get_contents($this->extDB_dir . DIRECTORY_SEPARATOR . "sql_custom" . DIRECTORY_SEPARATOR . $this->extDB_ini), FILE_APPEND | LOCK_EX);
            foreach($modules as $m) {
                  file_put_contents($file, $m->getINI(), FILE_APPEND | LOCK_EX);
            }
      }
}





//program
$amity = new Amity($config_file);
if($build) {
      $amity->compile_mission();
      $amity->compile_server(true);
}
if($start) $amity->start();

?>
