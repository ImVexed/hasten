all : dep build
run :
	nim c -d:ssl -r hasten.nim
build :
	nim -d:release --opt:size --gc:none -d:ssl c hasten.nim
pack :
	upx --brute hasten
dep :
	nimble -y install cligen