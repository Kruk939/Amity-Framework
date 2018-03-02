private ["_amount","_bank", "_account","_bankmoney","_bankaccount"];
_amount = parseNumber(ctrlText 1400);
_account = lbData [2100,(lbCurSel 2100)];
_bank = player getVariable "bank";
{
      if ((_x select 0) == _account) then {
            _bankmoney = _x select 1;
            _bankaccount = _x select 0;
      };
} forEach _bank;
if (_amount > _bankmoney) exitWith { hint "Nie masz tyle pieniędzy na koncie"; };
[_amount,_bankaccount] remoteExec ["Client_fnc_removeBank",player];
[_amount] remoteExec ["Client_fnc_addCash",player];
