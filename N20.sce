clc;
clear;
N=20;
h=1/N;
k=1;

for i=1:N
    if i==N
        a(i,i)=(1/h)+k*(h/3);
    else
        a(i,i)=(2/h)+k*(2*h/3);
        a(i,i+1)=(-1/h)+k*(h/6);
        a(i+1,i)=(-1/h)+k*(h/6);
    end
end

a

inv(a)

for i=1:N
x0=0;
x(i)=x0+i*h;
if i==N
  b(i)=((exp(3*(i)*h)*(-3*h+exp(3*h)-1))/(9*h))+((exp(3*(i)*h)*(3*h-1)+exp(3*((i)-1)*h))/(9*h))+1;
else
  b(i)=((exp(3*(i)*h)*(-3*h+exp(3*h)-1))/(9*h))+((exp(3*(i)*h)*(3*h-1)+exp(3*((i)-1)*h))/(9*h));
end
end
b

c=inv(a)*b

eksak=((1/8)-((2.718*(8-2.718+3*exp(3)))/(8*(-1-exp(2)))))*exp(x)+((2.718*(8-2.718+3*exp(3)))/(8*(-1-exp(2))))*exp(-x)-(1/8)*exp(3*x);
plot(x,c,x,eksak);
error=(abs(c-eksak));
error
