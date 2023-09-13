﻿%teste matrizes rotacao

clc; clear all; close all; % limpa tudo

%% opcoes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%escolher o angulo
ang=deg2rad(10); %converte de graus em radianos

%escolhe a matriz de rotacao correnta
T = [1 0 0 0; 0 cos(ang) -sin(ang) 0; 0 sin(ang) cos(ang) 0; 0 0 0 1];%x
%T = [cos(ang) 0 sin(ang) 0; 0 1 0 0; -sin(ang) 0 cos(ang) 0; 0 0 0 1];%y
%T = [cos(ang) -sin(ang) 0 0; sin(ang) cos(ang) 0 0; 0 0 1 0; 0 0 0 1];%z

%cria o frame inicial 
F0=eye(4); %frame inicial

%realiza a rotacao
F1 = T * F0;

%%plot na tela
plot_AparaB(F0,F1); % funcao que plota a operacao
hold on; % segura na tela
plot_Frame(F0); % plota f0
plot_Frame(F1); % plota f1
hold off; % deixa de segurar na tela

%pode mudar os eixos na tela
axis equal; %padrao
%axis([0 1+1 0 1+1 0 1+1]); % eixos de x(x0 ate xn), y e z

grid on; % ativa a grade
xlabel('x'); ylabel('y'); zlabel('z'); % legenda dos eixos

%escolher a visao
view(-37.5, 30); %padrao
%view(0, 90); %z saindo do quadro
%view(90,0); %x saindo do quadro
%view(0,180); %y saindo do quadro
