//=============================================================================
// KFWeap_SMG_VZ61
//=============================================================================
// Dual Scorpions VZ61
//=============================================================================
// by n0wonmai
//=============================================================================

class KFWeap_SMG_VZ61 extends KFWeap_SMGBase;

defaultproperties
{
    QuickWeaponDownRotation=(Pitch=-8192,Yaw=0,Roll=0)
	
	FireOffset=(X=17,Y=4.0,Z=-2.25)
	//LeftFireOffset=(X=17,Y=-4,Z=-2.25)
	
	
	// Inventory
	InventorySize=4
	GroupPriority=75

	// Recoil
	maxRecoilPitch=125
	minRecoilPitch=97
	maxRecoilYaw=180
	minRecoilYaw=-180
	RecoilRate=0.1
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485
	IronSightMeshFOVCompensationScale=1.4

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_Mac10'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Fire_Mac10'
	FireInterval(DEFAULT_FIREMODE)=+0.096
	Spread(DEFAULT_FIREMODE)=0.030
	InstantHitDamage(DEFAULT_FIREMODE)=42 //22 //25 //30
	//FireOffset=(X=30,Y=4.5,Z=-5)

	// ALT_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Mac10'
	InstantHitDamage(BASH_FIREMODE)=6

	AssociatedPerkClasses.Empty()
	AssociatedPerkClasses(0)=class'KFPerk_SWAT'
	AssociatedPerkClasses(1)=class'KFPerk_Firebug'

	// Recoil
	RecoilBlendOutRatio=0.35

	//Ammunition
	MagazineCapacity[0]=40
	SpareAmmoCapacity[0]=340
	InitialSpareMags[0]=3
	bCanBeReloaded=true
	bReloadFromMagazine=true

	WeaponSelectTexture=Texture2D'WEP_1P_VZ61.VZ61_UI_TEX'

	//Weqapon Upgrades
	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.15f), (Stat=EWUS_Weight, Add=1)))
	//WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.3f), (Stat=EWUS_Weight, Add=2)))

//	FireAnim=HRG_Shoot
//	FireSightedAnims[0]=HRG_Shoot_Iron
//	FireSightedAnims[1]=HRG_Shoot_Iron2
//	FireSightedAnims[2]=HRG_Shoot_Iron3
//	FireLastAnim=HRG_Shoot_Last
//	FireLastSightedAnim=HRG_Shoot_Iron_Last

    PlayerViewOffset=(X=-6,Y=0,Z=-8.2)
	IronSightPosition=(X=-15,Y=0,Z=-4)

	// Content
	PackageKey="WEP_1P_VZ61"
	FirstPersonMeshName="WEP_1P_VZ61.scorpion"
	FirstPersonAnimSetNames(0)="WEP_1P_VZ61.root"
	PickupMeshName="wep_3p_dual_g18c_mesh.Wep_3rdP_Dual_G18C_Pickup"
	AttachmentArchetypeName="WEP_Dual_G18C_ARCH.Wep_Dual_g18c_3P"
	MuzzleFlashTemplateName="WEP_Dual_AF2001_ARCH.Wep_Dual_AF2001_MuzzleFlash"
	
	// Attachments
	bHasIronSights=true
	bHasFlashlight=false
	bHasLaserSight=false

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_3P', FirstPersonCue=AkEvent'WEP_1P_VZ61.Play_Scorpion_WeaponFire')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_3P', FirstPersonCue=AkEvent'WEP_1P_VZ61.Play_Scorpion_WeaponFire')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Handling_DryFire'

	// Revolver shell/cap replacement
	//UnusedBulletMeshTemplate=SkeletalMesh'wep_3p_hrg_sw_500_mesh.Wep_3rdP_HRG_SW_500_Bullet'
	//UsedBulletMeshTemplate=SkeletalMesh'wep_3p_hrg_sw_500_mesh.Wep_3rdP_HRG_SW_500_EmptyShell'
	//BulletFXSocketNames=(RW_Bullet_FX_5, RW_Bullet_FX_4, RW_Bullet_FX_3, RW_Bullet_FX_2, RW_Bullet_FX_1)

}