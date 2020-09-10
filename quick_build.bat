cd scripts

echo building...
call build_debug.bat

cd ../bin

echo running...
echo.

blastaway.exe

echo.
cd ..

@pause