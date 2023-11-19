program num_21
  implicit none
  integer :: n, i, j
  integer, allocatable :: a(:)
  real :: tempo

  ! Prompt user for the number of elements
  print *, "Enter the number of elements:"
  read *, n

  ! Allocate memory for the array
  allocate(a(n))

  ! Prompt user to enter n numbers
  print *, "Enter (n) numbers:"
  read *, a  !5, 3 , 2, 4, 1
  do i=1,n
    do j=1, n-i
        if(a(j)<a(j+1)) then
          tempo = a(j)
          a(j)= a(j+1)
          a(j+1) = tempo
        end if
    end do
  end do

  ! Display the sorted list in ascending order
  print *, "Ascending order:"
  do i = 1, n
    print *, a(n+1-i)
  end do

  ! Display the sorted list in descending order
  print *, "Descending order:"
  do i = 1, n
    print *, a(i)
  end do
end program num_21
