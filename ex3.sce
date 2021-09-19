clc; clear all

function a = f(x)
    a = (x^2) - (3*x) - 4
endfunction

function b = g(x)
    b = (1/3)*((x^2)-4)
endfunction

function fixedPointIteration(x0, e, N)
    printf("\n\n*** FIXED POINT ITERATION ***\n")
    step = 1
    flag = 1
    condition = %t

    while (condition)
        x1 = g(x0)
        printf("\nIteration-%d, x1 = %0.6f and f(x1) = %0.6f\n", step, x1, f(x1))
        x0 = x1

        step = step + 1

        if step > N then
            flag = 0
            break
        end
        condition = abs(f(x1)) > e

    if flag == 1 then
        printf("Required root is: %0.8f\n", x1)
    else
        printf("\nNot Convergent.\n")
    end
    end
endfunction

x0 = input("Enter Guess: ")
e = input("Tolerable Error: ")
N = input("Maximum Step: ")

fixedPointIteration(x0,e,N)
