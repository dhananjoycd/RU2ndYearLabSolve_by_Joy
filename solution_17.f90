program num_17
  implicit none
  integer :: n, i, j
  real :: diagonal_sum=0, last_column_sum=0, lower_triangular_sum=0
  real, allocatable :: a(:,:)

  ! Read the order of the matrix
  print *, 'Enter the order of the matrix (n): '
  read*, n

  ! Allocate memory for matrix A
  allocate(a(n, n))

  ! Input: Enter the elements of matrix A in row-wise
  print *, "Enter the elements of matrix A in row-wise"
  do i=1,n
    read *, (a(i, j), j = 1, n)
  end do

  ! Calculate the sums
  do i = 1, n
     do j = 1, n
        ! Diagonal elements
        if (i == j) then
           diagonal_sum = diagonal_sum + a(i, j)
        end if

        ! Last column elements
        if (j == n) then
           last_column_sum = last_column_sum + a(i, j)
        end if

        ! Lower triangular elements
        if (i > j) then
           lower_triangular_sum = lower_triangular_sum + a(i, j)
        end if
     end do
  end do

  ! Print the results
  print '(A,F8.2)', 'Sum of diagonal elements: ', diagonal_sum
  print '(A,F8.2)', 'Sum of last column elements: ', last_column_sum
  print '(A,F8.2)', 'Sum of lower triangular elements: ', lower_triangular_sum

end program num_17

![1 2 3, 4 5 6, 7 8 9] -->input
!Out Put:
    !diagonal_sum = 15
    !lower_triangular_sum = 19
    !last_column_sum = 18

