setMode -bs
setCable -port auto
Identify -inferir
identifyMPM
assignFile -p 5 -file "TestIOs.bit"
Program -p 5
quit