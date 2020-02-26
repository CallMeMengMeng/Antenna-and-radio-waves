disp('���������ʲ���EpsilonR�����ĵ������w�����ĵ������t��������b�������״�������迹Z0');
disp(' ');
EpsilonR=input('1.������������EpsilonR����ֵ��');
w=input('2.���ĵ������w����ֵ(mm)��');
t=input('3.���ĵ������t����ֵ(mm)��');
b=input('4.������b����ֵ(mm)��');

if t==0
%    disp('Working...');
    E=w/b;
    if E>=0.35
        we=w;
    else
        we=w-b*(0.35-E)^2;
    end
    Z0=30*pi/sqrt(EpsilonR)*b/(we+0.441*b);
    
else
    x=t/b;
    n=2/(1+(2/3)*x/(1-x));
    A=(x/(2-x))^2;
    B=(0.0796*x/(w/b+1.1*x))^n;
    Delta=x/pi/(1-x)*(1-0.5*log(A+B));
    m=w/(b-t)+Delta;
    C=8/(pi*m);
    Z0=30/sqrt(EpsilonR)*log(1+0.5*C*(C+sqrt(C^2+6.27)));
end

fprintf('��״�������迹Z0Ϊ��%8.5f (Ohms)\n', Z0);