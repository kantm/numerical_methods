close all
clear all
clc

x=3:1:9;
% y(x);
y=[4.8 8.4 14.5 23.6 36.2 52.8 73.9];

for i=1:(length(y)-1)
    yF(i)=del(y);
    y=yF(i);
end


% y1=del(y);
% y2=del(y1);
% y3=del(y2);
% y4=del(y3);
% y5=del(y4);
% y6=del(y5);

% function [value] = y(x)
%     value = x.*x-4.*x+3;
% end

function [value] = del(y)
    for i=1:(length(y)-1)
        value(i)=y(i+1)-y(i);
    end
end