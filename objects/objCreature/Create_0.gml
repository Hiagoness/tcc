watchRange = instance_create_layer(x,y,"Objects", objWatchRange);
watchRange.parent = self;
state = watchRange.state;
satisfaction = 0; 
arrived = false;

habitat = global.instanceHabitat;
totalEnergy = global.defaultEnergy;
movingSpeed = global.defaultSpeed;

mutation = random_range(0, 100);

if(mutation <= global.mutationOdds){
	mutationLevel = random_range(-20,20)
	movingSpeed += mutationLevel * 7.5;
	totalEnergy -= mutationLevel * 10;
}

energy = totalEnergy;
speed = (movingSpeed/100);
direction = point_direction(x,y,habitat.x,habitat.y);