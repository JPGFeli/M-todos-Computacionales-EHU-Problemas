program sumatorio

integer :: j,n
real :: sum

print *, "Escriba el límite superior del sumatorio de 1/j^2"
read *, n
sum=0
do j=1,n
	sum=sum+1.0/(j**2.0)
end do
print *, "El sumatorio desde j=1 hasta j=",n,"de 1/j^2 es",sum
end program sumatorio