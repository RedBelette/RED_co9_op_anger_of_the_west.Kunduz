//

//nul= execVM "outroscript\endcredits.sqf"; //Affiche les crédits

//playSound ""; //joue la musique


//===prise de vue CF Documentations "cutscene"
//Prise1 travel arriere et titre
///////////cam1/cam2/ cible /dur/foc1/foc2/attach/ x/y/ z /effet   /trans/durtrans
prise1 = [out1, outcam1,out1,5, 1, 1 ,false, 0, 0, 0,"blur","none",0] execVM "library\script\machinery\cam.sqf";
waitUntil {scriptDone prise1};






////======destruction de la camera ne pas editer
_cam = "camera" camCreate (position player);
camDestroy _cam;
player cameraEffect ["terminate","back"];

/////=====termine la mission avec la fin selectionnée (cf description.ext) valide les taches
["end3",true,true,false,true]spawn BIS_fnc_endMission;