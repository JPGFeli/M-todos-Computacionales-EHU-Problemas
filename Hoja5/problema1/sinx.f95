program sinx
use m_interpoli_sp
real,dimension(0:5) :: x,y
real :: xint,yint,dy,pi
real,dimension(100) :: xa,ya
integer :: n,i

pi=acos(-1.0)
n=5
x(0)=0.0
y(0)=0.0
do i=1,5
	x(i)=x(i-1)+pi/2.0	
	y(i)=sin(x(i))
end do

xint=0
do i=1,100
	xint=xint+0.0628
	xa(i)=xint
	call polint_sp(x,y,n,xint,yint,dy)
	ya(i)=yint
end do
open(unit=1,file="datos.dat",status="old",action="write")
do i=1,100
	write(unit=1,fmt=*) xa(i), ya(i)
end do
close(1)
end program sinx
