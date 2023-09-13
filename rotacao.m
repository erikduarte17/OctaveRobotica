%teste matrizes rotacao

clc; clear all; close all; % limpa tudo

%% opcoes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%escolher o angulo
angulo = 30;

%escolher eixo para rodar
letra = 'z'; % escolher entre 'x', 'y' ou 'z'

%escolher tamanhos dos eixos para o plot
eixos = 'p'; % escolher entre 'p', 'v'

%escolher visao
visao = 'p'; % escolher entre  'p', 'x', 'y', 'z'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ang=deg2rad(angulo); %converte de graus em radianos

%escolhe a matriz de rotacao correnta
switch(letra)
case 'x' %rotacao em x
T = [1 0 0 0; 0 cos(ang) -sin(ang) 0; 0 sin(ang) cos(ang) 0; 0 0 0 1];
case 'y' %rotacao em y
T = [cos(ang) 0 sin(ang) 0; 0 1 0 0; -sin(ang) 0 cos(ang) 0; 0 0 0 1];
case 'z' %rotacao em z
T = [cos(ang) -sin(ang) 0 0; sin(ang) cos(ang) 0 0; 0 0 1 0; 0 0 0 1];
endswitch;

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