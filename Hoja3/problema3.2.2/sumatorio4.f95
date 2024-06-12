program sumatorio4

real :: sum
integer :: jmax,j

sum=0
jmax=ceiling(1.0/epsilon(sum))
do j=jmax,1,-1
	sum=sum+1.0/(real(j)**2.0)
end do
print *, "El sumatorio desde j=1 hasta j=",jmax,"de 1/j^2 es",sum
end program sumatorio4