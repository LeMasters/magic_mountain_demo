// made it home safely!  SO need to keep
// explosion from displaying in destroy event...

suppress_explosion = true;
// add one to the tally of shame
// which is stored in obj_exmachina.
obj_exmachina.escapedTotal = obj_exmachina.escapedTotal + 1;

instance_destroy();
if (obj_exmachina.alarm[0]<1) {
	obj_exmachina.alarm[0] = 199;
}