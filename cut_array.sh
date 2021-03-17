#!/bin/bash

page_array=(7 8 11 15 18 20 24 26 28 31 34 37 39 44 47 51 55 59 63 66 69 73 77 83 87 91 95 98 103 108 112 118 124 128 132)

# To declare static Array
arr=(1 12 31 4 5)
i=0
# Loop upto size of array
# starting from index, i=0
while [ $i -lt ${#page_array[@]} ]
do
    # To print index, ith
    # element
    j=$(expr ${page_array[$i+1]} - 1)
    echo ${page_array[$i]}"-"$j
    pdftk head.pdf cat ${page_array[$i]}-$j 2 output cut/Nauchnaja_P_${page_array[$i]}-$j.pdf
    # Increment the i = i + 1
    i=`expr $i + 1`
done
#TODO: Сделать исключение для последнего элемента списка при вставке страниц выкопировки.
#pdftk Cretaceous_2020.pdf cat 5-6 output cut/Cretaceous_2020_P_5-6.pdf
