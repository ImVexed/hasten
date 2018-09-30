all : dep build
run :
	nim c -d:ssl -r hasten.nim
build :
	nim c -d:ssl -d:release hasten.nim
dep :
	nimble -y install cligen