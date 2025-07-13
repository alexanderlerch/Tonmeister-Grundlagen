function [A] = fig_bundelung2();

%gamma = interp([1 2.08 3 3.73 4 3],6,2);
A= linspace(1,0,100);
B=1-A;
gamma = 1./(A.^2 + B.^2/3);
dsf = sqrt(gamma);
ree = 1./gamma;
%t = linspace(0,5,36);

figure
plot(B,gamma,'k',B,dsf,'k:',B,ree,'k--','LineWidth',2),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
title('Skalarwerte zur Beschreibung der Richtwirkung','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[0 (1-sqrt(2)/2) .5 (1-10^-.45) (1-10^-.6) 1]),
set(gca,'XTickLabel',{'Kugel (A=1)','Breite Niere','Niere','Superniere','Hyperniere','Acht (A=0)'}),
%set(gca,'YTick',[-1.99999 -1 0 1 1.99999]),
%set(gca,'YTickLabel',{'-2A', '-A', '0', 'A', '2A'}),
legend('Bündelungsgrad','Vergrößerungsfaktor','Random Energy Efficiency',2),
axis([0 1 0 4.5]),
grid on


print -depsc2 c:\eigdat\TEX\AlexPrivate\New\n_bundelung.eps
print -dbitmap c:\eigdat\TEX\AlexPrivate\New\n_bundelung.bmp
print -dtiffnocompression c:\eigdat\TEX\AlexPrivate\New\n_bundelung.tif
print -dpng c:\eigdat\TEX\AlexPrivate\New\n_bundelung.png
