pathGo = false;
hitPoints = 5;

// I use this next variable to keep the monstarr
// from exploding when it makes it all
// the way back to base... 
// when the monstarr gets destroyed,
// it will always call the "Destroy" event, 
// whether because of success or failure...
// so we just want to help it distinguish...
// by default then, we'll allow explosions...
suppress_explosion = false;

// my monstarr creates its own life graph
// as soon as the monstarr is born and assigns
// that life graph's instance to "myGraph".  This
// way, each monstarr has easy and direct access
// to its specific hitpoint visualization.
// I just have to remember to move it along with
// the monstarr every step...
myGraph = instance_create_layer(x,y,"lifeLayer",obj_lifeGraph);
myGraph.image_index = 5;

// also create my shadow!
myShadow = instance_create_layer(x,y,"shadow_layer",obj_shadow);