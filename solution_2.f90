!print the area and perimeter of a triangle if the vertices of the triangle are given
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
