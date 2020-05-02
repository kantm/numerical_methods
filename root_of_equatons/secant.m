close all
clear all
clc

a=2;b=6;   % initial guess of interval containing the root
if(y(a)*y(b)>0)
    disp('Bad choices of a & b are provided');
else
    count=1;
    while((b-a)>=1e-7)
        x=b-y(b)*(b-a)/(y(b)-y(a));
        if(y(x)==0) 
            break; 
        end
        
        if(y(a)*y(x)<0)
            b=x;
        else
            a=x;
        end
        count=count+1
    end
end

disp('root of given equation is:');
disp(x);

figure
u=-10:0.1:10;
v=-10:0.1:10;
% v=y(u);
v=u.*u-4.*u+3;
plot(u,v);
grid on;
ylim([-4 10]);

function [value]=y(x)
    value=x*x-4*x+3;
end
    