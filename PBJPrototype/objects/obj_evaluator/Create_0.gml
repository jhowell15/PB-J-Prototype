/// @description When evaluator spawns

// calculate score based on item type
evalScore = 0

show_debug_message(string(obj_gameManager.Slot0) + " " + string(obj_gameManager.Slot1) + " " + string(obj_gameManager.Slot2) + " " + string(obj_gameManager.Slot3))

// if bread is on bottom, award 20 pts
if (obj_gameManager.Slot0 == 0)
{
	evalScore += 20;
}

// if middle contains both pb and jam, award 40 pts
if ((obj_gameManager.Slot1 == 1 && obj_gameManager.Slot2 == 2)
	|| (obj_gameManager.Slot1 == 2 && obj_gameManager.Slot2 == 1))
{
	evalScore += 40
}
// but if middle contains ONLY pb or jam, award 20 pts
else if ((obj_gameManager.Slot1 == 1 && obj_gameManager.Slot2 == 1)
	|| (obj_gameManager.Slot1 == 2 && obj_gameManager.Slot2 == 2))
{
	evalScore += 20
}

// if bread is on top, award 20 pts
if (obj_gameManager.Slot3 == 0)
{
	evalScore += 20
}

// add eval score to current score
obj_gameManager.playerScore += evalScore