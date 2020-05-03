<center><font size=4><b>第三章测试</b></font></center>

- - - 

## 一、填空题

1. 准$TEM$、$TEM$、$HE_{11}$
2. $Z_0=\frac{Z_0^a}{\sqrt{\epsilon_e}}$
3. 材料色散、波导色散、模间色散
4. 奇模激励、偶模激励、越大、越小

## 二、简答题

1. 答：
  + 定义：微带线是由沉积在介质基片上的金属导体片(带)和接地板构成的一个特殊传输结构。
  + 特点：可以光刻制作，易与其他无源微波电路和有源微波器件集成，实现集成化。
  + 分类：耦合微带线、悬置微带线、倒置微带线和槽线等。
  
2. 答：
  + 微带线结构图：
  
  ![Microstrip Line](http://www.mwrf.net/uploadfile/2015/0121/20150121054922745.gif "Microstrip Line")
  
  + 各参数含义：
    - $\frac{W}{h}$：导体宽度与介质基片厚度之比。
	- $\frac{t}{h}$：导体厚度与介质基片厚度之比。
	- $Z_0(\Omega)$：微带线的特性阻抗。
	- $\epsilon_e$：有效介电常数。
  
  + 查表知，匹配$50\Omega$时上述参量可能的取值：
	- $Z_0(\Omega)=49.50,\frac{W}{h}=1.0,\frac{t}{h}=0,\epsilon_e=6.49$.
	- $Z_0(\Omega)=49.04,\frac{W}{h}=1.0,\frac{t}{h}=0.01,\epsilon_e=6.50$.
	- $Z_0(\Omega)=49.04,\frac{W}{h}=0.9,\frac{t}{h}=0.10,\epsilon_e=6.51$.

## 三、计算题

1. 解：
  - 根据题设条件可知，纤芯和包层的折射率分别为$n_1=1.51、n_2=1.50$，由此相对折射率差为$$\Delta=\frac{n_1-n_2}{n_1}\approx0.0066$$
  于是其数值孔径为$$NA=n_1\sqrt{2\Delta}\approx0.1735$$
  又$NA=\sin(\theta)$，得$\theta=\arcsin(NA)=9.99^{\circ}$，所以入射角范围为$[-9.99^{\circ},9.99^{\circ}]$.
  - 根据光纤单模工作条件$$D<\frac{2.405\lambda}{\pi\sqrt{n_1^2-n_2^2}}$$单模传输时工作波长需要满足$$\lambda>\frac{D\pi\sqrt{n_1^2-n_2^2}}{2.405}$$所以工作频率为$$f<\frac{c}{\lambda}=\frac{2.405c}{D\pi\sqrt{n_1^2-n_2^2}}\approx26.47THz$$
