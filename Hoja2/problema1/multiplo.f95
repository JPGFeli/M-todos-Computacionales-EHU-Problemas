program multiplo

integer :: i,m,n

print *, "Escriba dos números enteros para saber si el primero es múltiplo del segundo"
read *, n
read *, m

i=1
if (abs(m)>abs(n)) then
	print *, n, "no es múltiplo de ",m
else
	do
		if (abs(n)==i*abs(m)) then
			print *, n, " es múltiplo de",m
			exit
		else if (i*abs(m)>abs(n)) then
			print *, n, "no es múltiplo de",m
			exit
		else
			i=i+1
		end if
	end do
end if
end program multiplo