a= [0, 0.8,0.6]; 
b=[0.2, 1,0.8];
c=[0, 0.4,1];

r1=[min(0, 0.2), min(0, 1), min(0, 0.8)];
r2=[min(0.8, 0.2), min(0.8, 1), min(0.8, 0.8)];
r3=[min(0.6, 0.2), min(0.6, 1), min(0.6, 0.8)];

A=[r1;r2;r3]; 
disp('A*B') ;
disp(A);
acomp=1-a;
disp ("A'*C") ;

r11=[min(1, 0), min(1, 0.4), min(1, 1)]; 
r22=[min(0.2, 0), min(0.2, 0.4), min(0.2, 1)];
r33=[min(0.4, 0), min(0.4, 0.4), min(0.4, 1)];

B=[r11; r22; r33]; 
disp (B) ;

disp("If then Else Statement ");

C=max(A,B);

disp(C) ;