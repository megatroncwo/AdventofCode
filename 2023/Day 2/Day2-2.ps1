#$data=get-content '/Users/meganwyatt/Documents/Advent of Code/2023/Day 2/day-2-input.txt'
$data='Game 100: 2 green, 2 blue, 12 red; 15 blue, 14 red, 5 green; 14 red, 13 green'
$Game=""
$RedVar=0
$GreenVar=0
$BlueVar=0
$TotalPower=0

foreach($line in $data){
    $RedVar=0
    $GreenVar=0
    $BlueVar=0
    $Game=$line.split(': ')[1] -replace (';', ',') -split (", ")
    # Splits the line but will only store the second half of the split

  foreach ($line in $Game){
    
    switch ($line) {
        {$line -match "\d+ red" -and $line.split(' ')[0] -gt $RedVar} {$RedVar = $line.split(' ')[0]}
        
        {$line -match "\b[0-9][0-9]\b green" -and $line.split(' ')[0] -gt $GreenVar} {$GreenVar = $line.split(' ')[0]}
        
        {$line -match "\d+ blue" -and $line.split(' ')[0] -gt $BlueVar} {$BlueVar = $line.split(' ')[0]}
   
    }

  }
   


  $TotalPower+=[int]$RedVar*[int]$GreenVar*[int]$BlueVar

 <# Switch (<test-expression>)
  {
    "\b[0-9][0-9]\b red"  {[int]$RedVar=trim.(" red")}
    <result1-to-be-matched> {<action>}
      <result2-to-be-matched> {<action>}
  }
  if ($RedVar -gt $RedMax){replace}
    #    [int]$GameID=$Game[0].trim("Game ")

    $test=$Game[1].split(';')
<#    foreach($line in )
    if($set -match "red"){
        $Red=$set.split(' ')
        [int]$Red=
    }


    if($Game[1] -notmatch "\b[1][5-9]\b|\b[2-9][0-9]\b|14 green|14 red|13 red"){
    
        $TotalPower += $GameID
    }

    68389
    18559

    199135
    #> 
}

$game
$RedVar
$GreenVar
$BlueVar
$TotalPower
#in a single game-must find max red blue green, mult those together, add it to the total 