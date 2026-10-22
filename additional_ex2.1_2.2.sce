// PROBLEM 2.1
n = -5:8;
x = zeros(1, length(n));
for i = 1:length(n)
    if (n(i) >= -3 & n(i) <= -1) then
        x(i) = 1 + n(i)/3;
    elseif (n(i) >= 0 & n(i) <= 3) then
        x(i) = 1;
    end
end

figure();
subplot(2, 2, 1);
plot2d3(n, x); plot(n, x, 'r.');
title('(a) Tin hieu goc x(n)');
xlabel('n'); ylabel('x(n)'); xgrid();

v = x($:-1:1);
n_v = -n($:-1:1);
y1 = v;
n_y1 = n_v + 4;

subplot(2, 2, 2);
plot2d3(n_y1, y1); plot(n_y1, y1, 'r.');
title('(b1) Gap truoc, tre 4 mau: x(-n+4)');
xlabel('n'); ylabel('y1(n)'); xgrid();

w = x;
n_w = n + 4;
y2 = w($:-1:1);
n_y2 = -n_w($:-1:1);

subplot(2, 2, 3);
plot2d3(n_y2, y2); plot(n_y2, y2, 'r.');
title('(b2) Tre 4 mau truoc, gap sau: x(-n-4)');
xlabel('n'); ylabel('y2(n)'); xgrid();

subplot(2, 2, 4);
plot2d3(n_y1, y1); plot(n_y1, y1, 'r.');
title('(c) Tin hieu x(-n+4)');
xlabel('n'); ylabel('x(-n+4)'); xgrid();

disp("=================================================");
disp("PROBLEM 2.1");
disp("=================================================");
disp("x(n) = " + strcat(string(round(x*100)/100), " "));
// PROBLEM 2.2
nx = -2:2;
x = [0.5, 1.0, 2.0, 1.0, 0.5];

na = nx + 2;
xa = x;

nb = 4 - nx($:-1:1);
xb = x($:-1:1);

nc = nx - 2;
xc = x;

nd = -4:4;
xd = zeros(1, length(nd));
for i = 1:length(nd)
    if (nd(i) >= -2 & nd(i) <= 2) then
        xd(i) = x(nd(i) - (-2) + 1) * (nd(i) <= 2);
    end
end

ne = 0:5;
xe = zeros(1, length(ne));
idx3 = find(ne == 3);
xe(idx3) = 0.5;

nf = -3:3;
xf = zeros(1, length(nf));
for i = 1:length(nf)
    n_sq = nf(i)^2;
    if (n_sq >= -2 & n_sq <= 2) then
        xf(i) = x(n_sq - (-2) + 1);
    end
end

ng = -2:2;
x_even = x;

nh = -2:2;
x_odd = zeros(1, length(nh));

figure();
subplot(3, 3, 1); plot2d3(nx, x); plot(nx, x, 'r.'); title('x(n)'); xgrid();
subplot(3, 3, 2); plot2d3(na, xa); plot(na, xa, 'r.'); title('(a) x(n-2)'); xgrid();
subplot(3, 3, 3); plot2d3(nb, xb); plot(nb, xb, 'r.'); title('(b) x(4-n)'); xgrid();
subplot(3, 3, 4); plot2d3(nc, xc); plot(nc, xc, 'r.'); title('(c) x(n+2)'); xgrid();
subplot(3, 3, 5); plot2d3(nd, xd); plot(nd, xd, 'r.'); title('(d) x(n)u(2-n)'); xgrid();
subplot(3, 3, 6); plot2d3(ne, xe); plot(ne, xe, 'r.'); title('(e) x(n-1)delta(n-3)'); xgrid();
subplot(3, 3, 7); plot2d3(nf, xf); plot(nf, xf, 'r.'); title('(f) x(n^2)'); xgrid();
subplot(3, 3, 8); plot2d3(ng, x_even); plot(ng, x_even, 'r.'); title('(g) Even part'); xgrid();
subplot(3, 3, 9); plot2d3(nh, x_odd); plot(nh, x_odd, 'r.'); title('(h) Odd part'); xgrid();

disp("=================================================");
disp("PROBLEM 2.2");
disp("=================================================");
disp("(a) x(n-2) = " + strcat(string(xa), " "));
disp("(b) x(4-n) = " + strcat(string(xb), " "));
disp("(c) x(n+2) = " + strcat(string(xc), " "));
disp("(f) x(n^2) = " + strcat(string(xf), " "));
