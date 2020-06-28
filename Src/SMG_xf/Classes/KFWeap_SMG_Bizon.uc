//=============================================================================
// KFWeap_SMG_Bizon
//=============================================================================
// Bizon SMG
//=============================================================================
// by n0wonmai
//=============================================================================

class KFWeap_SMG_Bizon extends KFWeap_MedicBase;

defaultproperties
{
    QuickWeaponDownRotation=(Pitch=-8192,Yaw=0,Roll=0)
	
	
	FireOffset=(X=17,Y=4.0,Z=-2.25)
	//LeftFireOffset=(X=17,Y=-4,Z=-2.25)
	
	// Inventory
	InventorySize=5
	GroupPriority=75

	// Recoil
	maxRecoilPitch=88
	minRecoilPitch=55
	maxRecoilYaw=50
	minRecoilYaw=-50
	RecoilRate=0.06
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=550 //900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=75
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	IronSightMeshFOVCompensationScale=1.6
	WalkingRecoilModifier=1.1
	JoggingRecoilModifier=1.2

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_MP7'
	FireInterval(DEFAULT_FIREMODE)=+0.099
	Spread(DEFAULT_FIREMODE)=0.030
	InstantHitDamage(DEFAULT_FIREMODE)=25 //22 //25 //30
	//FireOffset=(X=30,Y=4.5,Z=-5)

	// ALT_FIREMODE
	AmmoCost(ALTFIRE_FIREMODE)=40
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_HealingDart_MedicBase'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Dart_Toxic'

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Mac10'
	InstantHitDamage(BASH_FIREMODE)=5

	AssociatedPerkClasses.Empty()
	AssociatedPerkClasses(0)=class'KFPerk_SWAT'
	AssociatedPerkClasses(1)=class'KFPerk_FieldMedic'
	

	// Recoil
	RecoilBlendOutRatio=0.35

	//Ammunition
	MagazineCapacity[0]=53
	SpareAmmoCapacity[0]=730
	InitialSpareMags[0]=3
	bCanBeReloaded=true
	bReloadFromMagazine=true

	WeaponSelectTexture=Texture2D'WEP_1P_BIZON.BIZON_UI_TEX'

	//Weqapon Upgrades
	//WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.15f), (Stat=EWUS_Weight, Add=1)))
	//WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.3f), (Stat=EWUS_Weight, Add=2)))

//	FireAnim=HRG_Shoot
//	FireSightedAnims[0]=HRG_Shoot_Iron
//	FireSightedAnims[1]=HRG_Shoot_Iron2
//	FireSightedAnims[2]=HRG_Shoot_Iron3
//	FireLastAnim=HRG_Shoot_Last
//	FireLastSightedAnim=HRG_Shoot_Iron_Last

    PlayerViewOffset=(X=-8,Y=0,Z=-7.8)
	IronSightPosition=(X=-25,Y=-14.1,Z=-4)

	// Content
	PackageKey="WEP_1P_BIZON"
	FirstPersonMeshName="WEP_1P_BIZON.bizon"
	FirstPersonAnimSetNames(0)="WEP_1P_BIZON.root"
	PickupMeshName="wep_3p_dual_g18c_mesh.Wep_3rdP_Dual_G18C_Pickup"
	AttachmentArchetypeName="WEP_Dual_G18C_ARCH.Wep_Dual_g18c_3P"
	MuzzleFlashTemplateName="WEP_Dual_AF2001_ARCH.Wep_Dual_AF2001_MuzzleFlash"
	
	HealingDartDamageType=class'KFDT_Dart_Healing'
	DartFireSnd=(DefaultCue=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_Fire_1P')
	LockAcquiredSoundFirstPerson=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Alert_Locked_1P'
	LockLostSoundFirstPerson=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Alert_Lost_1P'
	LockTargetingSoundFirstPerson=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Alert_Locking_1P'
    HealImpactSoundPlayEvent=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_Heal'
    HurtImpactSoundPlayEvent=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_Hurt'
	//OpticsUIClass=class'KFGFxWorld_MedicOptics'
	HealingDartWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Default_Recoil'
	
	HealAmount=20
	HealFullRechargeSeconds=15 //15
	SecondaryAmmoTexture=Texture2D'UI_SecondaryAmmo_TEX.MedicDarts'
	
	// Attachments
	bHasIronSights=true
	bHasFlashlight=false
	bHasLaserSight=false

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_3P', FirstPersonCue=AkEvent'WEP_1P_BIZON.Play_Bizon_WeaponFire1')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_3P', FirstPersonCue=AkEvent'WEP_1P_BIZON.Play_Bizon_WeaponFire1')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_MedicSMG.Play_SA_MedicSMG_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_DryFire'

	// Revolver shell/cap replacement
	//UnusedBulletMeshTemplate=SkeletalMesh'wep_3p_hrg_sw_500_mesh.Wep_3rdP_HRG_SW_500_Bullet'
	//UsedBulletMeshTemplate=SkeletalMesh'wep_3p_hrg_sw_500_mesh.Wep_3rdP_HRG_SW_500_EmptyShell'
	//BulletFXSocketNames=(RW_Bullet_FX_5, RW_Bullet_FX_4, RW_Bullet_FX_3, RW_Bullet_FX_2, RW_Bullet_FX_1)

}
