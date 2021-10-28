for(var i = 1; i <= global.amountCreatures; i++){
	angle = irandom_range(0,360)
	instance_create_layer(x+(cos(angle)*220),y+(sin(angle)*220),"Objects", objCreature)
}