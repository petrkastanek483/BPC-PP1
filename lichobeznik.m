function [lich,lich1,lichx]=lichobeznik(fce,min,max,step)

        h=(max-min)/step;                 % šíøka intervalu
       
        fce1=inline(fce);                 % úprava funkce na tvar zpùsobilý pro poèítání
        
        lich1=fce1(min)/2+fce1(max)/2; 

    for lichx=min+h:h:max-h     
        
        lich1=lich1+fce1(lichx);

    end

    lich=lich1*h;
    lichx=min+h:h:max-h;
    lich1=lich1+fce1(lichx);

end