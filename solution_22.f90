program num_22
  implicit none
  integer :: m, i
  real :: AM, GM, HM, SD, MD
  real, allocatable :: a(:)

  print *, "Enter the number of elements:"
  read *, m
  allocate(a(m))
  print *, "Enter the elements:"
  read *, (a(i), i = 1, m)

  print *, "The AM is", AM(a, m)
  print *, "The GM is", GM(a, m)
  print *, "The HM is", HM(a, m)
  print *, "The SD is", SD(a, m)
  print *, "The MD is", MD(a, m)

end program num_22

!Function to calculate the Arithmetic Mean (AM)
real function AM(a, m)
  implicit none
  integer :: i, m
  real :: a(m), sum
  sum = 0.0
  do i = 1, m
    sum = sum + a(i)
  end do
  AM = sum / m
end function

!Function to calculate the Geometric Mean(GM)
real function GM(a, m)
  implicit none
  integer :: i, m
  real :: a(m), pro
  pro = 1.0
  do i = 1, m
    pro = pro * a(i)
  end do
  GM = pro ** (1.0 / m)
end function

!Function to calculate the Harmonic Mean (HM)
real function HM(a, m)
  implicit none
  integer :: i, m
  real :: a(m), sum
  sum = 0.0
  do i = 1, m
    sum = sum + (1.0 / a(i))
  end do
  HM = m / sum
end function

!Function to calculate the Standard Deviation (SD)
real function SD(a, m)
  implicit none
  integer :: i, m
  real :: a(m), sum, AM, Avg
  Avg = AM(a, m)  !function called
  sum = 0.0
  do i = 1, m
    sum = sum + ((a(i) - Avg) ** 2)
  end do
  SD = sqrt(sum / (m - 1))
end function

!Function to calculate the Median (MD)
real function MD(a, m)
  implicit none
  integer :: i, m
  real :: a(m), sum, AM, Avg
  Avg = AM(a, m)
  sum = 0.0
  do i = 1, m
    sum = sum + abs(a(i) - Avg)
  end do
  MD = sum / m
end function
