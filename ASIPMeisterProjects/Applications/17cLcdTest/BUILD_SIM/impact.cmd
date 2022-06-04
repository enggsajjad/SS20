setMode -bs
setCable -port auto
Identify -inferir
identifyMPM
assignFile -p 5 -file "cLcdTest.bit"
Program -p 5
quit
