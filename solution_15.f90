program num_15
  implicit none
  integer :: n, i, j
  real, allocatable :: A(:,:), B(:,:), C(:,:)

  ! Step 1: Input the order of the square matrix A
  print *, "Enter the order (n) of the square matrix A:"
  read *, n

  ! Step 2: Allocate memory for matrices A, B, and C
  allocate(A(n, n), B(n, n), C(n, n))

  ! Step 3: Input elements for matrix A
  print *, "Enter the elements of matrix A row-wise:"
  do i = 1, n
    read *, (A(i, j), j = 1, n)
  end do
  !read *, ((A(i, j), j = 1, n),i=1,n)

  ! Step 4: Calculate matrices B (symmetric) and C (skew-symmetric)
  do i = 1, n
    do j = 1, n
      B(i, j) = 0.5 * (A(i, j) + A(j, i))  ! Symmetric part
      C(i, j) = 0.5 * (A(i, j) - A(j, i))  ! Skew-symmetric part
    end do
  end do

  ! Step 5: Print matrices B and C
  print *, "Symmetric matrix B:"
  do i = 1, n
    print *, (B(i, j), j = 1, n)
  end do

  print *, "Skew-symmetric matrix C:"
  do i = 1, n
    print*, (C(i, j), j = 1, n)
  end do

end program num_15


!A=[3 5, 1 -1]
!B=[3 3, 3 -1]
!C=[0 2, -2 0]

