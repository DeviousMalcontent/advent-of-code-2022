$thisElfNumber, $totalCalories = 0;
$arrayThatHoldsTheTotalCaloriesForEachElf = New-Object System.Collections.Generic.List[System.Object]
[string[]]$arrayFromFile = Get-Content -Path 'input'
$thisElfNumber = $thisElfNumber+1
for ($i=0; $i -lt $arrayFromFile.Length; $i++) {
	if ($arrayFromFile[$i] -ne "") {
		[int]$totalCalories = [int]$totalCalories + [int]$arrayFromFile[$i] 

	} else {
		
		#echo "Elf $thisElfNumber is carrying: $totalCalories Calories."
		$thisElfNumber++
		$arrayThatHoldsTheTotalCaloriesForEachElf.Add($totalCalories);
		$totalCalories = 0;
	}
}
#$arrayThatHoldsTheTotalCaloriesForEachElf.ToArray() | out-null
$arrayThatHoldsTheTotalCaloriesForEachElf = $arrayThatHoldsTheTotalCaloriesForEachElf.ToArray() | sort
$TopElf = $arrayThatHoldsTheTotalCaloriesForEachElf[$arrayThatHoldsTheTotalCaloriesForEachElf.Length-1]
$SecondTopElf = $arrayThatHoldsTheTotalCaloriesForEachElf[$arrayThatHoldsTheTotalCaloriesForEachElf.Length-2]
$ThirdTopElf = $arrayThatHoldsTheTotalCaloriesForEachElf[$arrayThatHoldsTheTotalCaloriesForEachElf.Length-3]
echo "The Top Elf is carrying: $TopElf Calories."
echo "The Elf Second Top Elf is carrying: $SecondTopElf Calories."
echo "The Third To pElf is carrying: $ThirdTopElf Calories."
echo "------------------------------------------"
$Answer = [int]$TopElf + [int]$SecondTopElf + [int]$ThirdTopElf
echo "Answer: $Answer"