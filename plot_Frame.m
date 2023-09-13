﻿function plot_Frame(FA)
nome = inputname(1);
%plot x
plot3([FA(1,4) FA(1,4)+FA(1,1)] , [FA(2,4) FA(2,4)+FA(2,1)] , [FA(3,4) FA(3,4)+FA(3,1)] , 'b' , 'linewidth' , 2 )
text(FA(1,4)+FA(1,1) , FA(2,4)+FA(2,1) , FA(3,4)+FA(3,1) , ['x_{\{' nome '\}}'])

%ploty
plot3([FA(1,4) FA(1,4)+FA(1,2)] , [FA(2,4) FA(2,4)+FA(2,2)] , [FA(3,4) FA(3,4)+FA(3,2)] , 'r' , 'linewidth' , 2 )
text(FA(1,4)+FA(1,2) , FA(2,4)+FA(2,2) , FA(3,4)+FA(3,2) , ['y_{\{' nome '\}}'])

%plot z
plot3([FA(1,4) FA(1,4)+FA(1,3)] , [FA(2,4) FA(2,4)+FA(2,3)] , [FA(3,4) FA(3,4)+FA(3,3)] , 'g' , 'linewidth' , 2 )
text(FA(1,4)+FA(1,3) , FA(2,4)+FA(2,3) , FA(3,4)+FA(3,3) , ['z_{\{' nome '\}}'])

%posicao origem do frame {A}
plot3(FA(1,4) , FA(2,4) , FA(3,4) ,  'ok' , 'linewidth', 2 , 'markersize' , 5);
text(FA(1,4) , FA(2,4) , FA(3,4) , ['\{' nome '\}'])
end