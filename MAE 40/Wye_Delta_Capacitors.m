syms C1 C2 C3 C4 C5 Ca Cb Cc
eqn1 = 1/Ca + 1/Cb == 1/(C1+ 1/(1/C2+ 1/C3))
eqn2 = 1/Ca + 1/Cc== 1/(C2 + 1/(1/C1+1/C3))
eqn3 = 1/Cb + 1/Cc == 1/(1/(1/C1+1/C2) + C3)
A=solve(eqn1,eqn2,eqn3,Ca,Cb,Cc);
B=solve(eqn1,eqn2,eqn3,C1,C2,C3);
Ca=simplify(A.Ca),Cb=simplify(A.Cb),Cc=simplify(A.Cc)
simplify(1/(1/(1/(1/Cb + 1/C4)) + 1/(1/Cc +  1/C5)) + 1/Ca)
C1=simplify(B.C1),C2=simplify(B.C2),C3=simplify(B.C3)
