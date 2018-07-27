display('0.Kerbol, 1.Kerbin, 2.Moho, 3.Eve, 4.Duna, 5.Dres, 6.Jool, 7.Eeloo, 8.Gilly, 9.Mun, 10.Minmus, 11.Ike, 12.Laythe, 13.Vall, 14.Tylo, 15.Bop, 16.Pol')
Target=input('Target=');
format long g;
Radius=[261600000,600000,250000,700000,320000,138000,6000000,210000,13000,200000,60000,130000,500000,300000,600000,65000,44000];
r=Radius(Target+1);
o=input('Planned Orbit Height=(m)');
n=round(input('Satellite Count='));
a1=nthroot(power((n-1)/n,2)*power(o+r,3),3);
h11=2*a1-o-2*r;
h12=o;
a2=nthroot(power((n+1)/n,2)*power(o+r,3),3);
h21=o;
h22=2*a2-o-2*r;
h=[h11,h21;h12,h22]
