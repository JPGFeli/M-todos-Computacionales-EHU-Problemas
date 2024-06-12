module funcion

public :: f

contains

function f(t,y)  result(f_result)

real,intent(in) :: t,y
real :: f_result

f_result=y

end function f

end module funcion


