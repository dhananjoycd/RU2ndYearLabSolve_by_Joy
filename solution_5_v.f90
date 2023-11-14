program num_5_v
  implicit none
  integer :: n, i
  real :: a, b, sum
  print *, "Enter the value of terms 'n' and 'A', 'B'"
  read *, n, a, b
  sum = 0
  do i = 1, n
    sum = sum + (i /(a+(i-1)*b))
  end do
  print 10, n, sum
  10 format(1x, "The sum of first", I3, " terms is", f7.4)
  !print *, "The sum of first", n, "terms is", sum
end program
