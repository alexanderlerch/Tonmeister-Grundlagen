function [A] = fig_schwingung();

t = linspace(0,6*pi,4096);
sinus = sin(t);


figure
subplot(211),
plot(sinus,'k','LineWidth',2),
xlabel('Zeit t \rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('Schalldruck p','FontSize',12,'FontWeight','demi'),
title('Periodendauer T_P','FontSize',14,'FontWeight','bold'), 
set(gca,'XTick',[]),
set(gca,'YTick',[0]),
axis('tight'),
%axes('LineWidth',0)
%axes('Box','off')
grid on
hold on
arrow3([1365 .95],[1365 .1],'k',30,400)
arrow3([2731 .95],[2731 .1],'k',30,400)
set(gca,'DataAspectRatioMode','auto');
hold off

subplot(212),plot(sinus,'k','LineWidth',2),
xlabel('Abstand von der Schallquelle r \rightarrow','FontSize',12,'FontWeight','demi'),
ylabel('Schalldruck p','FontSize',12,'FontWeight','demi'),
title('Wellenlänge \lambda','FontSize',14,'FontWeight','bold'), 
axis('tight'),
set(gca,'XTick',[]),
set(gca,'YTick',[0]),
grid on
hold on
arrow3([1365 .95],[1365 .1],'k',30,400)
arrow3([2731 .95],[2731 .1],'k',30,400)
set(gca,'DataAspectRatioMode','auto');
hold off

print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_schwingung.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_schwingung.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_schwingung.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_schwingung.png
