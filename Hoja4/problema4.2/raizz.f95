program raiznewt

use newton
use function

real :: x
integer :: n

print *, "Escriba n tal que n sea la n-esima raiz negativa"
read *, n
if ((-(n/2)*2+n)==0) then
	x=-(n+12.5)
	call newt(x)
else
	x=-((n+1.0)+11.5)
	call newt(x)
end if

end program raiznewt

