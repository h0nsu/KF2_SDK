//=============================================================================
// KFWeap_Pistol_Glock_SWAT
//=============================================================================
// Glock SWAT
//=============================================================================
// Killing Floor 2
// by n0wonmai
//=============================================================================

class KFWeap_Pistol_Glock_SWAT extends KFWeap_PistolBase;

defaultproperties
{
// FOV
	MeshFOV=75
	MeshIronSightFOV=60
    PlayerIronSightFOV=77

	// Depth of field
	DOF_FG_FocalRadius=40
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	PlayerViewOffset=(X=22.0,Y=12,Z=-6)
	IronSightPosition=(X=15,Y=0,Z=0)

	// Content
	PackageKey="WEP_1P_Glock_SWAT"
	FirstPersonMeshName="WEP_1P_Glock_SWAT.Glock"
	FirstPersonAnimSetNames(0)="WEP_1P_M1911_ANIM.Wep_1stP_M1911_Anim"
	PickupMeshName="WEP_3P_M1911_MESH.Wep_M1911_Pickup"
	AttachmentArchetypeName="WEP_M1911_ARCH.Wep_M1911_3P"
	MuzzleFlashTemplateName="WEP_M1911_ARCH.Wep_M1911_MuzzleFlash"

	// Ammo
	MagazineCapacity[0]=8
	SpareAmmoCapacity[0]=136
	InitialSpareMags[0]=7
	AmmoPickupScale[0]=2.0
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=450
	minRecoilPitch=400
	maxRecoilYaw=150
	minRecoilYaw=-150
	RecoilRate=0.07
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485
	IronSightMeshFOVCompensationScale=1.35

	
	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_G18'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_G18'
	FireInterval(DEFAULT_FIREMODE)=+0.175 // 343 RPM
	InstantHitDamage(DEFAULT_FIREMODE)=28
	Spread(DEFAULT_FIREMODE)=0.015

	// ALT_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None


	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Colt1911'
	InstantHitDamage(BASH_FIREMODE)=22

	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WEP_1P_Glock_SWAT.Play_Glock17_WeaponFire1', FirstPersonCue=AkEvent'WEP_1P_Glock_SWAT.Play_Glock17_WeaponFire1')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_1911.Play_WEP_SA_1911_Handling_DryFire'
	
	// Attachments
	bHasIronSights=true
	bHasFlashlight=true
	bHasLaserSight=true

	// Inventory
	InventorySize=2
	GroupPriority=20
	bCanThrow=true
	bDropOnDeath=true
	WeaponSelectTexture=Texture2D'SWATIcon.GLOCK'
	bIsBackupWeapon=false
	AssociatedPerkClasses(0)=class'KFPerk_Gunslinger'
	AssociatedPerkClasses(1)=class'KFPerk_Swat'

	DualClass=class'KFWeap_Pistol_Glock_SWAT_Dual'

	// Custom animations
	FireSightedAnims=(Shoot_Iron, Shoot_Iron2, Shoot_Iron3)
	IdleFidgetAnims=(Guncheck_v1, Guncheck_v2, Guncheck_v3, Guncheck_v4, Guncheck_v5,Guncheck_v6)

	bHasFireLastAnims=true

	BonesToLockOnEmpty=(RW_Bolt, RW_Bullets1)

	// Weapon Upgrade stat boosts
	//WeaponUpgrades[1]=(IncrementDamage=1.4f,IncrementWeight=0)
	//WeaponUpgrades[2]=(IncrementDamage=1.8f,IncrementWeight=1)
	//WeaponUpgrades[3]=(IncrementDamage=2.0f,IncrementWeight=2)

	WeaponUpgrades[1]=(Stats=((Stat=EWUS_Damage0, Scale=1.4f)))
	WeaponUpgrades[2]=(Stats=((Stat=EWUS_Damage0, Scale=1.8f), (Stat=EWUS_Weight, Add=1)))
	WeaponUpgrades[3]=(Stats=((Stat=EWUS_Damage0, Scale=2.0f), (Stat=EWUS_Weight, Add=2)))
}