//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_KRISSV_SWAT extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "KRISS V SWAT Elite";
 case "ITEMCATEGORY":
  return class'KFWeapDef_Kriss'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Choice of full-auto and semi-auto fire modes.\nAlt-fire to toggle between fire modes.\SWAT Elite marked weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="AddWeapons.KFWeap_SMG_KRISSV_SWAT"

	BuyPrice=1700 //1500
	AmmoPricePerMag=30
	ImagePath="SWATIcon.KSV"

	EffectiveRange=70

	UpgradePrice[0]=750

	UpgradeSellPrice[0]=900
}