// this just happens once -- to set it on the path
if (pathGo == true) {
	path_start(path_simple,0.38,path_action_stop,true);
	pathGo = false;
}

// hitpoints are being depleted every time
// the monstar gets hit by a projectile.
// the number of hitpoints can be displayed
// by changing the obj_lifeGraph's image index.
// so 5 hitpoints is image index 5,
// and 1 hitpoint is image index 1.  See?
// (image index 0 is empty, cause it will die anyway).

if (hitPoints<1) {
	instance_destroy();
	instance_destroy(myGraph);
} else {
	myGraph.x = x;
	myGraph.y = y;
	myGraph.image_index = hitPoints;
	myShadow.x = x;
	myShadow.y = y;
	
	// keep the shadow consistent with the monstarr!
	// so I set the shadow's sprite frame to be
	// the same as my monstarr's sprite frame.
	myShadow.image_index = image_index;
}

// if I'm at 2 hitpoints or less, slow down!
if (hitPoints == 2) {
	path_speed = 0.33;
} else {
	if (hitPoints == 1) {
		path_speed = 0.25;
	}
}