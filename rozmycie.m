A=double(imread('Mandrill.gif'));
figure(1);colormap(gray(256));image(A); %% obraz wyjsciowy

sigma=20;
%sigma=50;
%sigma=100;

B=A+sigma*randn(512);
figure(2);colormap(gray(256));image(B);


%ROZMYCIE

maska5=[2 4 5 4 2; 4 9 12 9 4; 5 12 15 12 5; 4 9 12 9 4; 2 4 5 4 2]/159;
%dyskretyzacja dzwonu Gaussa
C=conv2(B,maska5);
figure(3);colormap(gray(256));image(C);


maska3=[1,2,1 ; 2,4,2, ; 1,2,1]/16;
D=conv2(B,maska3);
figure(4);colormap(gray(256));image(D);



