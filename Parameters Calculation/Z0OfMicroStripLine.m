disp('根据填充介质参数EpsilonR、微带线宽度w、微带线厚度t、介质层厚度h，计算微带线特性阻抗Z0');
disp(' ');
EpsilonR=input('1.请输入填充介质EpsilonR的数值：');
w=input('2.微带线宽度w的数值(mm)：');
t=input('3.微带线厚度t的数值(mm)：');
h=input('4.介质层厚度h的数值(mm)：');

A=w/h;
if t==0
    if A>1
        q=0.5*(1+(1+12*h/w)^(-0.5));
        EpsilonE=1+q*(EpsilonR-1);
        Za0=119.904*pi/(w/h+2.42-0.44*h/w+(1-h/w)^6);
    else
        B=(1+12*h/w)^(-0.5);
        C=0.041*(1-w/h)^2;
        q=0.5+0.5*(B+C);
        EpsilonE=1+q*(EpsilonR-1);
        Za0=59.952*log(8*h/w+w/(4*h));
    end
else
    E=1/(2*pi);
    if A>E
        we=w+t/pi*(1+log(2*h/t));
        q=0.5*(1+(1+12*h/we)^(-0.5));
        EpsilonE=1+q*(EpsilonR-1);
        Za0=119.904*pi/(we/h+2.42-0.44*h/we+(1-h/we)^6);
    else 
        we=w+t/pi*(1+log(4*pi*w/t));
        B=(1+12*h/we)^(-0.5);
        C=0.041*(1-we/h)^2;
        q=0.5+0.5*(B+C);
        EpsilonE=1+q*(EpsilonR-1);
        Za0=59.952*log(8*h/we+we/(4*h));
    end
end

Z0=Za0/(EpsilonE)^(0.5);

disp('=====RESULT=====');
fprintf('填充因子q为：%8.5f \n', q);
fprintf('有效介电常数EpsilonE为：%8.5f \n', EpsilonE);
fprintf('空气微带线特性阻抗Za0为：%8.5f (Ohms)\n', Za0);
fprintf('微带线特性阻抗Z0为：%8.5f (Ohms)\n', Z0);
