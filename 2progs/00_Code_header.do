************************************************************************
***************SETUP CODE HEADER FOR ALL PROGRAMS***********************
***************									 ***********************
************************************************************************
clear
clear matrix
clear mata
cap log close

#delim ; 
if "`c(username)'"=="PERSON" {; global root "";};
else if "`c(username)'"=="SOMEONE" {;global root "FILL";};
else if "`c(username)'"=="SOMEONE ELSE" {;global root "FILL HERE";};
# delim cr
include "$root/2progs/00_Set_paths.do"
************************************************************************
************************************************************************