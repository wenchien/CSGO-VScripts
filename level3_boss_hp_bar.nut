current_Hp <- 0;
eachBar <- 0;

function scaleHp(scaler) {
	current_Hp += scaler;
}

function splitHp() {
	eachBar = current_Hp / 10;
}

function subtractHp() {
	current_Hp -= 1;
	printl("Current HP: " + current_Hp);
	checkIfBreak();
}

function checkIfBreak() {
	switch(current_Hp) {
		case (eachBar * 0) :
			EntFire("level3_boss_hpbar_1", "Break", "", 0.00, null);
			break;
		case (eachBar * 1) :
			EntFire("level3_boss_hpbar_2", "Break", "", 0.00, null);
			break;
		case (eachBar * 2) :
			EntFire("level3_boss_hpbar_3", "Break", "", 0.00, null);
			break;
		case (eachBar * 3) :
			EntFire("level3_boss_hpbar_4", "Break", "", 0.00, null);
			break;
		case (eachBar * 4) :
			EntFire("level3_boss_hpbar_5", "Break", "", 0.00, null);
			break;
		case (eachBar * 5) :
			EntFire("level3_boss_hpbar_6", "Break", "", 0.00, null);
			break;
		case (eachBar * 6) :
			EntFire("level3_boss_hpbar_7", "Break", "", 0.00, null);
			break;
		case (eachBar * 7) :
			EntFire("level3_boss_hpbar_8", "Break", "", 0.00, null);
			break;
		case (eachBar * 8) :
			EntFire("level3_boss_hpbar_9", "Break", "", 0.00, null);
			break;
		case (eachBar * 9) :
			EntFire("level3_boss_hpbar_10", "Break", "", 0.00, null);
			break;
	}
}
