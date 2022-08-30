//Functions to construct the detector

//include appropiate header file
#include "construction.hh"

//construct while in scope
MyDetectorConstruction::MyDetectorConstruction()
{}

//deconstruct once function goes out of scope
MyDetectorConstruction::~MyDetectorConstruction()
{}

//function to define detector geometry and materials
G4VPhysicalVolume *MyDetectorConstruction::Construct()
{
    G4double worldSize_x = 20*m;
    G4double worldSize_y = 20*m;
    G4double worldSize_z = 20*m;

    G4double tankRadius = 3*m;
    G4double tankHeight = 3*m;
    G4double tankPos_z = -10*m;

    G4double wtyvek = 1*mm;
    G4double wal = 1*cm;

    //MATERIALS///////////////////////////////////////////////////////////
    //class that contains properties of materials
    G4NistManager *nist = G4NistManager::Instance();

    //ELEMENTS
    G4Element *H = new G4Element("H", "H", 1., 1.01*g/mole);
    G4Element *C = new G4Element("C", "C", 6., 12.01*g/mole);
    G4Element *O = new G4Element("O", "O", 8., 16.00*g/mole);
    G4Element *A = new G4Element("Al", "Al", 13., 26.89*g/mole);

    //Air
    //class to find and define materials
    //we include the predefined material air
    //G4Material *worldMat = nist->FindOrBuildMaterial("G4_AIR");
    G4Material *worldMat = new G4Material("Vacuum", 1., 1.01*g/mole,
        universe_mean_density, kStateGas, 0.1*kelvin, 1.e-19*pascal);

    //Water
    //G4Material *water = nist->FindOrBuildMaterial("G4_WATER");
    G4Material *water = new G4Material("water", 1.000*g/cm3, 2);
    water->AddElement(H, 2);
    water->AddElement(O, 1);

    //Al
    G4Material *Al = new G4Material("Al", 2.70*g/cm3, 1);
    Al->AddElement(A, 1);

    //Tyvek
    G4Material *Tyvek = new G4Material("Tyvek", 0.935*g/cm3, 2);
    Tyvek->AddElement(C,2);
    Tyvek->AddElement(H,4);

    //Polypropylene
    G4Material *Pp = new G4Material("Pp", 0.850*g/cm3, 2);
    Pp->AddElement(C, 1);
    Pp->AddElement(H, 3);


    //Properties
    //From PhysicsMaters
    //G4double energy[2] = {1.2398419398*eV/0.9, 1.2398419398*eV/0.2};
    G4double energy[2] = {1.9074491*eV, 4.9593677*eV};
    G4double rIndexWorld[2] = {1.0, 1.0};
    G4double rIndexWater[2] = {1.3, 1.3};
    G4double rIndexPp[2] = {1.4, 1.4};

    //Air
    G4MaterialPropertiesTable *mptWorld = new G4MaterialPropertiesTable();
    mptWorld->AddProperty("RINDEX", energy, rIndexWorld, 2);
    worldMat->SetMaterialPropertiesTable(mptWorld);

    //Water
    G4MaterialPropertiesTable *mptWater = new G4MaterialPropertiesTable();
    mptWater->AddProperty("RINDEX", energy, rIndexWater, 2);
    water->SetMaterialPropertiesTable(mptWater);

    //Tyvek
    G4double tyvekReflectivity[2] = {0.92, 0.63};
    //G4double tyvekEfficiency[2] = {0., 0.};
    G4MaterialPropertiesTable *mptTyvek = new G4MaterialPropertiesTable();
    mptTyvek->AddProperty("REFLECTIVITY", energy, tyvekReflectivity, 2);
    //mptTyvek->AddProperty("EFFICIENCY", energy, tyvekEfficiency, 2);
    //Tyvek's optical surface
    G4OpticalSurface *tyvekSurface = new G4OpticalSurface("tyvekSurface",
        unified, polishedtyvekair, dielectric_metal);
    tyvekSurface->SetMaterialPropertiesTable(mptTyvek);

    //Polypropylene
    G4double ppReflectivity[2] = {0.10, 0.05};
    G4MaterialPropertiesTable *mptPp = new G4MaterialPropertiesTable();
    mptPp->AddProperty("RINDEX", energy, rIndexPp, 2);
    mptPp->AddProperty("REFLECTIVITY", energy, ppReflectivity, 2);
    G4OpticalSurface *ppSurface = new G4OpticalSurface("ppSurface",
        unified, polished, dielectric_dielectric);
    ppSurface->SetMaterialPropertiesTable(mptPp);
    Pp->SetMaterialPropertiesTable(mptPp);

    //VOLUMES//////////////////////////////////////////////////////////////
    //WORLD////////////////////////////////////////////////////////////////
    //this class defines a box of name, x half-size, y, z
    G4Box *solidWorld = new G4Box("solidWorld",
        worldSize_x, worldSize_y, worldSize_z);

    //class defines the logical volume of
    //volume it is based on, material, name
    G4LogicalVolume *logicWorld = new G4LogicalVolume(solidWorld, worldMat,
         "logicWorld");

    //class to define the physical volume
    //the function places the volume, it takes
    //rotation, where the volume is centered around,
    //logical volume it is defined on,
    //name, mother volume (if volume is placed inside another one),
    //boolean operations, copy number, check for overlaps
    G4VPhysicalVolume *physWorld = new G4PVPlacement(0,
        G4ThreeVector(0., 0., 0.), logicWorld, "physWorld",
        0, false, 0, true);

    //TANK//////////////////////////////////////////////////////////////
    //construccion del tanque
    G4Tubs *waterSolid = new G4Tubs("waterSolid", 0.,
        tankRadius, tankHeight, 0., 360.*deg);

    G4LogicalVolume *waterLogic = new G4LogicalVolume(waterSolid, water,
        "waterLogic");

    G4VPhysicalVolume *waterPhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z),
        waterLogic, "waterPhys", logicWorld, false, 0, true);

    //TYVEK///////////////////////////////////////////////////////////
    //Base of cylinder
    G4Tubs *tBaseSolid = new G4Tubs("tBaseSolid", 0.,
        tankRadius, wtyvek, 0., 360.*deg);

    G4LogicalVolume *tBaseLogic = new G4LogicalVolume(tBaseSolid, Tyvek,
        "tBaseLogic");
    new G4LogicalSkinSurface("tBase_surface", tBaseLogic, tyvekSurface);

    G4VPhysicalVolume *tBasePhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - tankHeight - wtyvek),
        tBaseLogic, "tBasePhys", logicWorld, false, 0, true);

    //Cylinder walls
    G4Tubs *tCylSolid = new G4Tubs("tCylSolid", tankRadius,
        tankRadius + wtyvek, tankHeight + wtyvek + 0.5*m, 0., 360.*deg);

    G4LogicalVolume *tCylLogic = new G4LogicalVolume(tCylSolid, Tyvek,
        "tCylLogic");
    new G4LogicalSkinSurface("tCyl_surface", tCylLogic, tyvekSurface);

    G4VPhysicalVolume *tCylPhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - wtyvek + 0.5*m),
        tCylLogic, "tCylPhys", logicWorld, false, 0, true);

    //Al///////////////////////////////////////////////////////////////
    //Bases of cylinder
    G4Tubs *alBaseSolid = new G4Tubs("alBaseSolid", 0.,
        tankRadius + wtyvek, wal, 0., 360.*deg);

    G4LogicalVolume *alBaseLogic = new G4LogicalVolume(alBaseSolid, Al,
        "alBaseLogic");

    G4VPhysicalVolume *alBasePhys1 = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - tankHeight - wtyvek - wal),
        alBaseLogic, "alBasePhys2", logicWorld, false, 0, true);

    //Cylinder walls
    G4Tubs *alCylSolid = new G4Tubs("tCylSolid", tankRadius + wtyvek,
        tankRadius + wtyvek + wal, tankHeight + wtyvek + wal + 1*m,
        0., 360.*deg);

    G4LogicalVolume *alCylLogic = new G4LogicalVolume(alCylSolid, Al,
        "alCylLogic");

    G4VPhysicalVolume *alCylPhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - wtyvek - wal + 0.5*m),
        alCylLogic, "alCylPhys", logicWorld, false, 0, true);

    //Polypropylene
    G4Tubs *ppSolid = new G4Tubs("ppSolid", 0.,
        tankRadius, 0.012*mm, 0., 360.*deg);

    G4LogicalVolume *ppLogic = new G4LogicalVolume(ppSolid, Pp,
        "ppLogic");
    new G4LogicalSkinSurface("pp_surface", ppLogic, ppSurface);

    G4VPhysicalVolume *ppPhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., -tankHeight + 1*m),
        ppLogic, "ppPhys", waterLogic, false, 0, true);

    //PMTs/////////////////////////////////////////////////////////////
    //Detector de prueba
    G4Box *solidDetector = new G4Box("solidDetector",
        0.5*m, 0.5*m, 0.5*m);

    //the sensitive volume we later define has to be able
    //to refer to logical volume outside this function,
    //so we add the function in the header file
    logicDetector = new G4LogicalVolume(solidDetector, worldMat,
        "logicDetector");

    G4VPhysicalVolume *physDetector = new G4PVPlacement(0,
        G4ThreeVector(2*m, 2*m, 2*m),
        logicDetector, "physDetector", logicWorld, false, 0, true);

    //VIS/////////////////////////////////////////////////////////////
    //Visualizacion del agua
    G4VisAttributes *water_va= new G4VisAttributes(G4Colour::Blue());
    water_va->SetForceAuxEdgeVisible (true);
    water_va->SetForceWireframe(true);
    water_va->SetForceSolid(false);
    water_va->SetVisibility(true);
    waterLogic->SetVisAttributes(water_va);

    //Tyvek
    G4VisAttributes *tyvek_va= new G4VisAttributes(G4Colour::Red());
    tyvek_va->SetForceAuxEdgeVisible (true);
    tyvek_va->SetForceWireframe(true);
    tyvek_va->SetForceSolid(false);
    tyvek_va->SetVisibility(true);
    //tBaseLogic->SetVisAttributes(tyvek_va);
    //tCylLogic->SetVisAttributes(tyvek_va);

    //Al
    G4VisAttributes *al_va= new G4VisAttributes(G4Colour::Yellow());
    al_va->SetForceAuxEdgeVisible (true);
    al_va->SetForceWireframe(true);
    al_va->SetForceSolid(false);
    al_va->SetVisibility(true);
    alBaseLogic->SetVisAttributes(al_va);
    alCylLogic->SetVisAttributes(al_va);

    //PP
    G4VisAttributes *pp_va= new G4VisAttributes(G4Colour::Grey());
    pp_va->SetForceAuxEdgeVisible (true);
    pp_va->SetForceWireframe(true);
    pp_va->SetForceSolid(false);
    pp_va->SetVisibility(true);
    ppLogic->SetVisAttributes(pp_va);

    //program should return the physical volume
    return physWorld;
}

//DETECTOR////////////////////////////////////////////////
void MyDetectorConstruction::ConstructSDandField()
{
    MySensitiveDetector *sensDet = new
        MySensitiveDetector("SensitiveDetector");

    logicDetector->SetSensitiveDetector(sensDet);
}
