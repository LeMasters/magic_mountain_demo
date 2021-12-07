other.hitPoints--;

if (other.hitPoints < 1) {
	instance_destroy(other);
	// we'll let the monstarr take care of
	// deleting its lifeGraph on its own...
	// since we've called instance_destroy(other),
	// the monstarr will soon call its own event
	// that runs just before a thing gets destroyed.
	// look for it inside the Monstarr, but you
	// can see it on the events pulldown too.
}
// destroy the projectile (ourselves)
instance_destroy();

// but also create a little "hit" effect
// O don't have to do this, but for better effect,
// I'm going to average the projectile's x and y
// together with its target's x and y, making the
// hit a little closer to the middle of the monstarr,
// and less on the edge where it actually hit.

var hX = (x + other.x) * 0.5;
var hY = (y + other.y) * 0.5;
instance_create_layer(hX, hY, "ping_layer", obj_ping);