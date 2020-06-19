
% Course Project
% Introduction to Probability and Random Variables (Spring 2020)
% Syed Fazl ur Rehman - sr02910
% Instructor - Dr. Musabbir Abdul Majeed


%% Task 1

record = zeros(1,1000);
n = 10;     %number of steps
dis = 0;
sum = 0;
position = 0;
avg = 0;    % Expectation
for j=1:1000     % number of Simulations
    position=0;
for i=1:n    % i is the number of steps from 1 to n
  R = rand;
  if R <= 0.5   % Probability of going back (P)
    position = position -1;
  elseif R > 0.5    % Probability of going forward(1-P)
     position = position +1;
  end
end
record(j)=position;
sum = sum + position;
end
hist(record)
avg = sum/1000;
position;



%% Task 2


x1 = 0;
x2 = 4;
count=0;
while (x1~=x2)% for i = 0:2000 %%  %
    p1 = randi([1 10],1,1);    
    p2 = randi([1 10],1,1);     
    if(p1>5)
        x1=x1+1;
    else
        x1=x1-1;
    end
    if(p2>6)
        x2=x2+1;
    else
        x2=x2-1;
    end
    count=count+1;

end
x1  % Meeting point
x2

%% Task 3

r=100;      % Radius
stepSize = 0;
angle = 0;
x = 0;
y = 0;
xpos = 0;   %initial x position
ypos = 0;   %initial y position
count = 0;
for i = 1:1000 % simulation variable
    
    p1 = randi([1 3],1,1);
    p2 = randi([1 4],1,1);
    if (p1 == 1)
        stepSize = 0;
    elseif (p1 == 2)
        stepSize = 0.5;
    elseif (p1 == 3)
        stepSize = 1;
    end
        if (p2 == 1)
        angle = 0;      % Right
    elseif (p2 == 2)
        angle = pi/2;   % Up
    elseif (p2 == 3)
        angle = pi;     % Left
    elseif (p2 == 3)
        angle = 3*pi/2; % Down
    end
    x = stepSize* cos(angle);   %cartesian to polar
    y = stepSize* sin(angle);   %cartesian to polar
 
    xpos = xpos + x;
    ypos = ypos + y;
    d=sqrt(xpos^2 + ypos^2);
    if d>r
        xpos = xpos - 2*x;
        ypos = ypos - 2*y;
    end
    
end    
    
%% Task 4

n = 10;
position = 0;
dis = 0;
sum = 0;
avg = 0;
for j=0:1000    % number of Simulations
    position=0;
for i=0:n    % i is the number of steps from 1 to n
  R = rand;
  if R <= 0.5   % p
    position = - unifrnd(0,1); % uniform continuous RV
  elseif R > 0.5    % 1-p
     position = unifrnd(0,1);  % uniform continuous RV
  end
sum = sum + position;
end
dis = dis + sum;
end
avg = dis/1000


 %% Task 5

 
r=100;  %Radius
stepSize = 0;
angle = 0;
x = 0;
y = 0;
xpos = 0;
ypos = 0;
count = 0;
for i = 1:1000
    
    stepSize = unifrnd(0,1);    % uniform continuous RV
    angle = unifrnd(0,2*pi);    % uniform continuous RV
    x = stepSize* cos(angle);   %cartesian to polar
    y = stepSize* sin(angle);   %cartesian to polar
 
    xpos = xpos + x;
    ypos = ypos + y;
    d=sqrt(xpos^2 + ypos^2);
    if d>r
        xpos = xpos - x^2;
        ypos = ypos - y^2;
    end
    
end
    
%% Task 7

r=100;
stepSize = 0;
angle = 0;
x = 0;
y = 0;
xpos = 0;
ypos = 0;
count = 0;
for i = 1:1000
    
    p1 = randi([1 3],1,1);
    
    if (p1 == 1)
        stepSize = 0;
    elseif (p1 == 2)
        stepSize = 0.5;
    elseif (p1 == 3)
        stepSize = 1;
    end
    angle = unifrnd(0,2*pi);    % uniform continuous RV
    x = stepSize* cos(angle);   %cartesian to polar
    y = stepSize* sin(angle);   %cartesian to polar
 
    xpos = xpos + x;
    ypos = ypos + y;
    d=sqrt(xpos^2 + ypos^2);
    if d>r
        xpos = xpos - x;
        ypos = ypos - y;
    end
    
end


