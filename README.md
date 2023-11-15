# Lab Problems are solved by JOY

<img src="/Problems Solved by JOY/dhananjoy.jpg" alt="JOY" width="360" height="360" style="border: 3px solid black; border-radius: 50%;">

## **[Dhananjoy Chandra Das]** (https://www.facebook.com/No1.DhananjoyChandraDas)

### Studies B.Sc (Hon's🎓) in Department of Mathematics at University of Rajshahi

### **Note:**

<i> In this Git repository, you can find all the solved Lab Courses (Math-2019) following the syllabus of RU. If you face difficulty understanding any problem solved here, feel free to contact me. Additionally, here's an essential link to aid your comprehension: [Notion Note](https://lumpy-watercress-0d0.notion.site/Problems-Solved-by-JOY-0104b788ca944cb4a4031a91986281d1?pvs=4) </i>

## **1. Write a program to check whether a triangle is Equilateral, Isosceles or Scalene. (Vertices given)**

```fortran
program number_1
    implicit none
    real:: a, b, c,  x1, y1, x2, y2, x3, y3
    print*, "Enter the triangle vertices 1, 2, 3"
    read*, x1, y1, x2, y2, x3, y3

    !it's for calculate the edge of triangles
    a=sqrt((x2 - x1)**2 + (y2 - y1)**2)
    b=sqrt((x3 - x1)**2 + (y3 - y1)**2)
    c=sqrt((x3 - x2)**2 + (y3 - y2)**2)

    if (a<b+c .and. b<a+c .and. c<a+b) then
        print*, "It is possible to make a triangle"
    ! Check the type of triangle
      if (a == b .and. b == c) then
         print*,"Equilateral triangle"
      else if (a == b .or. a == c .or. b == c) then
          print*,"Isosceles triangle"
      else
       print*,"Scalene triangle"
      end if
    else
        print*, "It is not a triangle"
    end if
end program
```

![01.png](/Problems%20Solved%20by%20JOY/01.png)

## 2. Print the area and perimeter of a tringle if the vertices of the tringle are given.

```fortran
program num_2
    implicit none
    real:: x1, y1, x2, y2, x3, y3, a, b, c, s,  area, perimeter
    print*, "Enter the triangle vertices 1, 2, 3"
    read*, x1, y1, x2, y2, x3, y3

    !it's for calculate the edge of triangles
    a=sqrt((x2 - x1)**2 + (y2 - y1)**2)
    b=sqrt((x3 - x1)**2 + (y3 - y1)**2)
    c=sqrt((x3 - x2)**2 + (y3 - y2)**2)
    s=(a+b+c)/2

    !check the validity of triangle
    if (a<b+c .and. b<c+a .and. c<a+b) then
        perimeter = (a+b+c)
        area = sqrt(s*(s-a)*(s-b)*(s-c))
        print*, "The perimeter of triangle is", perimeter
        print*, "The area of triangle is", area
    else
        print*, "It is not a triangle"
    end if
end program
```

![02.png](/Problems%20Solved%20by%20JOY/02.png)

## 3. Find the center and radius of a tringle's circum circle if the tringle's vertices are given.

```fortran

program num_3
  implicit none
  real :: x1, y1, x2, y2, x3, y3, a, b, c, a1, a2, b1, b2, c1, c2, x, y, r

  ! Input vertices of the triangle
  print *, "Enter the 1st vertices of the triangle (x1 y1):"
  read *, x1, y1
  print *, "Enter the 2nd vertices of the triangle (x2 y2):"
  read *, x2, y2
  print *, "Enter the 3rd vertices of the triangle (x3 y3):"
  read *, x3, y3

  ! Calculate the side lengths
  a = sqrt((x1 - x2)**2 + (y1 - y2)**2)
  b = sqrt((x2 - x3)**2 + (y2 - y3)**2)
  c = sqrt((x3 - x1)**2 + (y3 - y1)**2)

  ! Check if a triangle with the given vertices exists
  if (a + b > c .and. b + c > a .and. c + a > b) then
    a1 = 2.0 * (x2 - x1)
    a2 = 2.0 * (x2 - x3)
    b1 = 2.0 * (y2 - y1)
    b2 = 2.0 * (y2 - y3)
    c1 = x1**2 - x2**2 + y1**2 - y2**2
    c2 = x3**2 - x2**2 + y3**2 - y2**2

    ! Calculate the coordinates of the circumcenter
    x = (b1 * c2 - b2 * c1) / (a1 * b2 - a2 * b1)
    y = (c1 * a2 - c2 * a1) / (a1 * b2 - a2 * b1)

    ! Calculate the radius
    r = sqrt((x - x1)**2 + (y - y1)**2)

    ! Output the results
    print *, "Center of the circumcircle is", x,y
    print *, "Radius of the circumcircle is", r
  else
    print *, "Triangle does not exist for those points."
  end if
end program num_3
```

