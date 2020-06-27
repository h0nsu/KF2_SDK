//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_SCAR_SWAT extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "SCAR-H SWAT Elite";
 case "ITEMCATEGORY":
  return class'KFWeapDef_SCAR'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Choice of full-auto and semi-auto fire modes.\nAlt-fire to toggle between fire modes.\nSWAT Elite marked weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="AddWeapons.KFWeap_AssaultRifle_SCAR_SWAT"

	BuyPrice=1500
	AmmoPricePerMag=35//60
	ImagePath="SWATIcon.scar"

	EffectiveRange=100

	UpgradePrice[0]=1500
	UpgradePrice[1]=2000

	UpgradeSellPrice[0]=1125
	UpgradeSellPrice[1]=1650
}