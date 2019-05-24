%Bora KI� 21.04.2019 3.2. G�r�lt�l� Bir Sin�s Dalgas�n�n Periodogram ve Dikd�rtgen Pencere �le PSD�sinin Hesaplanmas�
clc
close all
clear all
t = 0:1/1000:2; %Zaman vekt�r�
N = length(t); %�rnekleme say�s�
fsig = 50; %Birinci sinyalin frekans�
signal = sin(2*pi*fsig*t); %Birinci sin sinyali
fsig2 = 140; %�kinci sinyalin frekans�
signal2 = sin(2*pi*fsig2*t); %�kinci sin sinyali
noise = 2*randn(1,N); %Randn komutu ile olu�turulan rastgele sinyal
x = signal + signal2 + noise; %Sinyallerin toplam�

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