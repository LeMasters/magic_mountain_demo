// this explosion will cause the camera
// to shake.  It can happen because I
// am using "viewports" which were set
// in the Room1 properties.

var defaultCamera = view_camera[0];
// a little camera rocking goes a long way!
// I'll use our current frame from the explosion animation
// and multiply the frame number times 0.15.  This
// will make the explosion shake (potentially) grow
// with each new frame.
var explosionFrame = image_index * 0.15;

if (image_index > 5) {
	// did we get to the last frame?
	// then we're out.
	instance_destroy();
	image_speed = 0;
} else {
	// here's where the explosion shake for this
	// frame is calculated!
	var delta = random_range(-explosionFrame, explosionFrame);
	camera_set_view_angle(defaultCamera, delta);
}