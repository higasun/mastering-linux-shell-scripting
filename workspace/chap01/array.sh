#!/bin/bash
myarr=(hoge fuga piyo)
echo ${myarr[*]}
unset myarr[0]
echo ${myarr[*]}