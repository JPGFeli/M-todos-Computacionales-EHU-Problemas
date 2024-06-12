program p

use funcion

real :: xa
integer :: i
real,dimension(50000) :: x,y
xa=0.001
open(unit=100,file="dat.dat",status="old",action="read")
do i=1,50000
        read(unit=100,fmt=*) x(i), y(i)
end do
close(100)

print *, f(0.001,x,y)

end program p
