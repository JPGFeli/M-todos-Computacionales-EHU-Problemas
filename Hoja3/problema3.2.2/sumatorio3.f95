program sumatorio2

real :: sum,sumant
integer :: n

n=2
sumant=0
sum=1
do 
	if ((sum-sumant)/=0) then
		sumant=sum
		sum=sum+1.0/(n**2.0)
		n=n+1
	else
		exit 
	end if
end do
print *, "El sumatorio desde j=1 hasta j=",n,"de 1/j^2 es",sum
end program sumatorio2