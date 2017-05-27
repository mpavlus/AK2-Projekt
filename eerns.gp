/*
eerns(A,P) =
\\\\\\\\\\   TRZEBA USTALIC BAZE RNS !!!   \\\\\\\\\\\
B=[3,7,13,19]; \\ <--- podanie bazy RNS
M_od_i=vector(length(B));
M_od_i[1]=B[1]; \\ podanie potrzebne do poniższej pętli
M_od_i=for(i=2,length(B), M_od_i[i]=M_od_i[i-1]*B[i]);
l= ; \\ ilosc bitow operatorow 
U1=vector(length(A)); \\ wypelnienie wektora U1 zerami
U3=P;
V1=vector(length(A)); \\ stworzenie wektora jedynkowego ...
for(i=1,length(A), V1[i]=1); \\ ... uzupelnienie wektora jedynkami
V3=A;
tu=0; tv=0;
dwa_tu=vector(length(A)); \\ stworzenie wektora jedynkowego ...
for(i=1,length(A), dwa_tu=1); \\ ... uzupelnienie wektora jedynkami

dwa_tv=vector(length(A)); \\ stworzenie wektora jedynkowego ...
for(i=1,length(A), dwa_tv=1); \\ ... uzupelnienie wektora jedynkami

NormalSup(U3,tu,u,dwa_tu) = {
}
ApproxSup(U,dwa_tu) = {
\\ Precomputed:
for(i=1, length(A), B[i]=ceil((2^2*l)/M[i])); \\ baza musi wiec byc podana
for(i=1, length(A), mi[i]=(  (M_od_i)%B[i)^-1  ])
\\ M_od_i jest zdefiniowane na poczatku programu
lambda=U
*/
B=[3,7,13,19]; \\ <--- podanie bazy RNS
cross(a,b) =
{
c=vector(length(B));
for(i=1, length(B), 
c[i]=(  (a[i]*b[i])  );
   )
}
