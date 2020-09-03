cd scripts

echo building...
call build_debug.bat

cd ../bin

echo running...
echo.

app.exe

echo.
cd ..

@pause