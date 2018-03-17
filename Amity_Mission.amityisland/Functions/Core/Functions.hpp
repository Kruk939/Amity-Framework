class EventHandler {
      file="Functions\Core\EventHandler";
      class eventAdd {};
      class eventCall {};
      class eventRegister {};
      class keyHandler {};
      class keyHandlerAdd {};
      class keyHandlerRemove {};
};
class Factions {
      file="Functions\Core\Factions";
      class startWorking {};
      class stopWorking {};
      class faction_create_action {};
      class faction_create_open {};
};
class Garage {
      file="Functions\Core\Garage";
      class garage_action {};
      class garage_open {};
      class garage_receive {};
      class handleVehicle {};
};
class Init {
      file="Functions\Core\Init";
      class initEventhandlers {};
      class initModules {};
      class initListeners {};
      class initProfile {};
      class loop {};
      class miscVariables {};
};
class Misc {
      file="Functions\Core\Misc";
      class addAction {};
      class doMsg {};
      class getVariable {};
      class getVariableGet {};
      class getVariableSend {};
      class getPlayerByID {};
      class getPlayerByProfile {};
      class getPlayerByUID {};
      class progressBar {};
      class save {};
      class setVariable {};
      class spawn {};
      class generateString {};
      class getItems {};
      class loadItems {};
      class removeItems {};
      class surrenderAction {};
};
class Money {
      file="Functions\Core\Money";
      class addCash {};
      class checkMoney {};
      class removeCash {};
      class removeBank {};
      class addBank {};
      class atmWithdraw {};
};
class Profile {
      file="Functions\Core\Profile";
      class chooseProfile_action {};
      class chooseProfile {};
      class createProfile_action {};
      class createProfile_receive {};
      class createProfile {};
};
class UsableItem {
      file="Functions\Core\UsableItem";
};
class Vehicle {
      file="Functions\Core\Vehicle";
      class vehicleHitGet {};
      class vehicleHitLoad {};
      class lock {};
      class attachCheck {};
      class attachVehicle {};
      class detachVehicle {};
};
