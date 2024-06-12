program sing

use mcf_tipos
use funcion
use rk4

real(kind=dp) :: t,h
real(kind=dp),dimension(2) :: y
integer :: i

open(unit=100,file="sing.dat",status="old",action="write")

y(1)=1.0
y(2)=0.0
t=0.0
h=0.01

do i=1,2000
	write(unit=100,fmt=*) t, y(1), y(2)
	call rk4_paso_dp(t,y,f,h)
end do

close(100)

end program sing
