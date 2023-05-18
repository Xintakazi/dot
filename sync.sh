#! /bin/bash

Lnvim="../nvim"
Rnvim="./nvim"
Lranger="../ranger"
Rranger="./ranger"

if [ -d "$Lnvim" ]; then
    if [ $Lnvim -nt $Rnvim ]; then
        echo "Copy nvim file to local"
        rm -rf $Rnvim
        mkdir $Rnvim
        cp -r $Lnvim ./
    else
        echo "Local $Lnvim file is out of date"
    fi
else 
    echo "Folder does not exist. Skipping copy"
fi

if [ -d "$Lranger" ]; then 
    if [ $Lranger -nt $Rranger ]; then 
        echo "Copy ranger file to local"
        rm -rf $Rranger
        mkdir $Rranger
        cp -r $Lranger ./
    else
        echo "Local $Lranger file is out of date"
    fi
else 
    echo "Folder does not exist. Skipping copy"

fi
