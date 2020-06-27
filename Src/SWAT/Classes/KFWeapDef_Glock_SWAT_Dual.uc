//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_Glock_SWAT_Dual extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "Dual Glock-17 SWAT Elite";
 case "ITEMCATEGORY":
  return class'KFWeapDef_9mmDual'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Fire mode is semi-auto only.\nAlt-fire switches aiming styles when using iron sights.\nSWAT Elite marked weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="AddWeapons.KFWeap_Pistol_Glock_SWAT_Dual"

	BuyPrice=1100
	AmmoPricePerMag=29 //16
	ImagePath="SWATIcon.GLOCK"

	EffectiveRange=55

	UpgradePrice[0]=200
	UpgradePrice[1]=500
	UpgradePrice[2]=600
	UpgradePrice[3]=700
	UpgradePrice[4]=1500

	//Code has this value set to 0 to avoid exploit selling. I'm setting the values to 0 here as well just in case.
	UpgradeSellPrice[0]=0
	UpgradeSellPrice[1]=0
	UpgradeSellPrice[2]=0
	UpgradeSellPrice[3]=0
	UpgradeSellPrice[4]=0
}