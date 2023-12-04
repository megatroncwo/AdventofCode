$data=get-content '/Users/meganwyatt/Documents/Advent of Code/2023/Day 2/day-2-input.txt'
$Game=""
$GameID=0
$TotalGameID=0

foreach($line in $data){
    $Game=$line.split(':')
    [int]$GameID=$Game[0].trim("Game ")

    if($Game[1] -notmatch "\b[1][5-9]\b|\b[2-9][0-9]\b|14 green|14 red|13 red"){
    
        $TotalGameID += $GameID
    }
}
$TotalGameID 

# The REGEX has two different checks and will only work for up to 99 cubes. First:15-19 Second:20-99 

# Sample line- Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue


# if you can read it and stop if gt 14 break, then if eq 14 and != blue break (only blue can have up to 14), eq 13 and red break (green up to 13 and red only up to 12) 

#if it has a number 12 13 14 check as string contains?



