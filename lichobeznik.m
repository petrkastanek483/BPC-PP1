function lich=lichobeznik(fce,min,max,step)

        h=(max-min)/step;                 % šíøka intervalu
       
        fce1=inline(fce);                 % úprava funkce na tvar zpùsobilý pro poèítání
        
        lich=fce1(min)/2+fce1(max)/2; 

    for x=min+h:h:max-h     
        
        lich=lich+fce1(x);

    end

    lich=lich*h;
end