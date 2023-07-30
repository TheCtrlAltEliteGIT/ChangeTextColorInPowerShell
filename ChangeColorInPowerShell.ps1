
function ChangeForeGroundColor{
    param([System.String] $inputString)
    
    switch($inputString){
        "Black" {Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "Red"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "DarkBlue"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "DarkGreen"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "DarkCyan"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "DarkRed"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
       "DarkMagenta"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "DarkYellow"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "Gray"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "DarkGray"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "Blue"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "Green"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "Cyan"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "Magenta"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "Yellow"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged}
        "White"{Set-ConsoleColor -ForegroundColor $inputString;ColorChanged} 
    }
}

function Set-ConsoleColor {
    param (
        [System.ConsoleColor]$ForegroundColor
    )
    $host.ui.rawui.ForegroundColor = $ForegroundColor
}

function ColorChanged{
   Write-Host "Color Changed"
}

Write-Host "Choose a Color"

##I am lazy I know but it works! :D
Write-Host "
Black 
Red OR DarkRed
Blue OR DarkBlue
Green OR DarkGreen
Cyan OR DarkCyan
Magenta OR DarkMagenta
Yellow OR DarkYellow      
Gray OR DarkGray
White
"
Write-Host "Write the full name of the color"
$inputString = Read-Host

ChangeForeGroundColor $inputString
