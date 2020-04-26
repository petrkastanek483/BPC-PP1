clear all; clc;

fce='log(x)';
min = 1;
max = 2;
n = 5;

[obd,obd1,obdx] = obdelnik(fce,min,max,n);
[lich,lich1,lichx] = lichobeznik(fce,min,max,n);
[sim,sim1,simx] = simpson(fce,min,max,n);
[realna,realna1,realnax]=realna(fce,min,max,n);