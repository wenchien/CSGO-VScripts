//global variables
isUsed <- [0, 1 ,2, 3, 4, 5];
copyUsed <- [0, 0, 0, 0, 0, 0];
MAX <- 6;
MIN <- 1;
arrayMax <- 5;
current <- 1;

//env_entities_maker names
shield_temp <- "level3_shield_maker_";

//Modified Fisher Yates Algo
function shuffle(roll) {
	local indexa = indexOf(roll);
	local indexb = indexOf(arrayMax);
	local temp = 0;
	
	temp = isUsed[indexa];
	isUsed[indexa] = isUsed[indexb];
	isUsed[indexb] = temp;
}

function pickRandom() {
    // Generate a pseudo-random float between 0 and max - 1, inclusive
    local roll = MIN * MAX * rand() / RAND_MAX;
    shuffle(roll);
	arrayMax -= 1;
}

function copyArray(from,to) {
	for (local i = 0; i < from.len(); i+=1) {
			to[i] = from[i];
	}
}

function prepare() {
	copyArray(isUsed, copyUsed);
	//Shuffle is a few times;
	for(local i = 0; i < isUsed.len(); i+=1) {
		pickRandom();
	}
	arrayMax = 5;
	printl("---------------------------------");
	for (local j = 0; j < isUsed.len(); j+=1) {
		printl(isUsed[j]);
	}
}

function indexOf(num) {
	//to be found
	local k = num;
	
	//utility
	local i = 0;
	local index = 0;
	
	//perform linear search
	while (i < 6) {
		if (isUsed[i] == k) {
			index = i;
			printl("Element: " + k + "found at: " + i);
			break;
		}
		else {
			i++;
		}
	}
	return index;
}


function setTemplatesAndSpawn() {
	local temp = shield_temp + current.tostring();
	local poppee = isUsed;
	local val = poppee.pop();
	
	//debug statement
	printl("shield maker #: " + temp);
	printl("Value #: " + val);
	switch(val) {
	case 0 : 
		EntFire(temp, "AddOutput", "entitytemplate level3_crystal_template_a", 0.00, null);
		EntFire(temp, "ForceSpawn", "", 0.5, null);
		break;
	case 1 : 
		EntFire(temp, "AddOutput", "entitytemplate level3_crystal_template_b", 0.00, null);
		EntFire(temp, "ForceSpawn", "", 0.5, null);
		break;
	case 2 : 
		EntFire(temp, "AddOutput", "entitytemplate level3_crystal_template_c", 0.00, null);
		EntFire("crystal_spear_temp", "ForceSpawn", "", 0.5, null);
		EntFire(temp, "ForceSpawn", "", 0.5, null);
		//crystal_spear_temp
		break;
	case 3 : 
		EntFire(temp, "AddOutput", "entitytemplate level3_crystal_template_d", 0.00, null);
		EntFire(temp, "ForceSpawn", "", 0.5, null);
		break;
	case 4 : 
		EntFire(temp, "AddOutput", "entitytemplate level3_crystal_template_e", 0.00, null);
		EntFire(temp, "ForceSpawn", "", 0.5, null);
		break;
	case 5 : 
		EntFire(temp, "AddOutput", "entitytemplate level3_crystal_template_f", 0.00, null);
		EntFire(temp, "ForceSpawn", "", 0.5, null);
		break;
	default :
		printl("No Spawn");
	}
	current += 1;
}

function refresh() {
	current = 1;
	
	//could've been written a little more elegant but wtv
	isUsed.append(0);
	isUsed.append(0);
	isUsed.append(0);
	copyArray(copyUsed,isUsed);
}