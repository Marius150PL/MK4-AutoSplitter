/***************************************************************************************\
* Mortal Kombat 4 (PC) AutoSplitter.                                                    *
* By Marius150PL.                                                                       *
* This current version is for testing purposes only.                                    *
* We hope it'll works for everyone.                                                     *
* AutoSplitter starts and splits in right moments.                                      *
* Please leave some feedback on how well the AutoSplitter works and report bugs.        *
\***************************************************************************************/

state("mk4"){	
    int chosenDestiny0: "mk4.exe", 0x1F31C, 0x2EC;
    short chosenDestiny1: "mk4.exe", 0x13880C, 0x240;
    int firstEnemy: "mk4.exe", 0x895CC, 0x4;
    int enemyCharId0: "mk4.exe", 0x223B0, 0x0;
    int enemyCharId1: "mk4.exe", 0x22380, 0x0;
    int scene0: "mk4.exe", 0xB03E4, 0x298;
    int scene1: "mk4.exe", 0xB99F20, 0xC, 0x4;
    int status0: "mk4.exe", 0x1F31C, 0x570;
    int status1: "mk4.exe", 0x2B88, 0x0;
}

start{
    if(current.scene0 == 723 && current.scene1 == 177){
        if(current.chosenDestiny0 == 140 || current.chosenDestiny1 == 31422){
            return true;
        }
    }
}

split{
    if(current.firstEnemy == 0){
        if((current.enemyCharId0 != old.enemyCharId0) || (current.enemyCharId1 != old.enemyCharId1)){
            return true;
        }
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