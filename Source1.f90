program runprogram
    use iso_fortran_env

    implicit none

    real    :: param, x, y
    integer :: i

    do
        read(*,*) param

        do i = 0,200
            x = i * 0.05
            y = func( param, x )

            write(*,*) x, y
        enddo

        flush( output_unit )

    enddo
contains

real function func( param, x )
    real :: param, x

    func = exp(-x) * cos(param*x)

end function func

end program runprogram