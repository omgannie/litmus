var percentageConversion = function(emotionData) {
	var initialData = [];
	initialData.push(emotionData.joy, emotionData.sadness, emotionData.anger, emotionData.disgust, emotionData.fear);

	var emotionNumbers = []
	for (var i in initialData) {
    emotionNumbers.push(parseFloat( (initialData[i] * 100), 10));
	};

	var total = 0;

	for(var i in emotionNumbers) {
		total += emotionNumbers[i];
	};

	var percentages = []
	for(var i in emotionNumbers) {
		percentages.push( ((emotionNumbers[i]/total) * 100));
	};

	// .toFixed(0)

	var formattedPercentages = []
	for(var i in percentages) {
		formattedPercentages.push(percentages[i])
	};

	return formattedPercentages;
}

	// var angerNum = parseFloat((emotionData.anger * 100), 10)
	// var disgustNum = parseFloat((emotionData.disgust * 100), 10)
	// var fearNum = parseFloat((emotionData.fear * 100), 10)
	// var joyNum = parseFloat((emotionData.joy * 100), 10)
	// var sadnessNum = parseFloat((emotionData.sadness * 100), 10)

	// var total = angerNum + disgustNum + fearNum + joyNum + sadnessNum

	// var angerPercent = angerNum/total
	// var disgustPercent = disgustNum/total
	// var fearPercent = fearNum/total
	// var joyPercent = joyNum/total
	// var sadnessPercent = sadnessNum/total

// var totalPercentage = (anger/total) + (disgust/total) + (fear/total) + (joy/total) + (sadness/total)
