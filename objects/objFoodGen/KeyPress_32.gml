for(var i = 1; i <= global.amountFood; i++){
	angle = irandom_range(0,360)
	instance_create_layer(x+(cos(angle)*random(125)),y+(sin(angle)*random(125)),"Objects", objFood)
}