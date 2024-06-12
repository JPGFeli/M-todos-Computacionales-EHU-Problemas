program tiempo

use funcion
use gauss_legendre_dp
use mcf_tipos

real(kind=dp) :: t,pi,a
integer :: n,i
real(kind=dp),dimension(90) :: v,w
n=50
pi=acos(-1.0)
a=pi/2.0
print *, "Radio"
R=1.0
print *, "Ángulo inicial"
theta=0.0
open(unit=1,file="dat.dat",status="old",action="write")
do i=1,91
	call qgauss(f,theta,a,t,n)
	write(unit=1,fmt=*) theta, t
	theta=i*pi/180.0
end do
close(1)



end program tiempo

