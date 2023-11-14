program num_23
  implicit none
  integer :: n, fac, nCr, i, q(20)
  integer, allocatable :: p(:)

  ! Input loop label
  100 continue

  ! Prompt user to enter the number n
  print*, "Enter the number n"
  read*, n

  ! Check if n is less than 9
  if (n < 9) then
    ! Allocate memory for array p
    allocate(p(n))

    ! Print binomial coefficients
    print*, "Binomial coefficients are"
    do i = 0, n
      nCr = fac(n) / (fac(i) * fac(n - i))
      p(i) = nCr
      print*, n, "C", i, "=", p(i)
    end do
  else
    ! If n is not less than 9, prompt user to enter a valid number
    print*, "Enter a number between 0 to 9"
    go to 100
  end if

end program num_23

! Function to calculate factorial
integer function fac(n)
  implicit none
  integer :: n, f, i

  f = 1

  ! Calculate factorial if n is non-negative
  if (n >= 0) then
    do i = 1, n
      f = f * i
    end do
  end if

  ! Return the factorial value
  fac = f

end function
