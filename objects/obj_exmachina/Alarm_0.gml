if (instance_number(obj_monstarr) < maxEvilQty) {
	var tempMonstarr = instance_create_layer(inX, inY, "Instances", obj_monstarr);
	// this next variable is inside the monstarr.
	// it is a flag that tells the monstarr
	// to put itself on a path.
	
	tempMonstarr.pathGo = true;
	if (alarm[0]<1) {
		alarm_set(0,128);
	}
}