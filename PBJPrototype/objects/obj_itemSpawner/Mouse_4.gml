/// @description When user clicks on given object

// spawn appropriate item at next free location in sandwich
with (obj_gameManager) {
	// if spots in sandwich remain
	if (sandwichSpotIndex <= 3)
	{
		// spawn item at next free location
		switch (sandwichSpotIndex) {
			case 0:
				instance_create_layer(spawnPointX, spawnPoint0Y, "Item0Layer", other.myItemInstance);
				Slot0 = other.myItemType;
				break;
			case 1:
				instance_create_layer(spawnPointX, spawnPoint1Y, "Item1Layer", other.myItemInstance);
				Slot1 = other.myItemType;
				break;
			case 2:
				instance_create_layer(spawnPointX, spawnPoint2Y, "Item2Layer", other.myItemInstance);
				Slot2 = other.myItemType;
				break;
			case 3:
				instance_create_layer(spawnPointX, spawnPoint3Y, "Item3Layer", other.myItemInstance);
				Slot3 = other.myItemType;
				break;
			default:
				break;
		}
	
	// play appropriate placement noise
	audio_play_sound(other.myPlacementSound, 10, false);
	
	// increment index counter and give player some points
	sandwichSpotIndex++;
	playerScore += 5
	}
}