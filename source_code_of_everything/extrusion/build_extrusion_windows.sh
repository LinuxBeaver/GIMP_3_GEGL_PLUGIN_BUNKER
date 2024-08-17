#!/bin/bash

mkdir WindowsBinaries

TOP=$(pwd)  

chmod +x build_linux.sh

./build_linux.sh

cp $(find . -name '*extrusion.dll') $TOP/WindowsBinaries

cd ..

cd bevel_bump && chmod +x build_linux.sh

./build_linux.sh

cp $(find . -name '*bevel.dll') $TOP/WindowsBinaries

cd .. 

cd edge_smooth && chmod +x build_linux.sh

./build_linux.sh

cp $(find . -name '*smoothedge.dll') $TOP/WindowsBinaries



