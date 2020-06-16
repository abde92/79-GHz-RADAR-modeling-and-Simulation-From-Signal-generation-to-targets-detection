function x=ShapePulse_chirp(t,cst1,cst2,A)
%x = mychirp(t,f0,t1,f1) generates samples of a linear swept-frequency
%(chirp)

     % cst1=fc-BW/2    
     % cst2=BW/2dt 
     % A: Amplitude 
     
    x=A*cos(2*pi*(cst1.*t+cst2*t.^2));  

end

