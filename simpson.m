function sim=simpson(fce,min,max,step)


        h=(max-min)/step;           % šířka intervalu
        
        fce1=inline(fce);           % úprava funkce na tvar způsobilý pro počítání
        
        sim=fce1(min)+fce1(max);  
        
        k=1;                        % pomocný operátor pro pořadí čísel

    for x=min+h:h:max-h           

      if mod(k,2)==0                % posouzení, zda pořadí čísla je sudé

            sim=sim+2*fce1(x);      % výpočet pro sudé pořadí čísla

      else

            sim=sim+4*fce1(x);      % výpočet pro liché pořadí čísla

      end

      k=k+1;                        % přičtení jedničky pro posouzení pořadí čísla
    
    end

    sim=sim*h/3;

end