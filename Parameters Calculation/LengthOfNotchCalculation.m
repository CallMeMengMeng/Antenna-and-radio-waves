disp('已知微带线的特性阻抗Z_0、介质的相对介电常数ε_r以及陷波频率，');
disp('求其蚀刻槽长度L(m)和有效介电常数ε_e');
disp(' ');
Z_0=input('请输入微带线特性阻抗的值(Ohms)：');
Epsilon_R=input('请输入介质的相对介电常数的值：');
f_notch=input('请输入陷波频带的中心频率(GHz)：');

c_free=3e8;
m=44-2*Epsilon_R;
a=Epsilon_R-1;
b=Epsilon_R+1;
c=log(pi/2)+log(4/pi)/Epsilon_R;

if Z_0>m
    A=(Z_0*sqrt(2*b))/119.9+a/(2*b)*c;
    Epsilon_E=b/2*(1-a/(2*A*b)*c)^(-2);
    Ratio=(exp(A)/8-1/(4*exp(A)))^(-1);
    
else
    B=59.95*(pi)^2/(Z_0*sqrt(Epsilon_R));
    Ratio=2/pi*((B-1)-log(2*B-1))+a/(pi*Epsilon_R)*(log(B-1)+0.293-0.517/Epsilon_R);
    Epsilon_E=b/2+a/2*(1+10/Ratio)^(-0.555);
end

L=c_free/(2*sqrt(Epsilon_E)*f_notch*1e9);

fprintf('蚀刻槽长度大小为：%8.5f m \n', L);
fprintf('有效介电常数Epsilon_E为：%8.5f \n', Epsilon_E);
