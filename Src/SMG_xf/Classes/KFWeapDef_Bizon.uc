//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_Bizon extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "PP-19 Bizon";
 case "ITEMCATEGORY":
  return class'KFWeapDef_9mm'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Alt Fire to use healing darts.\nThe Bizon is a lightweight selective fire weapon that fires from a closed bolt, a feature that enhances the gun's accuracy.";
 }
}

DefaultProperties
{
	WeaponClassPath="SMG_xf.KFWeap_SMG_Bizon"

	BuyPrice=1800
	AmmoPricePerMag=22 //8
	ImagePath="WEP_1P_BIZON.BIZON_UI_TEX"

	EffectiveRange=70

	//UpgradePrice[0]=1500


	//The 9MM cannot be sold
	//UpgradeSellPrice[0]=150
	//UpgradeSellPrice[1]=337
	//UpgradeSellPrice[2]=412
	//UpgradeSellPrice[3]=450
	//UpgradeSellPrice[4]=750
}