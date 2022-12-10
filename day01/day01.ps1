$thisElfNumber, $totalCalories = 0;
[string[]]$arrayFromFile = Get-Content -Path 'input'
$thisElfNumber = $thisElfNumber+1
for ($i=0; $i -lt $arrayFromFile.Length; $i++) {
	if ($arrayFromFile[$i] -ne "") {
		[int]$totalCalories = [int]$totalCalories + [int]$arrayFromFile[$i] 
	} else {
		echo "Elf $thisElfNumber is carrying: $totalCalories Calories."
		$thisElfNumber++
		$totalCalories = 0;
	}
}
#echo $arrayFromFile