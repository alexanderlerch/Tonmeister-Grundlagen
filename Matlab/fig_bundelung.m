function [A] = fig_bundelung();

gamma = interp([1 2.08 3 3.73 4 3],6,2);
dsf = sqrt(gamma);
ree = 1./gamma;
t = linspace(0,5,36);

figure
plot(t,gamma,'k',t,dsf,'k:',t,ree,'k--','LineWidth',2),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
title('Skalarwerte zur Beschreibung der Richtwirkung','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[0 1 2 3 4 5]),
set(gca,'XTickLabel',{'Kugel','Breite Niere','Niere','Superniere','Hyperniere','Acht'}),
%set(gca,'YTick',[-1.99999 -1 0 1 1.99999]),
%set(gca,'YTickLabel',{'-2A', '-A', '0', 'A', '2A'}),
legend('Bündelungsgrad','Vergrößerungsfaktor','Random Energy Efficiency',2),
axis([0 5 0 4.5]),
grid on


print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_bundelung.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_bundelung.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_bundelung.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_bundelung.png
