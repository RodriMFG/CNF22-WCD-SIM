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
    G4double worldSize_z = 40*m;

    G4double tankRadius = 8*m;
    G4double tankHeight = 5*m;
    G4double tankPos_z = -30*m;

    G4double wtyvek = 1*mm;
    G4double wal = 1*cm;

    //MATERIALS///////////////////////////////////////////////////////////
    //class that contains properties of materials
    G4NistManager *nist = G4NistManager::Instance();

    //ELEMENTS
    G4Element *H = new G4Element("H", "H", 1., 1.01*g/mole);
    G4Element *C = new G4Element("C", "C", 6., 12.01*g/mole);

    //Air
    //class to find and define materials
    //we include the predefined material air
    //G4Material *worldMat = nist->FindOrBuildMaterial("G4_AIR");
    G4Material *worldMat = new G4Material("Vacuum", 1., 1.01*g/mole,
        universe_mean_density, kStateGas, 0.1*kelvin, 1.e-19*pascal);

    //Water
    //G4Material *water = nist->FindOrBuildMaterial("G4_WATER");

    G4Material *water = new G4Material("water", 1.000*g/cm3, 2);
    water->AddElement(nist->FindOrBuildElement("H"), 2);
    water->AddElement(nist->FindOrBuildElement("O"), 1);

    //Al
    G4Material *Al = nist->FindOrBuildMaterial("G4_Al");

    //Tyvek
    G4Material *Tyvek = new G4Material("Tyvek", 0.935*g/cm3,2);
    Tyvek->AddElement(C,2);
    Tyvek->AddElement(H,4);

    //Properties
    G4double energy[2] = {1.2398419398*eV/0.9, 1.2398419398*eV/0.2};
    G4double rIndexWorld[2] = {1.0, 1.0};
    G4double rIndexWater[2] = {1.3, 1.3};

    //Air
    G4MaterialPropertiesTable *mptWorld = new G4MaterialPropertiesTable();
    mptWorld->AddProperty("RINDEX", energy, rIndexWorld, 2);
    worldMat->SetMaterialPropertiesTable(mptWorld);

    //Water
    G4MaterialPropertiesTable *mptWater = new G4MaterialPropertiesTable();
    mptWater->AddProperty("RINDEX", energy, rIndexWater, 2);
    water->SetMaterialPropertiesTable(mptWater);

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
        tankRadius + wtyvek, wtyvek, 0., 360.*deg);

    G4LogicalVolume *tBaseLogic = new G4LogicalVolume(tBaseSolid, Tyvek,
        "tBaseLogic");

    G4VPhysicalVolume *tBasePhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - tankHeight - wtyvek/2),
        tBaseLogic, "tBasePhys", logicWorld, false, 0, true);

    //Cylinder walls
    G4Tubs *tCylSolid = new G4Tubs("tCylSolid", tankRadius,
        tankRadius + wtyvek, tankHeight + wtyvek + 1*m, 0., 360.*deg);

    G4LogicalVolume *tCylLogic = new G4LogicalVolume(tCylSolid, Tyvek,
        "tCylLogic");

    G4VPhysicalVolume *tCylPhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - wtyvek/2 + 1*m),
        tCylLogic, "tCylPhys", logicWorld, false, 0, true);

    //Al///////////////////////////////////////////////////////////////
    //Bases of cylinder
    G4Tubs *alBaseSolid = new G4Tubs("alBaseSolid", 0.,
        tankRadius + wtyvek + wal, wal, 0., 360.*deg);

    G4LogicalVolume *alBaseLogic = new G4LogicalVolume(alBaseSolid, Al,
        "alBaseLogic");

    G4VPhysicalVolume *alBasePhys1 = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - tankHeight - wtyvek - wal/2),
        alBaseLogic, "alBasePhys2", logicWorld, false, 0, true);

    //Cylinder walls
    G4Tubs *alCylSolid = new G4Tubs("tCylSolid", tankRadius + wtyvek,
        tankRadius + wtyvek + wal, tankHeight + wtyvek + wal + 1*m,
        0., 360.*deg);

    G4LogicalVolume *alCylLogic = new G4LogicalVolume(alCylSolid, Al,
        "alCylLogic");

    G4VPhysicalVolume *alCylPhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - wtyvek - wal/2 + 1*m),
        alCylLogic, "alCylPhys", logicWorld, false, 0, true);

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
