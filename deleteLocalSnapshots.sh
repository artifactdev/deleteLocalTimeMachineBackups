for snapshot in $(tmutil listlocalsnapshots / | xargs -L1 echo ) 
do 
	tmutil deletelocalsnapshots  ${snapshot#com.apple.TimeMachine.}
	echo "Deleted ${snapshot#com.apple.TimeMachine.}" 
done