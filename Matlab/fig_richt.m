function [A] = fig_richt();

theta   = linspace(0,2*pi,360);
kugel   = ones(1,360);
acht    = cos(theta);
niere   = .5 * (kugel + acht);
bniere  = 1/(1+.4142) * (kugel + .4142*acht);
sniere  = 1/(1+1.7227) * (kugel + 1.7227*acht);
hniere  = 1/(1+2.9811) * (kugel + 2.9811*acht);

figure
mypolar(theta, abs(kugel),'k'),
view(90,-90),
ylabel('Kugel','FontSize',14,'FontWeight','bold'), 
print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_rc_kugel.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_rc_kugel.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_rc_kugel.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_rc_kugel.png

figure
mypolar(theta, abs(acht),'k'),
view(90,-90),
ylabel('Acht','FontSize',14,'FontWeight','bold'), 
print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_rc_acht.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_rc_acht.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_rc_acht.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_rc_acht.png

figure
mypolar(theta, abs(niere),'k'),
view(90,-90),
ylabel('Niere','FontSize',14,'FontWeight','bold'), 
print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_rc_niere.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_rc_niere.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_rc_niere.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_rc_niere.png

figure
mypolar(theta, abs(bniere),'k'),
view(90,-90),
ylabel('Breite Niere','FontSize',14,'FontWeight','bold'), 
print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_rc_bniere.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_rc_bniere.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_rc_bniere.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_rc_bniere.png

figure
mypolar(theta, abs(sniere),'k'),
view(90,-90),
ylabel('Superniere','FontSize',14,'FontWeight','bold'), 
print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_rc_sniere.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_rc_sniere.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_rc_sniere.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_rc_sniere.png

figure
mypolar(theta, abs(hniere),'k'),
view(90,-90),
ylabel('Hyperniere','FontSize',14,'FontWeight','bold'), 
print -depsc2 h:\eigdat\TEX\AlexPrivate\New\n_rc_hniere.eps
print -dbitmap h:\eigdat\TEX\AlexPrivate\New\n_rc_hniere.bmp
print -dtiffnocompression h:\eigdat\TEX\AlexPrivate\New\n_rc_hniere.tif
print -dpng h:\eigdat\TEX\AlexPrivate\New\n_rc_hniere.png


