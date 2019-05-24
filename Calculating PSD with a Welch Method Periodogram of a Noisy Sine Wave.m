%Bora K�� 20.04.2019 3.1. G�r�lt�l� Bir Sin�s Dalgas�n�n Welch Metodu Periodogram� �le PSD�sinin Hesaplanmas�
clc
close all
clear all

t = 0:1/1000:1; %Zaman vekt�r�
N = length(t); %�rnekleme say�s�
fsig = 50; %Birinci sinyalin frekans�
signal = sin(2*pi*fsig*t); %Birinci sin sinyali
fsig2 = 100; %�kinci sinyalin frekans�
signal2 = sin(2*pi*fsig2*t); %�kinci sin sinyali
noise = 0.25*randn(1,N); %Randn komutu ile olu�turulan rastgele sinyal
x = signal + signal2 + noise; %Sinyallerin toplam�

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