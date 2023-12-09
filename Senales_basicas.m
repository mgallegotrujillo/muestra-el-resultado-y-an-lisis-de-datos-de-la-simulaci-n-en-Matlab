%%
clear all
clc
n=-0:0.1:10;
u=heaviside(n);
u(1,1)=1;
%s=(3*(0.2.^n)-2*((-0.1).^n)+0.1*(cos(pi/3)+i*(sin(pi/3).^n))+0.1*(cos(pi/3)-i*(sin(pi/3).^n)))
for w = 0:5
R=rand(1,10)

s=(R(1)*(R(2).^n)-R(3)*((-R(4)).^n)+R(5)*(cos(pi/R(6))+i*(sin(pi/R(7)).^n))+R(8)*(cos(pi/R(9))-i*(sin(pi/R(10)).^n)));
xn=s.*u;
stem(n,xn);

hold on;
end


%% 
clear all
clc
%Señal exponencial compleja

n=0:2:9;
a={};
rho=1;

for theta = 0:pi/4:2*pi

[x,y] = pol2cart(theta,rho);
A=x+y*i
xn=(A.^n);
stem(n,real(xn))
title(['(A^n)u Parte real,|A|=1 y pi/2<A<pi']);a=[a,['theta=',num2str(theta)]];legend(a);
hold on;
end
figure
a={};
for  theta = 0:pi/4:2*pi

[x,y] = pol2cart(theta,rho);
A=x+y*i
xn=(A.^n);
stem(n,imag(xn))
title(['(A^n)u Parte imaginaria,|A|=1 y pi/2<A<pi']);a=[a,['theta=',num2str(theta)]];legend(a);
hold on;
end


%%
clear all
clc

figure

n= -10:1:10;
a={}
for A = 1:0.2:2
xn=heaviside(n);
xn(1,11)=1
stem(n,xn);
title(['(A^n)u(n), 1<A']);a=[a,['A=',num2str(A)]];legend(a);
hold on;
end

