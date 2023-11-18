program num_4
  implicit none
  real :: a, b, c, d, r1, r2, realPart, imagPart
  complex :: cr1, cr2

  ! Input coefficients
  print *, "Enter the coefficients of the quadratic equation (a b c):"
  read *, a, b, c

  ! Calculate the discriminant
  d = b**2 - 4.0*a*c

  ! Check the discriminant to determine the roots
  if (d > 0.0) then
    r1 = (-b + sqrt(d)) / (2.0*a)
    r2 = (-b - sqrt(d)) / (2.0*a)
    print *, "The roots are real and unequal. Hence, The roots are:", r1, r2
  else if (d == 0.0) then
    r1 = -b / (2.0*a)
    print *, "The roots are real and equal. Hence, The root is:", r1
  else
    realPart = -b / (2.0*a)
    imagPart = sqrt(-d) / (2.0*a)
    cr1 = cmplx(realPart, imagPart)
    cr2 = cmplx(realPart, -imagPart)
    print *, "The roots are imaginary and they are", cr1, cr2
  end if
end program num_4
