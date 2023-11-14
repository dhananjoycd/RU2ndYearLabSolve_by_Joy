program num_14
  implicit none
  integer :: i, j, m, n
  real :: lambda, mu
  real, allocatable :: a(:,:), b(:,:), c(:,:)

  ! Step 1: Input the dimensions of matrices A and B
  print *, "Enter the number of rows (m) and columns (n) for matrices A and B:"
  read *, m, n

  ! Step 2: Allocate memory for matrices A, B, and C
  allocate(a(m, n), b(m, n), c(m, n))

  ! Step 3: Input elements for matrix A
  print *, "Enter the elements of matrix A row-wise:"
  do i = 1, m
    read *, (a(i, j), j = 1, n)
  end do
    !read *, ((a(i, j), j = 1, n), i=1, m)

  ! Step 3: Input elements for matrix B
  print *, "Enter the elements of matrix B row-wise:"
  do i = 1, m
    read *, (b(i, j), j = 1, n)
  end do
  !read *, ((b(i, j), j = 1, n), i=1, m)

  ! Step 4: Input values for lambda and mu
  print *, "Enter the values of lambda and mu:"
  read *, lambda, mu

  ! Step 5: Calculate the sum of matrices A and B scaled by lambda and mu
  do i = 1, m
    do j = 1, n
      c(i, j) = lambda * a(i, j) + mu * b(i, j)
    end do
  end do

  ! Step 6: Print the resulting matrix C
  print *, "The sum of the matrices is:"
  do i = 1, m
    print *, (c(i, j), j = 1, n)
  end do
end program num_14

!for input
![1 2 3, 4 5 6, 7 8 9]
![9 8 7, 6 5 4, 3 2 1]
!lamda=1 , mu=1

!output
![10 10 10, 10 10 10, 10 10 10]
