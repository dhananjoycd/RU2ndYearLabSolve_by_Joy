program num_5_iii
  implicit none
  integer :: n, i
  real :: a, b, proDuct
  print *, "Enter the value of terms 'n' and 'A', 'B'"
  read *, n, a, b
  proDuct = 1.0
  do i = 1, n
    proDuct = proDuct * (i / (a*1.0 + (i-1)*b*1.0))
  end do
  print 10, n, proDuct
  10 format(1x, "The product of first", I3, " terms is", f5.2)
  !print *, "The product of first", n, "terms is", proDuct
end program
