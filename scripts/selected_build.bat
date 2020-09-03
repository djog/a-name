@echo off
cd ..
mkdir bin
cd bin
g++ -c -std=c++14 -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Werror -Wno-unused-variable -fext-numeric-literals -I../src ../src/%*
g++ *.o -o app.exe
cd ..\scripts
