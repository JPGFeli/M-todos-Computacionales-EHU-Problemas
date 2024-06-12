program p

use funcion
use euler

real :: a,b,c,h
real,dimension(:),allocatable :: t,w
integer :: N,i
character(len=9),dimension(1) :: file1

a=-2.0
b=2.5
c=1.0
h=0.01
N=int((b-a)/h)
allocate(t(0:N))
allocate(w(0:N))
call met_euler(f,a,b,c,h,t,w)

open(unit=100,file="dat2.dat",status="old",action="write")
do i=0,N
	write(unit=100,fmt=*) t(i), w(i)
end do

close(100)

end program p

