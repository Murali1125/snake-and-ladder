#! /bin/bash -x


# Snake and ladder game played with single player at stsrt possion 0
# the player rools the die to get a number between 1 to 6

#-------------------------------------------------------------------------------------


function snake_and_ladder() {
	#count variable to count the dice rolls
	count=0
	#possition of the player
	possition=0
	player=player01
	# declare players variables
	player1_pos=0

	#get the random die number
	dice_number=$(( RANDOM % 6 + 1 ))

}
