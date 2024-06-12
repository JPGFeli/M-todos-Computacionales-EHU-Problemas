program parimpar1

integer :: n

print *, "Introduzca un número entero "
read *, n
if ((-int(n/2)*2+n)==0) then
	print *, n, "es par"
else
	print *, n, "es impar"
end if

end program parimpar1
