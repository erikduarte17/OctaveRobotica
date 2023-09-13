﻿%teste matrizes translacao

clc; clear all; close all;

%escolher translacao
d_x = 1;
d_y = 0;
d_z = 2;

%matriz de transformacao
T = [1 0 0 d_x; 0 1 0 d_y; 0 0 1 d_z; 0 0 0 1];

%frame inicial
F0=eye(4);

% realiza a translacao
F1 = T * F0;

%%plot na tela
plot_AparaB(F0,F1); % funcao que plota a operacao
hold on; % segura na tela
plot_Frame(F0); % plota f0
plot_Frame(F1); % plota f1
hold off; % deixa de segurar na tela

%axis equal;
axis([0 (d_x+2) 0 (d_y+2) 0 (d_z+2)]);
grid on; % ativa a grade
xlabel('x'); ylabel('y'); zlabel('z'); % legenda dos eixos

%escolher a visao
view(-37.5, 30); %padrao
%view(0, 90); %z saindo do quadro
%view(90,0); %x saindo do quadro
%view(0,180); %y saindo do quadro