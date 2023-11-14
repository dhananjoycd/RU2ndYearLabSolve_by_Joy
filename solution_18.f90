program num_18
  implicit none
  integer :: i, j, k, m, n
  real, allocatable :: a(:,:), a_transpose(:,:), aa(:,:), a_transpose_a(:,:)

  ! Input: Enter the order [m*n] of matrix A
  print*, "Enter the number of rows (m) and columns (n) of matrix A:"
  read *, m, n

  ! Allocate memory for matrices
  allocate(a(m, n), a_transpose(n, m), aa(m, m), a_transpose_a(n, n))

  ! Input: Enter the elements of matrix A in row-wise
  print*, "Enter the elements of matrix A in row-wise:"
  do i = 1, m
    do j = 1, n
      read*, a(i, j)
    end do
  end do

  ! Calculate A_transpose (transpose of A)
  do i = 1, n
    do j = 1, m
      a_transpose(i, j) = a(j, i)
    end do
  end do

  ! Calculate AA' (matrix multiplication)
  do i = 1, m
    do j = 1, m
      aa(i, j) = 0.0
      do k = 1, n
        aa(i, j) = aa(i, j) + a(i, k) * a_transpose(k, j)
      end do
    end do
  end do

  ! Output: Matrix AA'
  print*, "Matrix AA':"
  do i = 1, m
    print*,(aa(i, j), j = 1, m)
  end do

  ! Calculate A'A (matrix multiplication)
  do i = 1, n
    do j = 1, n
      a_transpose_a(i, j) = 0.0
      do k = 1, m
        a_transpose_a(i, j) = a_transpose_a(i, j) + a_transpose(i, k) * a(k, j)
      end do
    end do
  end do

  ! Output: Matrix A'A
  print*, "Matrix A'A:"
  do i = 1, n
    print*, (a_transpose_a(i, j), j = 1, n)
  end do

end program num_18


!input
! m=3, n=2
!a=[1 2, 3 4, 5 6]

!output
!aa'=[5 11 17, 11 25 39, 17 39 61]
!a'a = [35 44, 44 56]
