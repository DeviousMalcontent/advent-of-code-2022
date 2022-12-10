$thisElfNumber, $totalCalories = 0;
$arrayThatHoldsTheTotalCaloriesForEachElf = New-Object System.Collections.Generic.List[System.Object]
[string[]]$arrayFromFile = Get-Content -Path 'input'
$thisElfNumber = $thisElfNumber+1
for ($i=0; $i -lt $arrayFromFile.Length; $i++) {
	if ($arrayFromFile[$i] -ne "") {
		[int]$totalCalories = [int]$totalCalories + [int]$arrayFromFile[$i] 

	} else {
		echo "Elf $thisElfNumber is carrying: $totalCalories Calories."
		$thisElfNumber++
		$arrayThatHoldsTheTotalCaloriesForEachElf.Add($totalCalories);
		$totalCalories = 0;
	}
}
echo "------------------------------------------"
#$arrayThatHoldsTheTotalCaloriesForEachElf.ToArray() | out-null
$arrayThatHoldsTheTotalCaloriesForEachElf.ToArray() | sort
#for ($k=0; $k -lt $arrayThatHoldsTheTotalCaloriesForEachElf.Length; $k++) {
#	$arrayThatHoldsTheTotalCaloriesForEachElf[$k]
#}
