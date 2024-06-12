program metnewt

use function
use newton

real :: x,precision

print *, "Escriba r"
read *, r
print *, "Escribe el valor a partir del cual se harán las aproximaciones y la precision"
read *, x,precision

call newt(x,precision)

end program metnewt