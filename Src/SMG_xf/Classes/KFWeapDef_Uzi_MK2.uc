//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_Uzi_MK2 extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "UZI MK.2 LaserDot";
 case "ITEMCATEGORY":
  return class'KFWeapDef_9mm'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Choice of full-auto and semi-auto fire modes.\nAlt-fire to toggle between fire modes.\nOne of the most powerful SMG's ever.";
 }
}

DefaultProperties
{
	WeaponClassPath="SMG_xf.KFWeap_SMG_Uzi_MK2"

	BuyPrice=1900
	AmmoPricePerMag=59 //8
	ImagePath="WEP_1P_UZI_MK2.UZI_UI_TEX"

	EffectiveRange=60

	//UpgradePrice[0]=1500


	//The 9MM cannot be sold
	//UpgradeSellPrice[0]=150
	//UpgradeSellPrice[1]=337
	//UpgradeSellPrice[2]=412
	//UpgradeSellPrice[3]=450
	//UpgradeSellPrice[4]=750
}