function [A] = fig_schwebung();

t=linspace(0,.25,12000);
x1 = sin(2*pi*96*t);
x2 = sin(2*pi*88*t);


figure
subplot(311)
plot(t,x1,'k','LineWidth',2),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[0 0.05 0.1 0.15 0.2 0.25]),
set(gca,'XTickLabel',{''}),
set(gca,'YTick',[-1.99999 -1 0 1 1.99999]),
set(gca,'YTickLabel',{'-2A', '-A', '0', 'A', '2A'}),
axis([0 .25 -2 2]),
grid on

subplot(312)
plot(t,x2,'k','LineWidth',2),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
title('Schwingung 2 (88Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[0 0.05 0.1 0.15 0.2 0.25]),
set(gca,'XTickLabel',{''}),
set(gca,'YTick',[-1.99999 -1 0 1 1.99999]),
set(gca,'YTickLabel',{'-2A', '-A', '0', 'A', '2A'}),
axis([0 .25 -2 2]),
grid on

subplot(313)
plot(t,x1+x2,'k','LineWidth',2),
xlabel('Zeit t [s]\rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
title('Überlagerung von Schwingung 1 und 2','FontSize',14,'FontWeight','bold'), 
%set(gca,'XTick',[1 512 1024 1536 2048]),
%set(gca,'XTickLabel',{'0', 'T/4', 'T/2', '3T/4', 'T'}),
set(gca,'YTick',[-1.99999 -1 0 1 1.99999]),
set(gca,'YTickLabel',{'-2A', '-A', '0', 'A', '2A'}),
axis([0 .25 -2 2]),
grid on

% write output file
cOutputFilePath = 'H:\eigdat\private\documents\Uni\Tutorium\TeX\Tutorium.current\New\n_schwebung';
print('-depsc2', '-tiff', '-r600', '-cmyk', cOutputFilePath);
print('-dpng', '-r600', cOutputFilePath);
print('-dtiff', '-r600', cOutputFilePath);
print('-dbitmap', '-r600', cOutputFilePath);

% print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_schwebung.eps
% print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_schwebung.bmp
% print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_schwebung.tif
% print -dpng h:\eigdat\TEX\AlexPrivate\New\n_schwebung.png
