--> clear;

--> N=4;

--> h=1/N;

--> for i=1:N
  > if i==N
  > a(i,i)=(1/h)+(1/3);
  > else
  > a(i,i)=(2/h)+(2*h/3);
  > a(i,i+1)=(-1/h)+(h/6);
  > a(i+1,i)=(-1/h)+(h/6);
  > end
  > end

--> 

--> disp('A= ');

  "A= "

--> disp(a);

         column 1 to 3

   20.066667  -9.9833333   0.       
  -9.9833333   20.066667  -9.9833333
   0.         -9.9833333   20.066667
   0.          0.         -9.9833333
   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       

         column 4 to 6

   0.          0.          0.       
   0.          0.          0.       
  -9.9833333   0.          0.       
   20.066667  -9.9833333   0.       
  -9.9833333   20.066667  -9.9833333
   0.         -9.9833333   20.066667
   0.          0.         -9.9833333
   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       

         column 7 to 9

   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       
   0.          0.          0.       
  -9.9833333   0.          0.       
   20.066667  -9.9833333   0.       
  -9.9833333   20.066667  -9.9833333
   0.         -9.9833333   20.066667
   0.          0.         -9.9833333

         column 10

   0.       
   0.       
   0.       
   0.       
   0.       
   0.       
   0.       
   0.       
  -9.9833333
   10.333333

--> for i=1:N
  > x0=0;
  > x(i)=x0+i*h;
  > if i==N
  > b(i)=(1/2)*x(i)*h+2;
  > else
  > b(i)=x(i)*h;
  > end
  > end

--> disp('B= ');

  "B= "

--> disp(b');

         column 1 to 6

   0.01   0.02   0.03   0.04   0.05   0.06

         column 7 to 10

   0.07   0.08   0.09   2.05

--> c=inv(a)*b;

--> eksak=(sinh(x)/cosh(1))+x;

--> plot(x,c,x,eksak);

--> legend('solusi pendekatan', 'solusi eksak');

--> disp('solusi pendekatan: ');

  "solusi pendekatan: "

--> disp('C= ');

  "C= "

--> disp(c);

   0.1370660
   0.2745034
   0.4126870
   0.5519993
   0.6928342
   0.8356007
   0.9807270
   1.1286654
   1.2798959
   1.4349317

--> disp('solusi eksak: ');

  "solusi eksak: "

--> disp('Eksak= ');

  "Eksak= "

--> disp(eksak');

         column 1 to 3

   0.1649135   0.3304767   0.4973457

         column 4 to 7

   0.6661898   0.837698   1.0125861   1.1916034

         column 8 to 10

   1.3755409   1.5652386   1.7615942

--> disp(abs(eksak-c));

   0.0278474
   0.0559733
   0.0846587
   0.1141905
   0.1448638
   0.1769854
   0.2108764
   0.2468755
   0.2853427
   0.3266625
