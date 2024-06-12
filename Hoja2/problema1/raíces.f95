program raices

complex :: z,w
real :: a,phi,n,i,pi,b,c

print *, "Introduzca entre paréntesis y separados por una coma la parte real y la parte imaginaria del número complejo"
read *, z
print *, "Introduzca el número de raíces que desea hallar de dicho número"
read *, n
a=real(z)**2.0+aimag(z)**2.0
a=a**(1.0/2.0)
a=a**(1.0/n)
pi=acos(-1.0)
if (aimag(z)==0 .and. real(z)<0) then
	phi=-pi
else if (aimag(z)<0 .and. real(z)<0) then
	phi=-atan(aimag(z)/real(z))
else
	phi=atan(aimag(z)/real(z))
end if
i=0
print *, "Las ráices de ",z," son:"
do
	if (i<=(n-1)) then
		b=a*cos((phi+2.0*pi*i)/n)
		c=a*sin((phi+2.0*pi*i)/n)
		w=cmplx(b,c)
		print *, w
		i=i+1
	else
		exit
	end if
end do
end program raices