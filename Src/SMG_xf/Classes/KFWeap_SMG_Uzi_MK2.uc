//=============================================================================
// KFWeap_SMG_UZI_MK2
//=============================================================================
// MK.2 UZI
//=============================================================================
// Killing Floor 2
// by n0wonmai
//=============================================================================

class KFWeap_SMG_Uzi_MK2 extends KFWeap_SMGBase;


defaultproperties
{
    // Inventory
    InventorySize=4
    GroupPriority=90 //60
    WeaponSelectTexture=Texture2D'WEP_1P_UZI_MK2.UZI_UI_TEX'

    // FOV
    MeshFOV=86
    MeshIronSightFOV=50
    PlayerIronSightFOV=75

    // Zooming/Position
    IronSightPosition=(X=-2.0f,Y=0.0f,Z=-0.6)  //x0.9
    PlayerViewOffset=(X=3.f,Y=10.0f,Z=-2.0f)
   // IronSightPosition=(X=10.f,Y=0,Z=0)
    //PlayerViewOffset=(X=17.f,Y=8,Z=-4.0)

	// Content
	PackageKey="WEP_1P_UZI_MK2"
	FirstPersonMeshName="WEP_1P_UZI_MK2.uzi"
	FirstPersonAnimSetNames(0)="wep_1p_mp7_anim.wep_1p_mp7_anim"
	PickupMeshName="WEP_3P_HK_UMP_MESH.Wep_3rdP_HK_UMP_Pickup"
	AttachmentArchetypeName="WEP_HK_UMP_ARCH.Wep_HK_UMP_3P"
	MuzzleFlashTemplateName="WEP_HK_UMP_ARCH.Wep_HK_UMP_MuzzleFlash"
	LaserSightTemplate=KFLaserSightAttachment'FX_LaserSight_ARCH.Default_LaserSight_1P'

    // Ammo
    MagazineCapacity[0]=30
    SpareAmmoCapacity[0]=320 //320
    InitialSpareMags[0]=3
    bCanBeReloaded=true
    bReloadFromMagazine=true

// Recoil
    maxRecoilPitch=110
    minRecoilPitch=95
    maxRecoilYaw=92 //92
    minRecoilYaw=-92  //92
    RecoilRate=0.085
    RecoilMaxYawLimit=500
    RecoilMinYawLimit=65035
    RecoilMaxPitchLimit=900
    RecoilMinPitchLimit=65035
    RecoilISMaxYawLimit=70
    RecoilISMinYawLimit=65460
    RecoilISMaxPitchLimit=375
    RecoilISMinPitchLimit=65460
    RecoilViewRotationScale=0.25
    IronSightMeshFOVCompensationScale=1.2

    // Recoil
   // maxRecoilPitch=60
   // minRecoilPitch=40
   // maxRecoilYaw=50
   // minRecoilYaw=-50
   // RecoilRate=0.06
   // RecoilMaxYawLimit=500
   // RecoilMinYawLimit=65035
   // RecoilMaxPitchLimit=550
   // RecoilMinPitchLimit=65035
    //RecoilISMaxYawLimit=75
    //RecoilISMinYawLimit=65460
    //RecoilISMaxPitchLimit=375
    //RecoilISMinPitchLimit=65460
    //IronSightMeshFOVCompensationScale=1.6
    //WalkingRecoilModifier=1.1
    //JoggingRecoilModifier=1.2

    // DEFAULT_FIREMODE
    FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
    FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
    WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
    WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
    InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_MP7'
    FireInterval(DEFAULT_FIREMODE)=+0.1 // 600 RPM
    Spread(DEFAULT_FIREMODE)=0.01
    InstantHitDamage(DEFAULT_FIREMODE)=49
    FireOffset=(X=30,Y=4.5,Z=-5)

    // ALT_FIREMODE
    FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_MP7'
	FireInterval(ALTFIRE_FIREMODE)=+0.1
	InstantHitDamage(ALTFIRE_FIREMODE)=49 //25
	Spread(ALTFIRE_FIREMODE)=0.0140

    // BASH_FIREMODE
    InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_HK_UMP'
    InstantHitDamage(BASH_FIREMODE)=26.0

    // Fire Effects
	//@todo: add akevents when we have them
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_3P', FirstPersonCue=AkEvent'WEP_1P_UZI_MK2.Play_AR_Sup')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Fire_3P', FirstPersonCue=AkEvent'WEP_1P_UZI_MK2.Play_AR_Sup')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_AR15.Play_WEP_SA_AR15_Handling_DryFire'

	// Advanced (High RPM) Fire Effects
	//bLoopingFireAnim(DEFAULT_FIREMODE)=true
	//bLoopingFireSnd(DEFAULT_FIREMODE)=true
	//WeaponFireLoopEndSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Mac_10.Play_Mac_10_Fire_3P_EndLoop', FirstPersonCue=AkEvent'WW_WEP_Mac_10.Play_Mac_10_Fire_1P_EndLoop')
	//SingleFireSoundIndex=ALTFIRE_FIREMODE

    // Attachments
    bHasIronSights=true
    bHasFlashlight=true
	bHasLaserSight=true

    AssociatedPerkClasses(0)=class'KFPerk_Swat'

    // Weapon Upgrade stat boosts
    //WeaponUpgrades[1]=(IncrementDamage=1.13f,IncrementWeight=1)
    //WeaponUpgrades[2]=(IncrementDamage=1.24f,IncrementWeight=2)

	WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.13f), (Stat=EWUS_Damage1, Scale=1.13f), (Stat=EWUS_Weight, Add=1)))
	WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.24f), (Stat=EWUS_Damage1, Scale=1.24f), (Stat=EWUS_Weight, Add=2)))
}
