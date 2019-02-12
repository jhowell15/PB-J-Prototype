/// @description Draw information on the GUI

// Draw player's current score
draw_set_font(font_scoreText)
draw_set_color(c_black)
draw_text(60, 50, "Score: " + string(playerScore))