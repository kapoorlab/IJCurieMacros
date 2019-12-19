frames = 180;
Original = 'Movie2.tif';
Division = 'ONETDivisionMovie2.tif';
Apoptosis = 'ONETApoptosisMovie2.tif';
NonMature = 'ONETNonMatureMovie2.tif';
Mature = 'ONETMatureMovie2.tif';
MacroKitty = 'ONETMacroKittyMovie2.tif'; 


for (i = 1; i <= nImages; i++) {
    selectImage(i);
    run("8-bit");
    run("Properties...", "channels=1 slices=1 frames=frames unit=pixel pixel_width=1.0000 pixel_height=1.0000 voxel_depth=1.0000");
    
    
}
wait(1)
run("Merge Channels...", "c2=ONETDivisionMovie2.tif c7=ONETApoptosisMovie2.tif c6=ONETNonMatureMovie2.tif c4=Movie2.tif c3=ONETMatureMovie2.tif c1=ONETMacroKittyMovie2.tif create keep");
    run("RGB Color", "frames");
    selectWindow(MacroKitty);
    close();
    selectWindow(Division);
    close();
    selectWindow(Apoptosis);
    close();
    selectWindow(NonMature);
    close();
    selectWindow(Mature);
    close();