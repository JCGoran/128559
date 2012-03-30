% parameters from NEURON sim
dt=0.0125;  %[ms]
Tstop=6500; %[ms]

t = 0:dt:Tstop; %[ms]
%currents are in [nA]

% synaptic currents targeting WDR
load('vec_ampar_Ad.dat');
load('vec_nmdar_Ad.dat');

load('vec_nk1r_C_WDR.dat');

load('vec_ampar_interneuron.dat');
load('vec_nmdar_interneuron.dat');
load('vec_gabaar_interneuron.dat');

% synaptic currents targeting Interneuron
load('vec_ampar_C.dat');
load('vec_nmdar_C.dat');
load('vec_nk1r_C.dat');



% draw graphs
figure
hold on
title('WDR')
plot(t, -vec_ampar_Ad, 'g');
plot(t, -vec_nmdar_Ad, 'b');
plot(t, -vec_nk1r_C_WDR, 'm');
plot(t, -vec_ampar_interneuron, 'y');
plot(t, -vec_nmdar_interneuron, 'c');
plot(t, -vec_gabaar_interneuron, 'r');
hold off


figure
hold on
title('Interneuron')
plot(t, -vec_ampar_C, 'g');
plot(t, -vec_nmdar_C, 'b');
plot(t, -vec_nk1r_C, 'm');
hold off;