// this is my controller object.
// I don't really use it for too much.
// however, it does spawn the first wave of
// monsters... and when a monster successfully
// reaches the end of its path, without dying, then
// that monster will restart this timer
// so that obj_exmachina will count down
// and then run its alarm0 again -- which
// checks to see how many bad guys
// there are and creates new ones if there
// aren't enough (maxEvilQty)


maxEvilQty = 10;
alarm_set(0,120);
inX = 0;
inY = 0;

// display score (tally of shame)
escapedTotal = 0;

// set up font
draw_set_font(Font1);
draw_set_color(c_white);

// now hide my dumb sprite
image_index = 1;