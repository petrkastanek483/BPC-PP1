clear all; clc;

fce='log(x)';
min = 1;
max = 2;
n = 5;

obd=obdelnik(fce,min,max,n)
lich=lichobeznik(fce,min,max,n)
sim=simpson(fce,min,max,n)