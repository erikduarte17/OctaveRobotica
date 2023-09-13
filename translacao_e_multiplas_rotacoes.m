﻿%teste matrizes rotacao

clc; clear all; close all; % limpa tudo

%% opcoes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%escolher o angulo X
angulo = 5;

%escolher o angulo Y
angulo2 = -5;

%escolher o angulo Z
angulo3 = 50;

%escolher eixo para rodar (1)
letra = 'x'; % escolher entre 'x', 'y' ou 'z'

%escolher eixo para rodar (2)
letra2 = 'y'; % escolher entre 'x', 'y' ou 'z'

%escolher eixo para rodar (3)
letra3 = 'z'; % escolher entre 'x', 'y' ou 'z'

%escolher tamanhos dos eixos para o plot
eixos = 'p'; % escolher entre 'p', 'v'

%escolher visao
visao = 'p'; % escolher entre  'p', 'x', 'y', 'z'

%translacao
d_x = 1; %translacao em x
d_y = -1; %translacao em y
d_z = 2; %translacao em z

% ----------

ang=deg2rad(angulo); %converte de graus em radianos

%frame inicial
F0=eye(4);

%escolhe a matriz de rotacao correnta
switch(letra)
case 'x' %rotacao em x
T = [1 0 0 d_x; 0 cos(ang) -sin(ang) d_y; 0 sin(ang) cos(ang) d_z; 0 0 0 1];
case 'y' %rotacao em y
T = [cos(ang) 0 sin(ang) d_x; 0 1 0 d_y; -sin(ang) 0 cos(ang) d_z; 0 0 0 1];
case 'z' %rotacao em z
T = [cos(ang) -sin(ang) 0 d_x; sin(ang) cos(ang) 0 d_y; 0 0 1 d_z; 0 0 0 1];
endswitch;

%realiza a 1a rotacao
F1 = T * F0;

%realiza a 2a rotacao
ang=deg2rad(angulo2);

switch(letra2)
case 'x' %rotacao em x
T = [1 0 0 0; 0 cos(ang) -sin(ang) 0; 0 sin(ang) cos(ang) 0; 0 0 0 1];
case 'y' %rotacao em y
T = [cos(ang) 0 sin(ang) 0; 0 1 0 0; -sin(ang) 0 cos(ang) 0; 0 0 0 1];
case 'z' %rotacao em z
T = [cos(ang) -sin(ang) 0 0; sin(ang) cos(ang) 0 0; 0 0 1 0; 0 0 0 1];
endswitch;

F1 = F1 * T;

%realiza a 3a rotacao
ang=deg2rad(angulo3);

switch(letra3)
case 'x' %rotacao em x
T = [1 0 0 0; 0 cos(ang) -sin(ang) 0; 0 sin(ang) cos(ang) 0; 0 0 0 1];
case 'y' %rotacao em y
T = [cos(ang) 0 sin(ang) 0; 0 1 0 0; -sin(ang) 0 cos(ang) 0; 0 0 0 1];
case 'z' %rotacao em z
T = [cos(ang) -sin(ang) 0 0; sin(ang) cos(ang) 0 0; 0 0 1 0; 0 0 0 1];
endswitch;

F1 = F1 * T;


%%plot na tela
plot_AparaB(F0,F1); % funcao que plota a operacao
hold on; % segura na tela
plot_Frame(F0); % plota f0
plot_Frame(F1); % plota f1
hold off; % deixa de segurar na tela

%pode mudar os eixos na tela
switch (eixos)
case 'p'
axis equal; %padrao
case 'v'
axis([0 1+1 0 1+1 0 1+1]); % eixos de x(x0 ate xn), y e z
endswitch;

grid on; % ativa a grade
xlabel('x'); ylabel('y'); zlabel('z'); % legenda dos eixos

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