function obd=obdelnik(fce,min,max,step)

        h=(max-min)/step;    % šířka intervalu
        
        obd=0;
        
        fce1=inline(fce);    % úprava funkce na tvar způsobilý pro počítání  
    
    for x=min:h:max-h        % rozdělení funkce na obdélníky podle šířky intervalu a mezních hodnot min a max
        
        obd=obd+fce1(x);     % počítání sumy funkce pro daný počet obdélníků
    
    end
    
    obd=obd*h;               % násobení šířkou intervalu 

end