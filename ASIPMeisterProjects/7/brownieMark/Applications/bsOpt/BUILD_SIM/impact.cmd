setMode -bs
setCable -port auto
Identify -inferir
identifyMPM
assignFile -p 5 -file "bsOpt.bit"
Program -p 5
quit