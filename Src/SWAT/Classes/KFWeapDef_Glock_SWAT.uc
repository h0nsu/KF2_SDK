//=============================================================================
// KFWeaponDefintion
//=============================================================================

class KFWeapDef_Glock_SWAT extends KFWeaponDefinition
	abstract;
	
	static function string GetItemLocalization(string KeyName)
{
 switch( Caps(KeyName) )
 {
 case "ITEMNAME":
  return "Glock-17 SWAT Elite";
 case "ITEMCATEGORY":
  return class'KFWeapDef_9mm'.Static.GetItemLocalization(KeyName);
 case "ITEMDESCRIPTION":
  return "Fire mode is semi-auto only.\nSWAT Elite marked weapon.";
 }
}

DefaultProperties
{
	WeaponClassPath="AddWeapons.KFWeap_Pistol_Glock_SWAT"

	BuyPrice=650
	AmmoPricePerMag=29 //8
	ImagePath="SWATIcon.GLOCK"

	EffectiveRange=55

	UpgradePrice[0]=200
	UpgradePrice[1]=500
	UpgradePrice[2]=600
	UpgradePrice[3]=700
	UpgradePrice[4]=1500

	//The 9MM cannot be sold
	//UpgradeSellPrice[0]=150
	//UpgradeSellPrice[1]=337
	//UpgradeSellPrice[2]=412
	//UpgradeSellPrice[3]=450
	//UpgradeSellPrice[4]=750
}