//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_PP2000 extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "PP-2000";
 case "ITEMCATEGORY":
  return class'KFWeapDef_9mm'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Fire mode is full-auto only.\nThe PP-2000 is a conventional blowback-operated weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="SMG_xf.KFWeap_SMG_PP2000"

	BuyPrice=1500
	AmmoPricePerMag=40 //8
	ImagePath="WEP_1P_PP2000.PP2000_UI_TEX"

	EffectiveRange=65

	//UpgradePrice[0]=1500


	//The 9MM cannot be sold
	//UpgradeSellPrice[0]=150
	//UpgradeSellPrice[1]=337
	//UpgradeSellPrice[2]=412
	//UpgradeSellPrice[3]=450
	//UpgradeSellPrice[4]=750
}