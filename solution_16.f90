program num_16
  implicit none
  integer :: i, j, k, m, n, p, q
  real, allocatable :: a(:,:), b(:,:), c(:,:)

  ! Step 1: Input dimensions for matrix A
  print *, "Enter the number of rows (m) and columns (n) for matrix A:"
  read *, m,n

  ! Step 2: Input dimensions for matrix B
   print *, "Enter the number of rows (p) and columns (q) for matrix B:"
  read *, p,q

  ! Step 3: Check if matrix multiplication is possible
  if (n == p) then
    ! Step 4: Allocate memory for matrices A, B, and C
    allocate(a(m, n), b(n, q), c(m, q))

    ! Step 5: Input elements for matrix A
    print *, "Enter the elements of matrix A row-wise:"
    do i = 1, m
      read *, (a(i, j), j = 1, n)
    end do
    ! read *, ((a(i, j), j = 1, n),i=1,m)

    ! Step 6: Input elements for matrix B
    print *, "Enter the elements of matrix B row-wise:"
    do i = 1, p
      read *, (b(i, j), j = 1, q)
    end do
    !read *, (a(i, j), j = 1, q)),i=1,p)

    ! Step 7: Calculate the product C
    do i = 1, m     !iterates over the rows
      do j = 1, q   !iterates over the columns
        c(i, j) = 0.0
        do k = 1, n     ! iterates over the columns of matrix A and the rows of matrix B
          c(i, j) = c(i, j) + a(i, k) * b(k, j)
        end do
      end do
    end do

    ! Step 8: Print the product matrix C
    print *, "Matrix AB:"
    do i = 1, m
      print *, (c(i, j), j = 1, q)
    end do

    ! Step 9: Deallocate memory to free up resources (optional error)
    deallocate(a, b, c)

  else
    ! Step 10: Notify if multiplication is not possible
    print *, "Product of A and B is not possible. Number of columns in A should be equal to the number of rows in B."
  end if

end program num_16
