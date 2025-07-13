function [A] = fig_schwingung();

t = linspace(0,4*pi,4096);
sinus = sin(t);


figure

plot(1:2048,sinus(1:2048),'k',1:2048,sinus(1793:3840),'k:','LineWidth',2),
xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
title('Phasenverschiebung um den Winkel \phi','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[1 512 1024 1536 2048]),
set(gca,'XTickLabel',{'0', 'T/4', 'T/2', '3T/4', 'T'}),
set(gca,'YTick',[-.99999 -.5 0 .5 .99999]),
set(gca,'YTickLabel',{'-A', '-A/2', '0', 'A/2', 'A'}),
axis('tight'),
text(1000,.1,'\leftarrow  \phi \rightarrow','FontSize',11),
grid on

print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_phaseshift.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_phaseshift.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_phaseshift.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_phaseshift.png
