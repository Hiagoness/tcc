/// @description Insert description here
// You can write your code in this editor
if(satisfaction < 2){
	watchRange.state = 3;
	state = 3;
	satisfaction++;
	instance_destroy(other);
	instance_create_layer(x,y,"Effects",objEating);
}