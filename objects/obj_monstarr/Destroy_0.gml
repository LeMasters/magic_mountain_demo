// this event runs whenever we're slated
// to be destroyed... so this is kinda the
// very last thing this monstarr will do before
// it kicks the bucket.  SO... let's use this
// opportunity to destroy our lifeGraph.
// and our shadow, too
instance_destroy(myGraph);
instance_destroy(myShadow);
// NB we can use this to create a last-minute
// explosion, too.  But only if 
// suppress_explosion is false!  
// Remember:  "!suppress_explosion"
// means "NOT suppress_explosion" 
// which means
// suppress_explosion == NOT TRUE
// which means
// suppress_explosion is false

if (!suppress_explosion) {
	instance_create_layer(x,y,"Instances",obj_explosivo);
}