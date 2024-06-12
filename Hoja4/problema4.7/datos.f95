program datos	

use modbessel

real,dimension(0:1000) :: x,y
integer :: i,n

n=0
x(0)=-5.01
do i=1,1000
	x(i)=x(i-1)+0.01
	y(i)=bessel(x(i),n)
end do
open(unit=1,file="datos.dat",status="old",action="write")
do i=1,1000
	write(unit=1,fmt=*) x(i), y(i)
end do
close(1)
end program datos