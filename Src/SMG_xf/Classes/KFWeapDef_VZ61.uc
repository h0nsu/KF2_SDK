//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_VZ61 extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "Scorpion VZ 61";
 case "ITEMCATEGORY":
  return class'KFWeapDef_9mm'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Fire mode is full-auto only.\nAn Ultra compact guns and an excellent choice as a backup weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="SMG_xf.KFWeap_SMG_VZ61"

	BuyPrice=1100
	AmmoPricePerMag=22 //8
	ImagePath="WEP_1P_VZ61.VZ61_UI_TEX"

	EffectiveRange=60

	//UpgradePrice[0]=1500


	//The 9MM cannot be sold
	//UpgradeSellPrice[0]=150
	//UpgradeSellPrice[1]=337
	//UpgradeSellPrice[2]=412
	//UpgradeSellPrice[3]=450
	//UpgradeSellPrice[4]=750
}