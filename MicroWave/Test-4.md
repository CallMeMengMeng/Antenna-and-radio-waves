<center><font size=4><b>第四章测试</b></font></center>

- - - 

## 一、填空题

1. $Z_{12}=Z_{21}$、$S_{12}=S_{21}$
2. 阻抗参量、导纳参量、转移参量、传输参量、散射参量
3. $20\lg\frac{1}{|S_{13}|}$、$20\lg\frac{1}{|S_{14}|}$
4. $\frac{P}{2}$
5. $\frac{1}{\sqrt{2}}$、$0$
6. $0$、端口①②接匹配负载时，端口③④理想隔离

## 二、计算题

1. **解**：
根据题设条件，可将该网络拆分为一个传输线单元和两个相同的导纳单元，其归一化的转移矩阵$[a]$分别为
$$
[a_1]=[a_3]=\begin{bmatrix}
	1 & 0 \\
	{\jmath}BZ_0 & 1
\end{bmatrix}
$$
  
$$
[a_2]=\begin{bmatrix}
  \cos(\beta l) & \jmath\sin(\beta l)\\\\
  \jmath\sin(\beta l) & \cos(\beta l)\\\\
\end{bmatrix}
$$
  由条件知，$l=\frac{\lambda_{\rho}}{2}$，于是
$$
[a_2]\big|_{l}=\begin{bmatrix}
	-1 & 0 \\
	0 & -1
\end{bmatrix}
$$
于是级联后微波网络的归一化传递矩阵为
$$
[a]=[a_1][a_2][a_3]=\begin{bmatrix}
	-1 & 0 \\
	-2{\jmath}BZ_0 & -1
\end{bmatrix}
$$
由转换关系可得散射参量为
$$
\begin{cases}
S_{11}=\frac{a+b-c-d}{a+b+c+d}=-\frac{\jmath BZ_0}{1+\jmath BZ_0} \\
S_{12}=\frac{2(ad-bc)}{a+b+c+d}=-\frac{1}{1+\jmath BZ_0} \\
S_{21}=\frac{2}{a+b+c+d}=-\frac{1}{1+\jmath BZ_0} \\
S_{22}=\frac{b+d-a-c}{a+b+c+d}=-\frac{\jmath BZ_0}{1+\jmath BZ_0}
\end{cases}
$$
+ 驻波比$\rho=\frac{1+|S_{11}|}{1-|S_{11}|}=\frac{\sqrt{1+B^2Z_0^2}+BZ_0}{\sqrt{1+B^2Z_0^2}-BZ_0} $.
+ 电压传输系数$T=S_{21}=-\frac{1}{1+\jmath BZ_0}$.
+ 插入衰减$L(dB)=-20\lg|S_{21}|=10\lg(1+B^2Z_0^2) $.
+ 插入相移$\theta=\arctan(T)=\arctan(-BZ_0)$.


2. **解**：
根据题设条件，可将该网络拆分为一个传输线单元、一个阻抗单元和一个导纳单元，其归一化的转移矩阵$[a]$分别为
$$
[a_1]=\begin{bmatrix}
	\cos\theta & \jmath\sin\theta \\
	\jmath\sin\theta & \cos\theta
\end{bmatrix}\bigg|_{\theta}=\begin{bmatrix}
	0 & j \\
	j & 0
\end{bmatrix}
$$
$$
[a_2]=\begin{bmatrix}
	1 & \frac{\jmath X}{Z_0} \\
	0 & 1
\end{bmatrix}
$$
$$
[a_3]=\begin{bmatrix}
	1 & 0 \\
	{\jmath BZ_0} & 1
\end{bmatrix}
$$
级联后微波网络的归一化传递矩阵为
$$
[a]=[a_1][a_2][a_3]=\begin{bmatrix}
-BZ_0 & \jmath \\
\jmath(1-BX) & -\frac{X}{Z_0}
\end{bmatrix}
$$
由转换关系可得散射参量为
$$
\begin{cases}
S_{11}=\frac{a+b-c-d}{a+b+c+d}=\frac{-BZ_0^2+X+{\jmath}BXZ_0}{-BZ_0^2-X+{\jmath}Z_0(2-BX)} \\
S_{12}=\frac{2(ad-bc)}{a+b+c+d}=\frac{2Z_0}{-BZ_0^2-X+{\jmath}Z_0(2-BX)} \\
S_{21}=\frac{2}{a+b+c+d}=\frac{2Z_0}{-BZ_0^2-X+{\jmath}Z_0(2-BX)} \\
S_{22}=\frac{b+d-a-c}{a+b+c+d}=\frac{BZ_0^2-X+{\jmath}BXZ_0}{-BZ_0^2-X+{\jmath}Z_0(2-BX)}
\end{cases}
$$
+ 电压传输系数$T=S_{21}=\frac{2Z_0}{-BZ_0^2-X+{\jmath}Z_0(2-BX)}$.
+ 插入衰减$A=\frac{1}{|S_{21}|^2}=\frac{(BZ_0^2+X)^2+Z_0^2(2-BX)^2}{4Z_0^2} $.
+ 插入相移$\theta=\arctan(T)=\arctan[\frac{Z_0(2-BX)}{BZ_0^2+X}]$.
+ 驻波比$\rho=\frac{1+|S_{11}|}{1-|S_{11}|}=\frac{\sqrt{(BZ_0^2+X)^2+Z_0^2(2-BX)^2 }+\sqrt{(BZ_0^2-X)^2+B^2X^2Z_0^2 } }{\sqrt{(BZ_0^2+X)^2+Z_0^2(2-BX)^2 }-\sqrt{(BZ_0^2-X)^2+B^2X^2Z_0^2 } } $.