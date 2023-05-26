/***************************************************************************************\
* Mortal Kombat 4 (PC) AutoSplitter.                                                    *
* By Marius150PL.                                                                       *
* This current version is for testing purposes only.                                    *
* We hope it'll works for everyone.                                                     *
* AutoSplitter starts and splits in right moments.                                      *
* Please leave some feedback on how well the AutoSplitter works and report bugs.        *
\***************************************************************************************/

state("mk4"){	
    // int axisX: "mk4.exe", 0xD91A4, 0x54; // x axis in 3D scene. Somehow start with this works on Master and Master II ladder only.
    // int chosenDestiny: "mk4.exe", 0x1F31C, 0x2EC; // 140 when ladder is chosen.
    int difficulty: "mk4.exe", 0x138AC4, 0x4C; // 1092 when Master II is chosen.
    int chosenDestiny: "mk4.exe", 0x895CC, 0x4; // 1 if chosen destiny or play against 1st enemy. Otherwise 0.
    int enemyCharId0: "mk4.exe", 0x223B0, 0x0; // Changes when Loading in Ladder appears, not changes when you continue. 8 when Shinnok.
    int enemyCharId1: "mk4.exe", 0x22380, 0x0; // Changes when Loading in Ladder appears, not changes when you continue. 6 when Shinnok.
    // int matchWon0: "mk4.exe", 0xD91A4, 0x52C; // 1362188 when match won.
    // int matchWon1: "mk4.exe", 0xD91A4 0x55C; // 131234 when match won.
    int scene0: "mk4.exe", 0xB03E4, 0x298; // 510 when Shinnok's defeated. 786 on Main Menu. 723 on CYD screen.
    int scene1: "mk4.exe", 0xB99F20, 0xC, 0x4;  // 177 on CYD screen, 263 on Main Menu, 8 when Shinnok's defeated.
    int defeatedShinnok: "mk4.exe", 0x6A1F30, 0x0; // 0 when Shinnok's defeated. 11149112 otherwise.
    int status0: "mk4.exe", 0x1F31C, 0x570; // 5475712 or 5475712 on gameplay. 0 otherwise.
    int status1: "mk4.exe", 0x2B88, 0x0; // 131234 on gameplay, 162 when the fight's won. 0 otherwise.
}

start{
    if(current.scene0 == 723 && current.scene1 == 177 && current.status1 == 0 && current.difficulty != 0){
        return true;
    }
}

split{
    if(current.chosenDestiny == 0 && (current.enemyCharId0 != old.enemyCharId0) && (current.enemyCharId1 != old.enemyCharId1)){
        return true;
    }

    if(current.enemyCharId0 == 8 && current.enemyCharId1 == 6){
        if(current.scene0 == 510 && current.scene1 == 8 && current.status0 == 0 && current.status1 == 162){
            return true;
        }
    }
}

reset{
    if(current.scene0 == 786 && current.scene1 == 263){
        return true;
    }
}