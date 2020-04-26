function [obd,obd1,obdx]=obdelnik(fce,min,max,step)

        h=(max-min)/step;    % šířka intervalu
        
        obd1=0;
        
        fce1=inline(fce);    % úprava funkce na tvar způsobilý pro počítání  
    
    for obdx=min:h:max-h        % rozdělení funkce na obdélníky podle šířky intervalu a mezních hodnot min a max
        
        obd1=obd1+fce1(obdx);     % počítání sumy funkce pro daný počet obdélníků
    
    end
    
    obd=obd1*h;               % násobení šířkou intervalu 
    obdx=min:h:max-h;
    obd1=obd1+fce1(obdx);
end