close all
clear all
clc

% y=x*x-4*x+3;
% y(3)=0, y(1)=0;
% y=x*x*x-x*x+2;
a=-200;   b=300;
count=1;

if(y(a)*y(b)>0)
    display('wrong choice of a and b is given');
else
    while((b-a)>=1e-7)  % convergence condition
        count=count+1

        c=(a+b)/2;

        if(y(c)==0)     % if found the exact root
            break;
        end

        if(y(a)*y(c)<0)
            b=c;
        else
            a=c;
        end
    end
end

disp('root of given equation is:');
disp(c);

u=-10:0.1:10;
v=-2:0.1:2;
% v=u.*u-4*u+3;
v=u.*u.*u-u.*u+2;
plot(u,v);
ylim([-10 10]);
grid on;

function [value]=y(x)
%     value=x*x-4*x+3;
    value=x*x*x-x*x+2;
end