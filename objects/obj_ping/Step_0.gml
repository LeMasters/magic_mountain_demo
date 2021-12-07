if (image_index > 3) {
	// just to make sure it doesn't repeat
	// the animation before it dies... I probably
	// don't need this line...
	image_speed = 0;
	
	// we've run the animation once, so destroy ourselves
	instance_destroy();
}