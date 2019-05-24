%Bora Kýþ 20.04.2019 3.1. Gürültülü Bir Sinüs Dalgasýnýn Welch Metodu Periodogramý Ýle PSD’sinin Hesaplanmasý
clc
close all
clear all

t = 0:1/1000:1; %Zaman vektörü
N = length(t); %Örnekleme sayýsý
fsig = 50; %Birinci sinyalin frekansý
signal = sin(2*pi*fsig*t); %Birinci sin sinyali
fsig2 = 100; %Ýkinci sinyalin frekansý
signal2 = sin(2*pi*fsig2*t); %Ýkinci sin sinyali
noise = 0.25*randn(1,N); %Randn komutu ile oluþturulan rastgele sinyal
x = signal + signal2 + noise; %Sinyallerin toplamý

pxx = pwelch(x,hamming(length(x)),[],64,256); %Welch metodu
subplot(4,1,1);
plot(pxx)
xlabel('Frequency (Hz)');
ylabel('PSD');

pxx2 = pwelch(x,hamming(length(x)),[],128,256); %Welch metodu
subplot(4,1,2);
plot(pxx2);
xlabel('Frequency (Hz)');
ylabel('PSD');

pxx3 = pwelch(x,hamming(length(x)),[],256,256); %Welch metodu
subplot(4,1,3);
plot(pxx3);
xlabel('Frequency (Hz)');
ylabel('PSD');

pxx4 = pwelch(x,hamming(length(x)),[],512,256); %Welch metodu
subplot(4,1,4);
plot(pxx4);
xlabel('Frequency (Hz)');
ylabel('PSD');