A = [1 2; 5 11; 17 65]

B= [1 9; 191 11; 16 65]

C = [A B]

C = [A; B]

size(C) %6 * 2

v = [1 2 3] % row

v = [1; 2; 3] % vector

abs(v)

v = v + ones(length(v), 1)

v + 1

A' %transpose of A

(A')'

a = [1 15 2 0.5]

val = max (a)

[val, ind] = max (a)

max(A)

a < 3 %element wise comparison returns true of false
find(a < 3) % returns indexes

A = magic(3) %row and col sums are equal
[r, c] = find(A >= 7) % finds row and cols acc to condition

sum(a)
prod(a)
floor(a)
ceil(a)

rand(3)

max(rand(3), rand(3)) % element wise max of 2 3*3 matrices

max(A, [], 1) % column wise max of A
max(A, [], 2) % row wise max of A
max(A) % column wise max of A
max(max(A)) % max among all elem of A
max(A(:)) % max among all elem of A

K = [0: 1: 8]
