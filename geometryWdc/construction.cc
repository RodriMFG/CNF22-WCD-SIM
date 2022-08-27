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
    G4double worldSize_x = 50*m;
    G4double worldSize_y = 50*m;
    G4double worldSize_z = 50*m;

    G4double tankRadius = 10*m;
    G4double tankHeight = 5*m;
    G4double tankPos_z = -25*m;

    G4double wtyvek = 0.5*mm;
    G4double wal = 1*cm;

    G4double a;  // atomic mass
    G4double z;  // atomic number
    G4double density;

    //MATERIALS///////////////////////////////////////////////////////////
    //class that contains properties of materials
    G4NistManager *nist = G4NistManager::Instance();

    //ELEMENTS
    G4Element *H = new G4Element("H", "H", z=1., a=1.01*g/mole);
    G4Element *C = new G4Element("C", "C", z=6., a=12.01*g/mole);

    //class to find and define materials
    //we include the predefined material air
    G4Material *worldMat = nist->FindOrBuildMaterial("G4_AIR");

    G4Material *water = nist->FindOrBuildMaterial("G4_WATER");

    G4Material *Al = nist->FindOrBuildMaterial("G4_Al");

    G4Material *Tyvek = new G4Material("Tyvek",density=0.935*g/cm3,2);
    Tyvek->AddElement(C,2);
    Tyvek->AddElement(H,4);

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
    /*
    G4CutTubs *waterSolid = new G4CutTubs("waterSolid", 5*m,
        tankRadius, tankHeight, 0., 360.*deg, G4ThreeVector(0,0,0),
        G4ThreeVector(0,0,0));
    */
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
        alBaseLogic, "alBasePhys2", logicWorld, false, 1, true);
    //
    G4VPhysicalVolume *alBasePhys2 = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z + tankHeight + wtyvek + wal/2 + 2*m),
        alBaseLogic, "alBasePhys2", logicWorld, false, 1, true);

    //Cylinder walls
    G4Tubs *alCylSolid = new G4Tubs("tCylSolid", tankRadius + wtyvek,
        tankRadius + wtyvek + wal, tankHeight + wtyvek + wal + 1*m, 0., 360.*deg);

    G4LogicalVolume *alCylLogic = new G4LogicalVolume(alCylSolid, Al,
        "alCylLogic");

    G4VPhysicalVolume *alCylPhys = new G4PVPlacement(0,
        G4ThreeVector(0., 0., tankPos_z - wtyvek - wal/2 + 1*m),
        alCylLogic, "alCylPhys", logicWorld, false, 0, true);

    //VIS/////////////////////////////////////////////////////////////
    //Visualizacion del agua
    G4VisAttributes *water_va= new G4VisAttributes(G4Colour::Blue());
    water_va->SetForceAuxEdgeVisible (true);
    water_va->SetForceWireframe(true);
    water_va->SetForceSolid(false);
    water_va->SetVisibility(true);
    waterLogic->SetVisAttributes(water_va);

    /*//Tyvek
    G4VisAttributes *tyvek_va= new G4VisAttributes(G4Colour::Yellow());
    tyvek_va->SetForceAuxEdgeVisible (true);
    tyvek_va->SetForceWireframe(true);
    tyvek_va->SetForceSolid(false);
    tyvek_va->SetVisibility(true);
    tBaseLogic->SetVisAttributes(tyvek_va);
    tCylLogic->SetVisAttributes(tyvek_va);*/

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
