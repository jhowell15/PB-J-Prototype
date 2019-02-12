/// @description Called once per frame

// if last spot has been filled and no evaluator has been spawned
if (Slot3 != -1 && !instance_exists(obj_evaluator))
{
	// spawn evaluator object
	instance_create_layer(0, 0, "ManagersLayer", obj_evaluator);
}