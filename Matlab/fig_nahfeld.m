function [A] = fig_nahfeld();

r = linspace(0.01,1,100);
lambda = 1; 
v(1,:)= 20*log10(1./r.*sqrt(1+(lambda./r).^2));
lambda = .1; 
v(2,:)= 20*log10(1./r.*sqrt(1+(lambda./r).^2));
figure
plot(r,v(1,:),'k',r,v(2,:),'k--','LineWidth',2),
xlabel('Entfernung r \rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('Schallschnelle v','FontSize',12,'FontWeight','demi'),
title('Abfall des Betrags der Schnelle über der Entfernung','FontSize',14,'FontWeight','bold'), 
%set(gca,'XTick',[0 (1-sqrt(2)/2) .5 (1-10^-.45) (1-10^-.6) 1]),
set(gca,'XTickLabel',{''}),
%set(gca,'YTick',[-1.99999 -1 0 1 1.99999]),
set(gca,'YTickLabel',{''}),
legend('große Wellenlänge','kleine Wellenlänge'),
%axis([0 1 0 4.5]),
grid on


print -depsc2 c:\eigdat\TEX\AlexPrivate\New\n_nahfeld.eps
print -dbitmap c:\eigdat\TEX\AlexPrivate\New\n_nahfeld.bmp
print -dtiffnocompression c:\eigdat\TEX\AlexPrivate\New\n_nahfeld.tif
print -dpng c:\eigdat\TEX\AlexPrivate\New\n_nahfeld.png
