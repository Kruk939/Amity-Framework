////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by John Raven, v1.063, #Bebuci)
////////////////////////////////////////////////////////

class title_text: RscText
{
	idc = 1000;
	text = "Sell house"; //--- ToDo: Localize;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class block_1: RscText
{
	idc = 1001;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 0.25 * GUI_GRID_H;
	colorBackground[] = {0.043,0.486,0.769,1};
};
class title_owner: RscText
{
	idc = 1002;
	text = "Owner:"; //--- ToDo: Localize;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class title_price: RscText
{
	idc = 1003;
	text = "Price:"; //--- ToDo: Localize;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class title_info: RscText
{
	idc = 1004;
	text = "Information"; //--- ToDo: Localize;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class text_info: RscText
{
	idc = 1005;
	text = "Information"; //--- ToDo: Localize;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 9.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.4};
};
class text_owner: RscText
{
	idc = 1006;
	text = "John Raven"; //--- ToDo: Localize;
	x = 18.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.4};
};
class edit_price: RscEdit
{
	idc = 1400;
	x = 18.5 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.4};
};
class button_sell: RscButton
{
	idc = 1600;
	text = "Sell"; //--- ToDo: Localize;
	x = 12.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class button_cancel: RscButton
{
	idc = 1601;
	text = "Cancel"; //--- ToDo: Localize;
	x = 18.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
class button_exit: RscButton
{
	idc = 1602;
	text = "Exit"; //--- ToDo: Localize;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.6};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
