A=double(imread('Mandrill.gif'));
figure(1);colormap(gray(256));image(A); %% obraz wyjsciowy

sigma=20;
sigma=50;
%sigma=100;

%falka='db8';
%falka='sym4';
falka='bior2.4';

B=A+sigma*randn(512);
figure(2);colormap(gray(256));image(B);


%% FALKI  
[CA,CH,CV,CD]=dwt2(B,falka);
n=512*512;

T=sqrt(2 * sigma^2 * log(n)); % standardowy próg


CH=soft_thresh(CH,T);
CV=soft_thresh(CV,T);
CD=soft_thresh(CD,T);
B=idwt2(CA,CH,CV,CD,falka);
figure(3);colormap(gray(256));image(B);


T=sqrt(2 * sigma^2 * log(n)) / 2 % 2 razy mniejszy próg
CH=soft_thresh(CH,T);
CV=soft_thresh(CV,T);
CD=soft_thresh(CD,T);
B=idwt2(CA,CH,CV,CD,falka);
figure(4);colormap(gray(256));image(B);


T=2*sqrt(2 * sigma^2 * log(n)) % 2 razy większy próg
CH=soft_thresh(CH,T);
CV=soft_thresh(CV,T);
CD=soft_thresh(CD,T);
B=idwt2(CA,CH,CV,CD,falka);
figure(5);colormap(gray(256));image(B);






