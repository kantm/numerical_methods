close all
clear all
clc

x=1.90;    % initial guess
if(yT(x)==0)
    disp('Bad initial guess!!!!!!!!!!!');
else
    h=(y(x)/yT(x));
    count=1;

    while(abs(h)>=1e-6)
        h=(y(x)/yT(x));  
        x=x-h;
        if(y(x)==0) 
            break;
        end
        count=count+1
    end

    disp('root of given equation is:');
    disp(x);
end

function [value]=y(x)
    value=x*x-4*x+3;
end
function [value2]=yT(x)
    value2=2*x-4;
end