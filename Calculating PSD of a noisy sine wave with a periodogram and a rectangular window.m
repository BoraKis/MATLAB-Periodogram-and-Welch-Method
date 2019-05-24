%Bora KIÞ 21.04.2019 3.2. Gürültülü Bir Sinüs Dalgasýnýn Periodogram ve Dikdörtgen Pencere Ýle PSD’sinin Hesaplanmasý
clc
close all
clear all
t = 0:1/1000:2; %Zaman vektörü
N = length(t); %Örnekleme sayýsý
fsig = 50; %Birinci sinyalin frekansý
signal = sin(2*pi*fsig*t); %Birinci sin sinyali
fsig2 = 140; %Ýkinci sinyalin frekansý
signal2 = sin(2*pi*fsig2*t); %Ýkinci sin sinyali
noise = 2*randn(1,N); %Randn komutu ile oluþturulan rastgele sinyal
x = signal + signal2 + noise; %Sinyallerin toplamý

p1x = periodogram(x,rectwin(length(x)),[],64);
subplot(4,1,1);
plot(p1x);
xlabel('Frequency (Hz)');
ylabel('PSD');

p2x = periodogram(x,rectwin(length(x)),[],128);
subplot(4,1,2);
plot(p2x);
xlabel('Frequency (Hz)');
ylabel('PSD');

p3x = periodogram(x,rectwin(length(x)),[],256);
subplot(4,1,3);
plot(p3x);
xlabel('Frequency (Hz)');
ylabel('PSD');

p4x = periodogram(x,rectwin(length(x)),[],512);
subplot(4,1,4);
plot(p4x);
xlabel('Frequency (Hz)');
ylabel('PSD');