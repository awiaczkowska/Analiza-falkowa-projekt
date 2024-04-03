A=double(imread('Mandrill.gif'));
figure(1);colormap(gray(256));image(A); %% obraz wyjsciowy bez szumu


%ZASZUMIANIE
B1=A+20*randn(512);
roznica=(A-B1).^2; MSE=1/(512^2)*sum(sum(roznica)); PSNR=10*log10(max(max(A))^2/MSE)
figure(2);colormap(gray(256));image(B1);

B2=A+50*randn(512);
roznica=(A-B2).^2;
MSE=1/(512^2)*sum(sum(roznica));
PSNR=10*log10(max(max(A))^2/MSE)
figure(3);colormap(gray(256));image(B2);


B3=A+100*randn(512);
roznica=(A-B3).^2;
MSE=1/(512^2)*sum(sum(roznica));
PSNR=10*log10(max(max(A))^2/MSE)
figure(4);colormap(gray(256));image(B3);