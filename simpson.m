function [sim,sim1,simx]=simpson(fce,min,max,step)


        h=(max-min)/step;           % šířka intervalu
        
        fce1=inline(fce);           % úprava funkce na tvar způsobilý pro počítání
        
        sim1=fce1(min)+fce1(max);  
        
        k=1;                        % pomocný operátor pro pořadí čísel

    for simx=min+h:h:max-h           

      if mod(k,2)==0                % posouzení, zda pořadí čísla je sudé

            sim1=sim1+2*fce1(simx);      % výpočet pro sudé pořadí čísla

      else

            sim1=sim1+4*fce1(simx);      % výpočet pro liché pořadí čísla

      end

      k=k+1;                        % přičtení jedničky pro posouzení pořadí čísla
    
    end

    sim=sim1*h/3;
    simx=min+h:h:max-h;
    if mod(k,2)==0                % posouzení, zda pořadí čísla je sudé

            sim1=sim1+2*fce1(simx);      % výpočet pro sudé pořadí čísla

      else

            sim1=sim1+4*fce1(simx);      % výpočet pro liché pořadí čísla

      end

     k=k+1;        

end