function [A] = fig_sineharm();

t=linspace(0,2*pi,1024);
x0 = sin(t);
x1 = .5*sin(2*t);
x2 = .5*sin(3*t);
x3 = .5*sin(4*t);


figure,
subplot(521)
plot(x0,'k','LineWidth',2),
text(150,1.6,'Sinusschwingung und Oberschwingungen','FontSize',14,'FontWeight','bold'), 
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
set(gca,'XTick',[]),
%set(gca,'XTickLabel',{''}),
set(gca,'YTick',[-0.99999 0 .99999]),
set(gca,'YTickLabel',{'-A', '0', 'A'}),
axis('tight'),
grid on

subplot(523)
plot(x1,'k','LineWidth',2),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[]),
%set(gca,'XTickLabel',{''}),
set(gca,'YTick',[-0.99999 0 .99999]),
set(gca,'YTickLabel',{'-A', '0', 'A'}),
axis([0 length(t) -1 1]),
grid on

subplot(525)
plot(x2,'k','LineWidth',2),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[]),
%set(gca,'XTickLabel',{''}),
set(gca,'YTick',[-0.99999 0 .99999]),
set(gca,'YTickLabel',{'-A', '0', 'A'}),
axis([0 length(t) -1 1]),
grid on

subplot(527)
plot(x3,'k','LineWidth',2),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[]),
%set(gca,'XTickLabel',{''}),
set(gca,'YTick',[-0.99999 0 .99999]),
set(gca,'YTickLabel',{'-A', '0', 'A'}),
axis([0 length(t) -1 1]),
grid on

subplot(529)
plot(x0+x1+x2+x3,'k','LineWidth',2),
xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[0 1024]),
set(gca,'XTickLabel',{'0','T0'}),
set(gca,'YTick',[-1.99999 0 1.99999]),
set(gca,'YTickLabel',{'-2A', '0', '2A'}),
axis([0 length(t) -2 2]),
grid on

%ffts
subplot(522)
f0=fft(x0);
stem(abs(f0(1:5)/512),'filled','k'),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[1 2 3 4 5]),
set(gca,'XTickLabel',{}),
%set(gca,'XTickLabel',{'0','f0', '2f0', '3f0', '4f0'}),
set(gca,'YTick',[0 0.5 .99999]),
set(gca,'YTickLabel',{'0', 'A/2', 'A'}),
axis([1 5 0 1]),
grid on

subplot(524)
f1=fft(x1);
stem(abs(f1(1:5)/512),'filled','k'),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[1 2 3 4 5]),
set(gca,'XTickLabel',{}),
set(gca,'YTick',[0 0.5 .99999]),
set(gca,'YTickLabel',{'0', 'A/2', 'A'}),
axis([1 5 0 1]),
grid on

subplot(526)
f2=fft(x2);
stem(abs(f2(1:5)/512),'filled','k'),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[1 2 3 4 5]),
set(gca,'XTickLabel',{}),
set(gca,'YTick',[0 0.5 .99999]),
set(gca,'YTickLabel',{'0', 'A/2', 'A'}),
axis([1 5 0 1]),
grid on

subplot(528)
f3=fft(x3);
stem(abs(f3(1:5)/512),'filled','k'),
%xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[1 2 3 4 5]),
set(gca,'XTickLabel',{}),
set(gca,'YTick',[0 0.5 .99999]),
set(gca,'YTickLabel',{'0', 'A/2', 'A'}),
axis([1 5 0 1]),
grid on

subplot(5,2,10)
f=fft(x0+x1+x2+x3);
stem(abs(f(1:5)/512),'filled','k'),
xlabel('Frequenz f \rightarrow','FontSize',12,'FontWeight','demi'),
%ylabel('Amplitude','FontSize',12,'FontWeight','demi'),
%title('Schwingung 1 (96Hz)','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[1 2 3 4 5]),
set(gca,'XTickLabel',{'0','f0', '2f0', '3f0', '4f0'}),
set(gca,'YTick',[0 0.5 .99999]),
set(gca,'YTickLabel',{'0', 'A/2', 'A'}),
axis([1 5 0 1.001]),
grid on

% write output file
cOutputFilePath = 'H:\eigdat\private\documents\Uni\Tutorium\TeX\Tutorium.current\New\n_sineharm';
print('-depsc2', '-tiff', '-r600', '-cmyk', cOutputFilePath);
print('-dpng', '-r600', cOutputFilePath);
print('-dtiff', '-r600', cOutputFilePath);
print('-dbitmap', '-r600', cOutputFilePath);

%print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_sineharm.eps
%print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_sineharm.bmp
%print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_sineharm.tif
%print -dpng h:\eigdat\TEX\AlexPrivate\New\n_sineharm.png