## 4. Solve a quadratic equation and print its roots (roots maybe real or complex).

```fortran
program num_4
  implicit none
  real :: a, b, c, d, r1, r2, realPart, imagPart
  complex :: cr1, cr2

  ! Input coefficients
  print *, "Enter the coefficients of the quadratic equation (a b c):"
  read *, a, b, c

  ! Calculate the discriminant
  d = b**2 - 4.0*a*c

  ! Check the discriminant to determine the roots
  if (d > 0.0) then
    r1 = (-b + sqrt(d)) / (2.0*a)
    r2 = (-b - sqrt(d)) / (2.0*a)
    print *, "The roots are real and unequal. Hence, The roots are:", r1, r2
  else if (d == 0.0) then
    r1 = -b / (2.0*a)
    print *, "The roots are real and equal. Hence, The root is:", r1
  else
    realPart = -b / (2.0*a)
    imagPart = sqrt(-d) / (2.0*a)
    cr1 = cmplx(realPart, imagPart)
    cr2 = cmplx(realPart, -imagPart)
    print *, "The roots are imaginary and they are", cr1, cr2
  end if
end program num_4
```

![04.png](/Problems%20Solved%20by%20JOY/04.png)

# **Print the sum or product up to n terms of the series:**

## 5i. sinα + sin(α+β) + sin(α+2β) + … …

```fortran
program num_5_i
    implicit none
    integer:: n, i
    real:: alpha, beta, sum
    real, parameter::pi=3.1416
    print*, "Enter the number of terms 'n' and value of 'alpha', 'beta'"
    read*, n, alpha, beta
    alpha = (pi/180)*alpha !Degree to Radian
    beta  = (pi/180)*beta  !Degree to Radian
    sum=0
    do i=1,n
        sum=sum+sin(alpha+(i-1)*beta)
    end do
    print'(A,F8.4)',"The total sum of series is:", sum
end program
```

![05i.png](/Problems%20Solved%20by%20JOY/05i.png)

## 5ii. 1 + cos x + cos 2x + cos 3x + … …

```fortran
program num_5_ii
    implicit none
    integer:: n, i
    real:: x, sum
    real, parameter::pi=3.1416
    print*, "Enter the number of terms 'n' and value of 'x'"
    read*, n, x
    x = (pi/180)*x !Degree to Radian
    sum=0
    do i=1,n
        sum=sum+cos((i-1)*x)
    end do
    print'(A,F8.4)',"The total sum of series is:", sum
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled.png)

## 5iii.

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%201.png)

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%202.png)

## 5iv.

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%203.png)

```fortran
program num_5_iv
    implicit none
    integer:: n, i
    real:: sum
    print*,"Enter the number of terms"
    read*, n
    sum = 0
    do i=1, n
        sum = sum+(((-1)**(i+1))/(i*1.0))
    end do
      print 10, n, sum
    10 format(1x, "The sum of first",I3, " terms is", f7.4)
  !print *, "The sum of first", n, "terms is", sum
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%204.png)

## 5v.

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%205.png)

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%206.png)

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%207.png)

## 6i.

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%208.png)

```fortran
program num_6_i
    implicit none
    integer:: n, i
    real:: sum
    print*, "Enter the number of terms:"
    read*,n
    sum=0
    do i=1,n
        if (mod(i,2)==1) then
           sum=sum+(1.0/i)
        else
            sum=sum+(i/(i+1.0))
        end if
    end do
    print'(A,I3,A,F8.4)',"The sum of" ,n, " terms is", sum
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%209.png)

## 6ii

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2010.png)

```fortran
program num_6_ii
    implicit none
    integer::n, i
    real:: sum
    print*,"Enter the number of terms:"
    read*,n
    sum=0
    do i=1,n
        if(i<=4) then
         sum=sum+i
        else
         sum=sum+(i/(i+1.0))
        end if
    end do
     print'(A,I3,A,F8.4)',"The sum of" ,n, " terms is", sum
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2011.png)

## 7. Write a program to print a given number whether it is prime or not and print its pre and post prime numbers.

