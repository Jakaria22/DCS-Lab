clc;
clear all;
close all;
fm=input("Enter frequency of message signal: ");
fc=input("Enter frequency of carrier signal: ");
fs=100*fc;
t=0:1/fs:4/fm;
%%============================================================
mt=cos(2*pi*fm*t);
ct=0.5*square(2*pi*fc*t)+0.5;
st=mt.*ct;
tt=[ ];
%single sided PAM
for i=1:length(st);
if st(i)==0;
tt=[tt,st(i)];
else
tt=[tt,st(i)+2];
end
end
figure(1)
%%==============================================
subplot(3,1,1);
plot(t,mt);
title('message signal');
xlabel('timeperiod');
ylabel('amplitude');
%===============================================
subplot(3,1,2);
plot(t,ct);
title('carrier signal');
xlabel('timeperiod');
ylabel('amplitude');
%================================================
subplot(3,1,3);
plot(t,st);
title('PAM signal');
xlabel('timeperiod');
ylabel('amplitude');

