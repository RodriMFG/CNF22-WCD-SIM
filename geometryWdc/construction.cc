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

    //MATERIALS///////////////////////////////////////////////////////////
    //class that contains properties of materials
    G4NistManager *nist = G4NistManager::Instance();

    //class to find and define materials
    //we include the predefined material air
    G4Material *worldMat = nist->FindOrBuildMaterial("G4_AIR");

    G4Material *water = nist->FindOrBuildMaterial("G4_WATER");

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

    //VIS/////////////////////////////////////////////////////////////
    //Visualizacion del agua
    G4VisAttributes* water_va= new G4VisAttributes(G4Colour::Blue());
    water_va->SetForceAuxEdgeVisible (true);
    water_va->SetForceWireframe(true);
    water_va->SetForceSolid(false);
    water_va->SetVisibility(true);
    waterLogic->SetVisAttributes(water_va);

    //program should return the physical volume
    return physWorld;
}
