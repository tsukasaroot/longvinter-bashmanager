function getKey() {
	hexaKey=$(grep -Eo "0[xX][0-9a-fA-F]{15}+" Longvinter/Saved/Logs/Longvinter.log)
	hexaKey=${hexaKey: 2}
	echo $(( 16#$hexaKey ))
}

function doGit() {
	git restore .
	git pull
}

function kill_server() {
	logWindow=$(tasklist //FI "ImageName eq LongVinterServer-Win64-Shipping.exe" | grep Long)
	if [[ ! -z execLine ]];then
		IFS=' ' read -r -a array <<< "$logWindow"
		taskkill //PID ${array[1]} //F
	fi
}

function run_server() {
	./LongVinterServer.exe &> /dev/null &
}

if [ $# -eq 0 ];then
	doGit
	run_server
	sleep 7
	getKey
fi

if [[ $@ == *"getKey"* ]];then
	getKey
fi

if [[ $@ == *"checkUpdate"* ]];then
	LOCAL=$(git rev-parse @)
	REMOTE=$(git rev-parse "main")
	BASE=$(git merge-base @ "main")

	if [ $LOCAL = $REMOTE ]; then
		exit
	fi

	if [ $LOCAL = $BASE ]; then
		#Sends global message to all ingame players (through API maybe?)
		kill_server
		doGit
		run_server
	fi
fi

if [[ $@ == *"kill"* ]];then
	#Sends global message to all ingame players (through API maybe?)
	kill_server
fi