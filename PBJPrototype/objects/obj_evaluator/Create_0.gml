/// @description When evaluator spawns

// define positions to spawn evaluation marks
evalPosX = 736;
evalPos0Y = 628;
evalPos1Y = 552;
evalPos2Y = 476;

// calculate score based on item type
evalScore = 0;

// if bread is on bottom, award 20 pts
if (obj_gameManager.Slot0 == 0)
{
	evalScore += 20;
	instance_create_layer(evalPosX, evalPos0Y, "UILayer", correctMark);
}
else
{
	instance_create_layer(evalPosX, evalPos0Y, "UILayer", incorrectMark);
}

// if middle contains both pb and jam, award 40 pts
if ((obj_gameManager.Slot1 == 1 && obj_gameManager.Slot2 == 2)
	|| (obj_gameManager.Slot1 == 2 && obj_gameManager.Slot2 == 1))
{
	evalScore += 40;
	instance_create_layer(evalPosX, evalPos1Y, "UILayer", correctMark);
}
// but if middle contains ONLY pb or jam, award 20 pts
else if ((obj_gameManager.Slot1 == 1 && obj_gameManager.Slot2 == 1)
	|| (obj_gameManager.Slot1 == 2 && obj_gameManager.Slot2 == 2))
{
	evalScore += 20;
	instance_create_layer(evalPosX, evalPos1Y, "UILayer", halfCorrectMark);
}
else
{
	instance_create_layer(evalPosX, evalPos1Y, "UILayer", incorrectMark);
}

// if bread is on top, award 20 pts
if (obj_gameManager.Slot3 == 0)
{
	evalScore += 20;
	instance_create_layer(evalPosX, evalPos2Y, "UILayer", correctMark);
}
else
{
	instance_create_layer(evalPosX, evalPos2Y, "UILayer", incorrectMark);
}

// add eval score to current score
obj_gameManager.playerScore += evalScore;

// swap sprite for customer
finalScore = obj_gameManager.playerScore;
if (finalScore > 80)
{
	obj_customer.sprite_index = spr_satisfiedCustomer;
}
else if (finalScore > 60)
{
	obj_customer.sprite_index = spr_nonplussedCustomer;
}
else
{
	obj_customer.sprite_index = spr_angryCustomer;
}
