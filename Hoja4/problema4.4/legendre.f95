module legendre

public :: f

contains

recursive function f(x,n) result(f_result)
	real,intent(in) :: x
	integer, intent(in) :: n
	real :: f_result
	if (n==-1) then
		f_result=0
	else if (n==0) then
		f_result=1
	else
		f_result=(2*n-1)*x*f(x,n-1)/n
		f_result=f_result-(n-1)*f(x,n-2)/n
	end if
end function f

end module legendre

