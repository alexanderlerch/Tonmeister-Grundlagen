function [A] = fig_nahbesprech();

f = linspace(10,50000,10000);
lambda = 340./f;
d = .025;
r = linspace(.01,100,10);
for i = 1:10
    deltap(i,:) = 20*log10((d)/(r(i)*(r(i)+d))+1-(cos(2*pi*d./lambda)));
end


figure
semilogx(f,(deltap)),
xlabel('Frequenz f \rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('\Delta p/p','FontSize',12,'FontWeight','demi'),
title('Frequenzgang des Druckgradientenempfängers','FontSize',14,'FontWeight','bold'), 
%set(gca,'XTickLabel',{'10Hz', '100Hz','1kHz','10kHz'}),
%set(gca,'YTick',[log2(.001) log2(.01) log2(.1) 0 1]),
%set(gca,'YTickLabel',{'0.001','0.01','0.1','1','2'}),
%axis([10 50000 -15 1.2]),
grid on


print -depsc2 c:\eigdat\TEX\AlexPrivate\New\n_nahbesprech.eps
print -dbitmap c:\eigdat\TEX\AlexPrivate\New\n_nahbesprech.bmp
print -dtiffnocompression c:\eigdat\TEX\AlexPrivate\New\n_nahbesprech.tif
print -dpng c:\eigdat\TEX\AlexPrivate\New\n_nahbesprech.png
