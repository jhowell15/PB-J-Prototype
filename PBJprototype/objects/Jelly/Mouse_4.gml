
if(manager.slotCount == 1)
{

	slotAlpha.sprite_index = jellySprite
	manager.order += "j"
	instance_destroy(id)
	manager.slotCount = 2
}
else if(manager.slotCount == 2)
{
	slotBravo.sprite_index = jellySprite
	manager.order += "j"
	instance_destroy(id)
	manager.slotCount = 3
}
else if(manager.slotCount == 3)
{
	slotCharlie.sprite_index = jellySprite
	manager.order += "j"
	instance_destroy(id)
	manager.slotCount = 4
}
else if(manager.slotCount == 4)
{
	slotDelta.sprite_index = jellySprite
	manager.order += "j"
	instance_destroy(id)
}