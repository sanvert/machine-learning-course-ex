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

A = magic(9)
sum(A, 1) % column sum
sum(A, 2) % row sum
sum(sum(A .* eye(length(A)))) % diagonal sum
pinv(A) % pseudo inverse of A

%PLOTTING THE ALGORITHMS%

%Sin function
t = [0: 0.01: 0.98];
y1 = sin(2 * pi * 4 * t);
plot(t, y1);
y2 = cos(2 * pi * 4 * t);
plot(t, y2);

plot(t, y1); % draw a plot
hold on;
plot(t, y2, 'r');
xlabel('time');
ylabel('value');
legend('sin', 'cos');
title('myPlot');

cd print -dpmg 'myPlot.png' %to save the plot

figure(1);plot(t, y1); % draw on different figures
figure(2);plot(t, y2);

subplot(1, 2, 1); % divide figure 1*2 grid, access first element
plot(t, y1);
subplot(1, 2, 2);
plot(t, y2);
axis([0.5 1 -1 1]); % change x and y axis of plots
clf; % clear figure

A = magic(5);
imagesc(A);
imagesc(A), colorbar, colormap gray;

a = 1, b = 2, c = 3

% for loop

v = zeros(10, 1);

for i = 1:10
    v(i) = 2 ^ i;
end;

indices = 1 : 10;
for i = indices;
    disp(i);
end;

i = 1;
while i <= 5,
    v(i) = 100;
    i = i + 1;
end;
v;

i = 1;
while true,
    v(i) = 999;
    if i == 6,
        break;
    end;
end;
v;

squareThisNumber(5)

%Octave search path add new path
addpath(dir)

