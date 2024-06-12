program ecuacion

real :: a,b,c,u,v

print *, "Escriba las constantes a, b y c de la ecuación ax^2+bx+c=0 separadas por una coma"
read *, a,b,c
u=(-b)/(2.0*a)
v=b**2-4*a*c
if (v>0) then
	print *, "Las soluciones de la ecuación son: "
	print *, u+v**(0.5)/(2*a)
	print *, u-v**(0.5)/(2*a)
else if (v==0) then
	print *, "La solución de la ecuación es: "
	print *, v
else
	print *, "Las soluciones de la ecuación son: "
	print *, u,"+",abs(v)**(0.5)/(2*a),"i"
	print *, u,"-",abs(v)**(0.5)/(2*a),"i"
end if
end program ecuacion