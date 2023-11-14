program num_20
  implicit none
  integer :: i, m, thcf, hcf
  integer, allocatable :: a(:)

  print *, "Enter the array length:"
  read *, m
  allocate(a(m))

  print *, "Enter the consecutive pairs of the array:" !consecutive pairs = por por jora number
  read *, (a(i), i = 1, m)

  print *, "hcf of consecutive pairs:" !HCF = highest common factor
  do i = 1, m - 1
    thcf = hcf(a(i), a(i+1)) !THCF = Temporary highest common factor
    print'(A,I3,A,I3,A,I3)', "The hcf of", a(i),  " and ", a(i+1),  " is:",  thcf
  end do

end program num_20

integer function hcf(m, n)
  implicit none
  integer :: m, n, minimum, maximum, i
  maximum = max(m, n)
  minimum = min(m, n)

  do i = 1, minimum
    if (mod(minimum, i) == 0 .and. mod(maximum, i) == 0) then
      hcf = i
    end if
  end do
end function hcf
