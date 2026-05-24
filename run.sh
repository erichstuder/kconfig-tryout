#!/bin/bash

awk -F= '
/^CONFIG_/ {
    if ($2 == "y")
        print "#define " $1 " 1";
    else if ($2 == "m")
        print "#define " $1 " 0 /* module */";
    else if ($2 ~ /^\".*\"$/)
        print "#define " $1 " " $2;
    else if ($2 ~ /^[0-9]+$/)
        print "#define " $1 " " $2;
    else
        print "/* " $0 " */"
}
' .config > build/config.h

cmake -S . -B build
cmake --build build

if [ $? -ne 0 ]; then
    echo "Build failed. Exiting."
    exit 1
fi

echo
echo "Running the program:"
echo

./build/main
