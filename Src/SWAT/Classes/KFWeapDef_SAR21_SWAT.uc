//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_SAR21_SWAT extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "SAR-21 SWAT Elite";
 case "ITEMCATEGORY":
  return class'KFWeapDef_Bullpup'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Choice of full-auto and semi-auto fire modes.\nAlt-fire to toggle between fire modes.\nSWAT Elite marked weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="AddWeapons.KFWeap_AssaultRifle_SAR21_SWAT"

	BuyPrice=1500
	AmmoPricePerMag=45//60
	ImagePath="SWATIcon.sar"

	EffectiveRange=100

	UpgradePrice[0]=1500
	UpgradePrice[1]=2000

	UpgradeSellPrice[0]=1125
	UpgradeSellPrice[1]=1650
}