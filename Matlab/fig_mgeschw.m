function [A] = fig_mgeschw();

omega=linspace(0.25,2,1000);
omega0 = 1;
r = linspace(.3, 1.3, 3);

eta = omega0*r;

for (j = 1:3)
    y(j,:)= abs(i*omega./(1-(omega/omega0).^2+i*eta(j)*omega/omega0));
end

figure
plot(omega,20*log10(y(1,:)),'k',omega,20*log10(y(2,:)),'k',omega,20*log10(y(3,:)),'k','LineWidth',2),
xlabel('f / f_0','FontSize',12,'FontWeight','demi'),
ylabel('20log(vs/F)','FontSize',12,'FontWeight','demi'),
title('Membrangeschwindigkeit in Abhängigkeit der Frequenz','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[0 .5 1 1.5 2]),
text(.9, 7, '\downarrow \eta','FontSize',12)
%set(gca,'XTickLabel',{''}),
%set(gca,'YTick',[-1.99999 -1 0 1 1.99999]),
%set(gca,'YTickLabel',{'-2A', '-A', '0', 'A', '2A'}),
%axis([0 3 -2 2]),
grid on


print -depsc2 c:\eigdat\TEX\AlexPrivate\New\n_mgeschw.eps
print -dbitmap c:\eigdat\TEX\AlexPrivate\New\n_mgeschw.bmp
print -dtiffnocompression c:\eigdat\TEX\AlexPrivate\New\n_mgeschw.tif
print -dpng c:\eigdat\TEX\AlexPrivate\New\n_mgeschw.png
