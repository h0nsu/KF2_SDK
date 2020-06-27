//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_UMP45_SWAT extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "UMP-45 SWAT Elite";
 case "ITEMCATEGORY":
  return class'KFWeapDef_HK_UMP'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Choice of full-auto and semi-auto fire modes.\nAlt-fire to toggle between fire modes.\nSWAT Elite marked weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="AddWeapons.KFWeap_SMG_UMP45_SWAT"

	BuyPrice=1400 //1500
	AmmoPricePerMag=30
	ImagePath="SWATIcon.ump"

	EffectiveRange=78

	UpgradePrice[0]=900

	UpgradeSellPrice[0]=900
}