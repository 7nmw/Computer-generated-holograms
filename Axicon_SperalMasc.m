%Diffraction on Phase Masc

clc
close all
clear all
%������� ���������
x=[-5:0.005:5]*1e-3; %����� 1e-3
y=[-5:0.005:5]*1e-3; %����� 1e-3
[X Y]=meshgrid(x,y);
[phi,r] = cart2pol(X,Y);

% ���������
I_0=1; %��������� ������������ 
g=3*1e-3; % beam spot m
lyam=877e-9; % ������ ����� ����;
j=0.2; % ��������� ��������� ����� ����; 
l=1; % �������������� �����;
k=(2*pi)/lyam; %wavenumber;
r0=0.0004; % ������ ���������� � ��������� �����������



Vax=exp(1i*(-k.*(r.^2)/2/j+k*r0.*r/j+l*phi)); %������� ��������� ��������� ��������
Vsp=exp(1i*(-k.*(r.^2)/2/j+l*phi)); %������� ����������� ���������� ��������� � ������
Vax=(atan2(imag(Vax),real(Vax)));
Vsp=(atan2(imag(Vsp),real(Vsp)));


% mesh(X,Y,(V)); set(gca,'view',[0 90]);grid on; %���������� �����
figure
mesh(X,Y,Vax); set(gca,'view',[0 90]);grid on; 
colormap gray %���������� �����
title('�������� �������') %��������� ������ �������
set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman'); 
xlabel('X (m)') %������� � ��� �� 
ylabel('Y (m)') %������� � ��� ��

figure
mesh(X,Y,Vsp); set(gca,'view',[0 90]);grid on; 
colormap gray %���������� �����
title('�������� �����') %��������� ������ �������
set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman'); 
xlabel('X (m)') %������� � ��� �� 
ylabel('Y (m)') %������� � ��� ��
