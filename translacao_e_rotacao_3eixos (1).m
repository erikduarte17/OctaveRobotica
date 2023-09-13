﻿%teste matrizes translacao

clc; clear all; close all; % limpa tudo

% -----------------

%% opcoes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%escolher tamanhos dos eixos para o plot
eixos = 'p'; % escolher entre 'p', 'v'

%escolher visao
visao = 'p'; % escolher entre  'p', 'x', 'y', 'z'

    #plot AparaB
    d_x = 1; %translacao em x
    d_y = 1; %translacao em y
    d_z = 1; %translacao em z
    
    %escolher eixo para rodar A para B
    letra = 'x'; % escolher entre 'x', 'y' ou 'z'
    
    %escolher o angulo
    angulo = 30;
    ang=deg2rad(angulo);

%escolhe a matriz de rotacao correnta
switch(letra)
case 'x' %rotacao em x
T = [1 0 0 d_x; 0 cos(ang) -sin(ang) d_y; 0 sin(ang) cos(ang) d_z; 0 0 0 1];
case 'y' %rotacao em y
T = [cos(ang) 0 sin(ang) d_x; 0 1 0 d_y; -sin(ang) 0 cos(ang) d_z; 0 0 0 1];
case 'z' %rotacao em z
T = [cos(ang) -sin(ang) 0 d_x; sin(ang) cos(ang) 0 d_y; 0 0 1 d_z; 0 0 0 1];
endswitch;

%frame inicial
F0=eye(4);

% realiza a translacao e rotacao A para B
F1 = T * F0;


    #plot BparaC
    d_x = 1; %translacao em x
    d_y = 1; %translacao em y
    d_z = 1; %translacao em z

    %escolher eixo para rodar A para B
    letra = 'z'; % escolher entre 'x', 'y' ou 'z'
    
    %escolher o angulo
    angulo = 25;
    ang=deg2rad(angulo);

%escolhe a matriz de rotacao correnta
switch(letra)
case 'x' %rotacao em x
T = [1 0 0 d_x; 0 cos(ang) -sin(ang) d_y; 0 sin(ang) cos(ang) d_z; 0 0 0 1];
case 'y' %rotacao em y
T = [cos(ang) 0 sin(ang) d_x; 0 1 0 d_y; -sin(ang) 0 cos(ang) d_z; 0 0 0 1];
case 'z' %rotacao em z
T = [cos(ang) -sin(ang) 0 d_x; sin(ang) cos(ang) 0 d_y; 0 0 1 d_z; 0 0 0 1];
endswitch;

% realiza a translacao e rotacao de B paca C
F2 = T * F1;

%%plot na tela
plot_BparaC(F1,F2);
hold on; % segura na tela
plot_AparaB(F0,F1);
plot_Frame(F0); % plota f0
plot_Frame(F1); % plota f1
plot_Frame(F2);
hold off; % deixa de segurar na tela

%ëscolher a visao
switch (visao)
case 'p'
view(-37.5, 30); %padrao
case 'z'
view(0, 90); %z saindo do quadro
case 'x'
view(90,0); %x saindo do quadro
case 'y'
view(0,180); %y saindo do quadro
endswitch;
