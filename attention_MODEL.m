clc
clear;
close all;

%% '================ Written by Farhad AbedinZadeh ================'

itermax=100;
finalits=30;
finits=itermax-(finalits-1);


B=5.821;
w1=1.487;
w2=0.2223;

for A=5:0.005:30
    x=0.4;
    xo=x;
    
    for n=2:itermax
        xn=B*tanh(w1*xo)-A*tanh(w2*xo);
        x=[x xn];
        xo=xn;
        
    end
    
    plot(A*ones(finalits),x(finits:itermax),'b.');
    axis tight;ylabel('Fixed points');xlabel('Control parameter=K')
    
    hold on
end
% exportgraphics(gca,'attention.png','ContentType','image','Resolution',720)
