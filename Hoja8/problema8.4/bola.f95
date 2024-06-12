program p

use mcf_tipos
use funcion
use rk4

real(kind=dp) :: t,pi
real(kind=dp),dimension(2) :: y
real(kind=dp) :: h,prec
integer :: i

print *, "Escriba la posición inicial en radianes"
read *, y(1)
y(2)=0.0 !velocidad 
t=0.0
h=0.000001
prec=0.001
pi=acos(-1.0)
do 
	call rk4_paso_dp(t,y,f,h)
	if (abs(y(1)-pi/2.0)<=prec) then
		print *, "El tiempo que tarda en llegar al fondo es", t
		exit
	end if
end do

end program p

