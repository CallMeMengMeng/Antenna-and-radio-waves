disp('���������ʲ���EpsilonR��΢���߿��w��΢���ߺ��t�����ʲ���h������΢���������迹Z0');
disp(' ');
EpsilonR=input('1.������������EpsilonR����ֵ��');
w=input('2.΢���߿��w����ֵ(mm)��');
t=input('3.΢���ߺ��t����ֵ(mm)��');
h=input('4.���ʲ���h����ֵ(mm)��');

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
fprintf('�������qΪ��%8.5f \n', q);
fprintf('��Ч��糣��EpsilonEΪ��%8.5f \n', EpsilonE);
fprintf('����΢���������迹Za0Ϊ��%8.5f (Ohms)\n', Za0);
fprintf('΢���������迹Z0Ϊ��%8.5f (Ohms)\n', Z0);