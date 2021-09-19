clc; clear all
function r = f(x)
//  argument r of f(x)
r=x/2-1;
endfunction

x=2;
while norm(x-f(x))>0.00001 then
    x= f(x);
end
disp(x);

exit
// function r=f(x)