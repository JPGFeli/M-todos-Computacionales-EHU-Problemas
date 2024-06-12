program parimpar2

integer :: n,k

print *, "Introduzca un número entero"
read *, n
k=0
do
	if (abs(n)==2*k) then
		print *, n, "es par"
		exit
	else if (abs(n)==(2*k+1)) then
		print *, n, "es impar"
		exit
	else
		k=k+1
	end if
end do

end program parimpar2
	