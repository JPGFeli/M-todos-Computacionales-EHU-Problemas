program integral

use ode

real :: a,b,c,h
real,dimension(:),allocatable :: t,w
integer :: N,i

a=0.0
b=4.0
h=0.01
N=int((b-a)/h)
c=0.0
allocate(t(0:N))
allocate(w(0:N))
call met_euler(f,a,b,c,h,t,w)
open(unit=100,file="dat.dat",status="old",action="write")
print *, "Euler: ", w(N-1)-w(0)
call rk2(f,a,b,c,h,t,w)
print *, "rk2: ", w(N-1)-w(0)
call rk4(f,a,b,c,h,t,w)
print *, "rk4: ", w(N-1)-w(0)
do i=0,N-1 !por alguna razon en N t y w dan cero
        write(unit=100,fmt=*) t(i), w(i)
end do

close(100)
end program integral
