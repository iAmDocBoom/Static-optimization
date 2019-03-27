

x=[pi/2 :0.1: 2*pi];
y=[pi/2 :0.1: 2*pi];

for i=1:length(x)
    for j=1:length(y)
        z=sin(i)+cos(j);
    end
end
surf(z,x,y);
grid on;

