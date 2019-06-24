shield_string <- "level1_shield_maker_";
function prepareShields() {
	//find the number placement for solution
	local a = RandomInt(1, 4);//inclusive
	printl("Solution #: " + a);
	addShields(a);
}

function addShields(a) {
	local temp = "";
	for (local i = 1; i <= 4; i+=1) {
		if (i == a) {
			temp = shield_string + a.tostring();
			EntFire(temp, "AddOutput", "entitytemplate level1_shield_maker_temp2", 0.00, null);
			EntFire(temp, "ForceSpawn", "", 0.5, null);
		}
		else {
			temp = shield_string + i.tostring();
			EntFire(temp, "AddOutput", "entitytemplate level1_shield_maker_temp1", 0.00, null);
			EntFire(temp, "ForceSpawn", "", 0.5, null);
		}
	
	}
}