```fortran
program num_7
    implicit none
    integer:: n,j, isprime
    print*,"Enter the number :"
    read*,n
    !--------prime---------------
    if(isprime(n)==1)then
        print'(A, I3, A)',"The Number", n," is a prime number"
        !print*,n,"is a prime number"
    else
        print'(A, I3, A)',"The Number", n," is not a prime number"
        !print*,x,"is not a prime number"
   end if
   !-----------pre prime-----------
   if(n<=2) then
        print*,"There is no pre-prime number of",n
    else
      do j=n-1,2,-1
        if(isprime(j)==1)then
        print*,j,"is a pre-prime number"
        exit
        end if
      end do
   end if
   !--------post prime------------
   do j=n+1, n+5000, 1
        if(isprime(j)==1)then
        print*,j,"is a post-prime number"
        exit
        end if
    end do
end program

!custom function to find prime
integer function isprime(x)
implicit none
integer::i,x,check
check=1
do i=2,x/2,1
    if(mod(x,i)==0)then
    check=0
    exit
    end if
end do
isprime=check
end function
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2012.png)

## 8. Write a program to print the number of primes in a range of positive integers.

```fortran
program num_8
    implicit none
    integer::a,b,lowest,highest,isprime,j
    print*,"Enter the two numbers"
    read*,a,b
    lowest=min(a,b)
    highest=max(a,b)
    print'(A,I3,A,I3)',"The prime numbers are showed betwen",lowest ," and" ,highest
    do j=lowest,highest,1
        if(isprime(j)==1)then
           if(j>=2)then
             print*,j
           end if
        end if
    end do
end program

!custom function to find prime
integer function isprime(x)
implicit none
integer::i,x,check
check=1
do i=2,x/2,1
    if(mod(x,i)==0)then
    check=0
    exit
    end if
end do
isprime=check
end function
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2013.png)

## 9. Write a program to read a positive integer n and print the factors of n and count them.

```fortran
program num_9
implicit none
integer:: i, n, count
print*, "Enter the number:"
read*,n
count=0
do i=1,n
    if(mod(n,i)==0) then
        count=count+1
        print*,i
    end if
end do
print'(A,I3,A,I3)',"There exist", count," factors inside",n
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2014.png)

## 10. Write a program to print the perfect numbers in a range of positive integers.

```fortran
program num_10
    implicit none
    integer::a,b,lowest,highest,total,i,j,count
    print*,"Enter the two numbers"
    read*,a,b
    lowest=min(a,b)
    highest=max(a,b)
       count=0
     print'(A,I3,A,I3)',"The perfect numbers are showed betwen",lowest ," and" ,highest
    do j=lowest,highest,1
        total=0
        do i=1, j/2,1
            if(mod(j,i)==0) then
                total=total+i
            end if
        end do
        if(j==total) then
            print*,j
            count=count+1
        end if
    end do
    print*,count,"Perfect number exist"
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2015.png)

## 11. Write a program to print the triangular numbers in a range.

```fortran
program num_11
    implicit none
    integer::a,b,lowest,highest,sum,i,j
    print*,"Enter the two numbers"
    read*,a,b
    lowest=min(a,b)
    highest=max(a,b)
    print'(A,I3,A,I3)',"The triangular numbers are showed between",lowest ," and" ,highest
    do j=lowest,highest,1
        sum=0
        do i=1,j
          sum=sum+i
          if(sum==j) then
            print*,j
            exit
          end if
        end do
    end do
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2016.png)

## 12. Write a program to print the Floyd’s triangle.

```fortran
program num_12
    implicit none
    integer::i,n,j,sum
    print*,"Enter the row number:"
    read*,n
    sum=0
    do j=1,n
        do i=1,j
         sum=sum+1  !next row te koyta element hobe te jante
        write(*,"(I6)", advance="no")sum
        end do
        write(*,"(/)")
        !print*," "
    end do
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2017.png)

## 13. Write a program to print the Pascal’s triangle.

