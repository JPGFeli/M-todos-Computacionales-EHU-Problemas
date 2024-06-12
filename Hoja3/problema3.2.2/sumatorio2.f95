program sumatorio2

real :: sum
integer :: n,a

print *, "Escriba el límite superior del sumatorio de 1/j^2"
read *, n
a=n
sum=0
do 
	if (n/=1) then
		sum=sum+1.0/(real(n)**2.0)
		n=n-1
	else
		sum=sum+1.0
		exit 
	end if
end do
print *, "El sumatorio desde j=1 hasta j=",a,"de 1/j^2 es",sum
end program sumatorio2