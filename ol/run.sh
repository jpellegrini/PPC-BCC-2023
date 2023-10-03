#!/bin/bash

# QUICK HACK: poderia ser bem melhor, mas não temos tempo...

for i in 0*.tex 1*.tex 2*.tex ; do
    echo "========================="
    echo "${i%.*}" ;
    lualatex "${i%.*}" ;
    biber "${i%.*}" ;
    lualatex "${i%.*}" ;
    lualatex "${i%.*}" ;
done


