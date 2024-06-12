module matrix

public:: asignvalue

contains

subroutine asignvalue(v1)

real,dimension(:,:),intent(inout) :: v1

call random_seed()
call random_number(v1)

end subroutine asignvalue

end module matrix