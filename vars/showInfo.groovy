def call(stage, time){
	echo "Stage: ${stage}"
	sh 'date'
	sh 'id'
	sh 'sleep ${time}'
}
