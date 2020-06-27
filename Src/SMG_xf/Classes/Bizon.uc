

class Bizon extends KFMutator
	config(Bizon)
	dependson(KFGFxObject_TraderItems);

var private const class<KFWeapon> MyWepClass;
var private const class<KFWeaponDefinition> MyWepDefClass;



simulated event PostBeginPlay()
{
	Super.PostBeginPlay();


	if( ! AddMyWeapon() )
		SetTimer( 1.0f, true, 'addMyWeaponTimer');

}

simulated function addMyWeaponTimer()
{
	if( AddMyWeapon() )
		ClearTimer( 'addMyWeaponTimer');
}


private simulated final function bool AddMyWeapon()
{
	local WorldInfo WI;
	local KFGameReplicationInfo KFGRI;
	local KFGFxObject_TraderItems TI;
	local STraderItem MyWep;

	

	WI = class'WorldInfo'.Static.GetWorldInfo();


	if (WI != none)
		KFGRI = KFGameReplicationInfo(WI.GRI);
	else
	{
		
		return false;
	}

	if (KFGRI != none)
		TI = KFGRI.TraderItems;
	else
	{
		
		return false;
	}

	if (TI == none)
	{
		
		return false;
	}

	if( TI.SaleItems.Length < 1 )
	{
		
		return false;
	}


	if( TI.SaleItems.Find( 'ClassName', MyWepClass.Name) >= 0 )
			return true;


	MyWep = BuildMyWeapon(); 
	MyWep.ItemID=TI.SaleItems.Length;

	TI.SaleItems.AddItem(MyWep); 



	

	return true;
}


private simulated final function STraderItem BuildMyWeapon()
{
	local STraderItem Wep;


	Wep.WeaponDef = MyWepDefClass;
	Wep.ClassName = MyWepClass.Name;


	if( class<KFWeap_DualBase>(MyWepClass) != none && class<KFWeap_DualBase>(MyWepClass).Default.SingleClass != none )
		Wep.SingleClassName=class<KFWeap_DualBase>(MyWepClass).Default.SingleClass.Name;


	if( MyWepClass.Default.DualClass != none )
		Wep.DualClassName = MyWepClass.Default.DualClass.Name;


	Wep.AssociatedPerkClasses = MyWepClass.Static.GetAssociatedPerkClasses();

	Wep.MagazineCapacity = MyWepClass.Default.MagazineCapacity[0];
	Wep.InitialSpareMags = MyWepClass.Default.InitialSpareMags[0];
	Wep.MaxSpareAmmo = MyWepClass.Default.SpareAmmoCapacity[0];

	Wep.InitialSecondaryAmmo = MyWepClass.Default.InitialSpareMags[1] * MyWepClass.Default.MagazineCapacity[1];
	Wep.MaxSecondaryAmmo = MyWepClass.Default.SpareAmmoCapacity[1]; 

	Wep.BlocksRequired = MyWepClass.Default.InventorySize;


	Wep.InventoryGroup = MyWepClass.Default.InventoryGroup;
	Wep.GroupPriority = MyWepClass.Default.GroupPriority;

	Wep.TraderFilter = MyWepClass.Static.GetTraderFilter();
	Wep.AltTraderFilter = MyWepClass.Static.GetAltTraderFilter();


	if( MyWepClass.Default.SecondaryAmmoTexture != None )
		Wep.SecondaryAmmoImagePath = "img://"$PathName(MyWepClass.Default.SecondaryAmmoTexture);
	Wep.InventoryGroup = MyWepClass.Default.InventoryGroup;
	Wep.GroupPriority = MyWepClass.Default.GroupPriority;


	MyWepClass.Static.SetTraderWeaponStats( Wep.WeaponStats);



	return Wep;
}


// prevent the mutator being added more then once
function AddMutator(Mutator M)
{
	if( M!=Self )
	{
		if( M.Class==Class )
			M.Destroy();
		else Super.AddMutator(M);
	}
}


defaultproperties
{
	MyWepClass=Class'KFWeap_SMG_Bizon'
	MyWepDefClass=Class'KFWeapDef_Bizon'

	Name="Default__Bizon"
	ObjectArchetype=KFMutator'KFGame.Default__KFMutator'


	bAlwaysRelevant=true
	RemoteRole=ROLE_SimulatedProxy

}