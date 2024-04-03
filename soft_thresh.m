function y=soft_thresh(x, T)
y=sign(x).*max(abs(x)-T,0);