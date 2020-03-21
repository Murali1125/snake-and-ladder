#! /bin/bash -x


# Snake and ladder game played with single player at stsrt possion 0
# the player rools the die to get a number between 1 to 6
# the player then checks for a option, they are no play, ladder or snake
# repete till the player reaches the winning possition 100
# ensure the player gets to exact winning position 100
#-------------------------------------------------------------------------------------


function snake_and_ladder() {
	#count variable to count the dice rolls
	count=0
	#possition of the player
	possition=0
	player=player01
	# declare players variables
	player1_pos=0
	

	#loop until reached to 100
	while [ $possition -lt 100 ]
	do
		#get the random die number
		dice_number=$(( RANDOM % 6 + 1 ))

		# randomly get the options noplay-0, ladder-1, snake-2
		options=$(( RANDOM % 3))
		case $options in

			0 )	# if the option is no play => player will stay same playes only
				echo "possition  : $possition" ;;

			1 )	# if the option is ladder then increse the value
				possition=$(( possition + dice_number ))
				if [ $possition -gt 100 ]
				then
					#if  popssition getting morethen 100 then stay in same possition
					possition=$(( possition - dice_number ))
				fi
				echo "possition : $possition " 
				# if the possition = 100 player win
				if [ $possition -eq 100 ]
				then
					echo " $player win "
					break
				fi             ;;
			2 ) # if the option is snake 
				possition=$(( possition - dice_number ))
				# if the possition getting lessthan 0 stay in 0 place
				if [ $possition -lt 0 ]
				then
					possition=0
				fi
				echo "possition : $possition" ;;
		esac
	done
}
