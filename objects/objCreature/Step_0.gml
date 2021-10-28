if(energy > 0){
	energy--;
	watchRange.x = x;
	watchRange.y = y;
	if(satisfaction >= 2){
	state = 3;
	food = noone;	
	}
	else{
	state = watchRange.state;
	food = watchRange.food;	
	}
	
	switch(state){
		
		case 0:
			break;

		case 1:
			break;

		case 2:
			if(instance_exists(food)){
				direction = point_direction(x,y,food.x,food.y);
			}
			break;

		case 3:
			direction = point_direction(x,y,instance_nearest(x,y,objBorder).x,instance_nearest(x,y,objBorder).y);
			break;
	}

}

else{
	
	if(satisfaction < 1 || !arrived){
		speed = 0;
		instance_destroy(watchRange);
		instance_destroy(self);
	}
}

if(keyboard_check_pressed(ord("F"))){
	if(satisfaction >= 2){
	instance_create_layer(x + random_range(-10,10),y + random_range(-10,10),"Effects",objReproducing);
	son = instance_create_layer(x,y,"Objects",objCreature);
	son.totalEnergy = totalEnergy;
	son.movingSpeed = movingSpeed;

	son.mutation = random_range(0, 100);

	if(son.mutation <= global.mutationOdds){
		son.mutationLevel = random_range(-20,20)
		son.movingSpeed += son.mutationLevel * 7.5;
		son.totalEnergy -= son.mutationLevel * 10;
	}
}
satisfaction = 0;
watchRange.state = 0;
state = watchRange.state;
arrived = false;
energy = totalEnergy;
speed = (movingSpeed/100);
direction = point_direction(x,y,habitat.x,habitat.y);
}