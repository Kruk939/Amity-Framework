////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by John Raven, v1.063, #Duseqy)
////////////////////////////////////////////////////////

class title_main: RscText
{
	idc = 1000;
	text = "Manage Building"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class title_modules: RscText
{
	idc = 1001;
	text = "Modules"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class title_furnitures: RscText
{
	idc = 1002;
	text = "Furnitures"; //--- ToDo: Localize;
	x = 13 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 27 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class block_1: RscText
{
	idc = 1003;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 0.25 * GUI_GRID_H;
	colorBackground[] = {0.043,0.486,0.769,1};
};
class list_modules: RscListbox
{
	idc = 1500;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12.5 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
	colorText[] = {0,0,0,0.4};
};
class title_modules_info: RscText
{
	idc = 1004;
	text = "Information"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class text_module_info: RscText
{
	idc = 1005;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12.5 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.4};
};
class title_module_access: RscText
{
	idc = 1006;
	text = "Access:"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class edit_module_access: RscEdit
{
	idc = 1400;
	x = 6 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.4};
};
class button_module_action: RscButton
{
	idc = 1600;
	text = "Buy/Spawn"; //--- ToDo: Localize;
	x = 6 * GUI_GRID_W + GUI_GRID_X;
	y = 19 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class listbox_furnitures_not_spawned: RscListbox
{
	idc = 1501;
	x = 13 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
	colorText[] = {0,0,0,0.4};
};
class title_furniture_not_spawned: RscText
{
	idc = 1007;
	text = "Not Spawned"; //--- ToDo: Localize;
	x = 13 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class title_furniture_spawned: RscText
{
	idc = 1008;
	text = "Spawned"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class listbox_furnitures_spawned: RscListbox
{
	idc = 1502;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
	colorText[] = {0,0,0,0.4};
};
class button_furinture_spawn: RscButton
{
	idc = 1601;
	text = "Spawn"; //--- ToDo: Localize;
	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class button_furinture_despawn: RscButton
{
	idc = 1602;
	text = "Despawn"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class title_furnitures_actions: RscText
{
	idc = 1009;
	text = "Actions"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class button_spawn_cargo: RscButton
{
	idc = 1603;
	text = "Spawn all cargo"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class block_2: RscText
{
	idc = 1010;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 0.25 * GUI_GRID_H;
	colorBackground[] = {0.043,0.486,0.769,1};
};
class button_despawn_all: RscButton
{
	idc = 1604;
	text = "Despawn all furnitures"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class button_set_sell: RscButton
{
	idc = 1605;
	text = "Set house for Sell"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class button_exit: RscButton
{
	idc = 1606;
	text = "Exit"; //--- ToDo: Localize;
	x = 34 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscText_1011: RscText
{
	idc = 1011;
	x = 13 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 27 * GUI_GRID_W;
	h = 0.25 * GUI_GRID_H;
	colorBackground[] = {0.043,0.486,0.769,1};
};
class button_delete_furniture: RscButton
{
	idc = 1607;
	text = "Delete"; //--- ToDo: Localize;
	x = 13 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
