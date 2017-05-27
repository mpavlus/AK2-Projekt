eerns(A,P) =
\\\\\\\\\\   TRZEBA USTALIC BAZE RNS !!!   \\\\\\\\\\\
B=vector(4);
B=[3,7,13,19]; \\ <--- podanie bazy RNS
\\my=vector(length(B));

Mi=vector(length(B));
Mi[1]=B[1]; \\ podanie potrzebne do poniĹĽszej pÄ™tli
for(i=2,length(B), Mi[i]=Mi[i-1]*B[i]);

l=8 ; \\ ilosc bitow operatorow


U1=vector(length(B)); \\ wypelnienie wektora U1 zeramy
U3=P;

V1=vector(length(B)); \\ stworzenie wektora jedynkowego ...
for(i=1,length(B), V1[i]=1); \\ ... uzupelnienie wektora jedynkamy

V3=A ;

\\tu=0; tv=0;
dwa_tu=vector(length(B)); \\ stworzenie wektora jedynkowego ...
for(i=1,length(B), dwa_tu=1); \\ ... uzupelnienie wektora jedynkamy

dwa_tv=vector(length(B)); \\ stworzenie wektora jedynkowego ...
for(i=1,length(B), dwa_tv=1); \\ ... uzupelnienie wektora jedynkamy

Euc(A,P) =
{
[U1,U2,U3]=[0,1,P];
[V1,V2,V3]=[1,0,A];
while(V3>0,
q=floor(U3/V3);
[U1,U2,U3]=[U1,U2,U3]-q*[V1,V2,V3];
\\   [U1,U2,U3] <--->  [V1,V2,V3];
[z1,z2,z3]=[U1,U2,U3];
[U1,U2,U3]=[V1,V2,V3];
[V1,V2,V3]=[z1,z2,z3];
);
printf("[U1,U2,U3] = [%d,%d,%d]", U1,U2,U3);
printf("[V1,V2,V3] = [%d,%d,%d]", V1,V2,V3);
if(U1<0, U1=U1+P);
printf("\n%d\n", U1);
if( (U1*A)%P!=1, printf("bledny wynik - odwrotnosc nie istnieje"));
}





NormalSup(U,tu,u,dwa_tu) = {

u=ApproxSup(U,dwa_tu);
e=ceil(log(length(B))/log(2));

while(u<2^(e+2),
tu=tu+l-e-4;
dwa_tu=(2^(l-e-4))*dwa_tu;
\\u=ApproxSup(U,dwa_tu);
u=u+1; \\ dla testĂłw, iteracja co jeden ponieniewaĹĽ ApproxSup zawsze zwraca ten sam wynik
);

c=0;
while(u<2^(l-3),

tu=tu+1;
u=u<<1;
c=c+1;

)


}

ApproxSup(U,dwa_tu) = {
\\ Precomputed:
\\my=vector(length(B));

Beta= vector(length(B));

Y=vector(length(B));        \\ Y czyli mi, symbol "mikro"

for(i=1, length(B), Beta[i]=ceil(    (2^(2*l) ) /B[i]  )     ); \\ B[i] czyli m(i) - wyrazy bazy 

for(i=1, length(B),
\\?????????????????????????????????
\\Y=( (Mi[i]%B[i])^-1)????
Y[i]=Euc(M/B[i],B[i]) \\M
   );
\\???????????????????????????????????

lam = vector (length(B));
\\lam=cross(cross(U,Y),dwa_tu); \\\
cross(U,Y);
cross(c,dwa_tu);
lam=c;

u=0;
for(i=1,length(B),
u=u+(Beta[i]*lam[i] )%(2^(2*l))


);

u=(floor(u/2^l)+1); \\ ??? u=u div2^l +1

}


cross(a,b) =
{
c=vector(length(B));
for(i=1, length(B),
c[i]=(  (a[i]*b[i])%B[i]  );
   )
}
