setMode -bs
setCable -port auto
Identify -inferir
identifyMPM
assignFile -p 5 -file "CExample_lcd.bit"
Program -p 5
quit
