// make sure we fixed the camera after the explosion!
// just need to set it back to an angle of 0

// this value will always be the same
// if you only use one camera.  It is 
// always view_camera[0] 
var defaultCamera = view_camera[0];


camera_set_view_angle(defaultCamera, 0);