```fortran
program num_12
    implicit none
    integer::i,n,j,sum
    print*,"Enter the row number:"
    read*,n
    sum=0
    do j=1,n
        do i=1,j
         sum=sum+1  !next row te koyta element hobe te jante
        write(*,"(I6)", advance="no")sum
        end do
        write(*,"(/)")
        !print*," "
    end do
end program
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2018.png)

## 14.

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2019.png)

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2020.png)

## 15. Read a square matrix A of order n and print a symmetric matrix B and skew-symmetric matrix C such that A=B+C.

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2021.png)

## 16. Read two matrices A and B and test whether AB defined if AB exists print the product AB.

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2022.png)

## 17. Read a matrix A of order n and print the sum of:

i. diagonal elements
ii. the last column elements
iii. the lower triangular elements

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2023.png)

## 18. Read a matrix A and print AA’ and A’A.

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2024.png)

## 19. Write a function subprogram for the function f(x) defined as follows:

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2025.png)

```fortran
program num_19
    implicit none
    real:: value , f
    print*,"Enter the value of x"
    read*, value
    print'(A, F8.2)',"The result is",f(value)
end program

real function f(x)
    implicit none
    real::x
    if(x<=0) then
        f=0
    elseif(x>0 .and. x<=2) then
        f=x
    else
        f=2*x-2
    end if
end function
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2026.png)

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2027.png)

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2028.png)

## 20. Define a function to determine h.c.f. of a pair of positive integers and use it to print the h.c.f. of consecutive pairs of an array of positive integers.

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2029.png)

## 21. Read n numbers and print them and their sorted list (ascending and descending).

```fortran
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
  do i=1,5
    do j=1, 5-i
        if(a(3)<a(4)) then
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2030.png)

## 22. Print the A.M, G.M, H.M, SD, MD of a list of numbers using subroutine subprogram and function subprogram.

```fortran
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
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2031.png)

## 23. Print the binomial coefficients nCr for 0≤r≤n (n<9) using function sub program.

```fortran
program num_23
  implicit none
  integer :: n, fac, nCr, i, q(20)
  integer, allocatable :: p(:)

  ! Input loop label
  100 continue

  ! Prompt user to enter the number n
  print*, "Enter the number n"
  read*, n

  ! Check if n is less than 9
  if (n < 9) then
    ! Allocate memory for array p
    allocate(p(n))

    ! Print binomial coefficients
    print*, "Binomial coefficients are"
    do i = 0, n
      nCr = fac(n) / (fac(i) * fac(n - i))
      p(i) = nCr
      print*, n, "C", i, "=", p(i)
    end do
  else
    ! If n is not less than 9, prompt user to enter a valid number
    print*, "Enter a number between 0 to 9"
    go to 100
  end if

end program num_23

! Function to calculate factorial
integer function fac(n)
  implicit none
  integer :: n, f, i

  f = 1

  ! Calculate factorial if n is non-negative
  if (n >= 0) then
    do i = 1, n
      f = f * i
    end do
  end if

  ! Return the factorial value
  fac = f

end function
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2032.png)

## 24.

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2033.png)

```fortran
program num_24
    implicit none
    real:: x0,xn,f, i , h
    print*,"Enter the number Xo and Xn (Xo < Xn ): "
    read*, x0,xn
    print*, "Enter the step size"
    read*, h

    do i = x0, xn, h
     print*, "The function f(", i , ") = " ,f(i)
     x0 = x0+h
     if (x0>xn) exit
    end do
end program

   real function f(x)
   implicit none
   real:: x, pi
   pi = 3.1416
   f = x**3 + sin(2*x*pi/180)
   end function
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2034.png)

## 25. Read n numbers and insert a number in a particular position and print the inputted list and the resultant list.

```fortran
program num_25
    implicit none
    integer :: i, n, p, m
    integer, allocatable :: x(:)

    ! Prompt user to enter the order of the list
    print*, "Enter the order of the list"
    read*, n

    ! Allocate memory for the array x
    allocate(x(n))

    ! Prompt user to enter the numbers of the list
    print*, "Enter the numbers of the list"
    read*, (x(i), i=1, n)

    ! Prompt user to enter a particular position in the list
    print*, "Enter a particular position in the list"
    read*, p

    ! Prompt user to enter the number to insert at the particular position
    print*, "Enter the number in the particular position"
    read*, m

    ! Print the inputted list
    print*, "Inputted list"
    print 10, (x(i), i=1, n)

    ! Shift elements to make space for the new number
    do i = p, n
        x(n + p + 1 - i) = x(n + p - i)
    end do

    ! Insert the new number at the particular position
    x(p) = m

    ! Print the resultant list
    print*, "Resultant list"
    print 10, (x(i), i=1, n ) !n+1 --if we want to show last element which is skipped

10  format(1X, 100i5, 1X)
end program num_25
```

![Untitled](/Problems%20Solved%20by%20JOY/Untitled%2035.png)
