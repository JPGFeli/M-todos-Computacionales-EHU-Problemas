program sumaimpares

integer :: i,j,k
k=0
i=1
j=0
do
	if (i==99) then
		j=j+i
		k=k+1
		exit
	else
		j=j+i
		i=i+2
		k=k+1
	end if
end do
print *, "La suma de los números impares entre 0 y 100 es", j
print *, "El número de impares entre 0 y 100 es", k
end program sumaimpares