clc
clear
close all

addpath('include')

%%%%%% Robot Model Definition
biTri(1,1,1) = 1; biTri(1,2,1) = 0; biTri(1,3,1) = 0; biTri(1,4,1) = 0;
biTri(2,1,1) = 0; biTri(2,2,1) = 1; biTri(2,3,1) = 0; biTri(2,4,1) = 0;
biTri(3,1,1) = 0; biTri(3,2,1) = 0; biTri(3,3,1) = 1; biTri(3,4,1) = 0.175;
biTri(4,1,1) = 0; biTri(4,2,1) = 0; biTri(4,3,1) = 0; biTri(4,4,1) = 1;

biTri(1,1,2) = -1; biTri(1,2,2) = 0;  biTri(1,3,2) = 0; biTri(1,4,2) = 0;
biTri(2,1,2) = 0; biTri(2,2,2) = 0;  biTri(2,3,2) = 1; biTri(2,4,2) = 0;
biTri(3,1,2) = 0; biTri(3,2,2) = 1;  biTri(3,3,2) = 0; biTri(3,4,2) = 0.108;
biTri(4,1,2) = 0; biTri(4,2,2) = 0;  biTri(4,3,2) = 0; biTri(4,4,2) = 1;

biTri(1,1,3) = 0; biTri(1,2,3) = 0; biTri(1,3,3) = 1;  biTri(1,4,3) = 0.105;
biTri(2,1,3) = -1; biTri(2,2,3) = 0; biTri(2,3,3) = 0;  biTri(2,4,3) = 0;
biTri(3,1,3) = 0; biTri(3,2,3) = -1; biTri(3,3,3) = 0;  biTri(3,4,3) = 0;
biTri(4,1,3) = 0; biTri(4,2,3) = 0; biTri(4,3,3) = 0;  biTri(4,4,3) = 1;

biTri(1,1,4) = 0; biTri(1,2,4) = 1;  biTri(1,3,4) = 0; biTri(1,4,4) = -0.1455;
biTri(2,1,4) = 0; biTri(2,2,4) = 0;  biTri(2,3,4) = -1; biTri(2,4,4) = 0;
biTri(3,1,4) = -1; biTri(3,2,4) = 0;  biTri(3,3,4) = 0; biTri(3,4,4) = 0.3265;
biTri(4,1,4) = 0; biTri(4,2,4) = 0;  biTri(4,3,4) = 0; biTri(4,4,4) = 1;

biTri(1,1,5) = 0; biTri(1,2,5) = 0; biTri(1,3,5) = 1;  biTri(1,4,5) = 0.095;
biTri(2,1,5) = 0; biTri(2,2,5) = -1; biTri(2,3,5) = 0; biTri(2,4,5) = 0;
biTri(3,1,5) = 1; biTri(3,2,5) = 0; biTri(3,3,5) = 0;  biTri(3,4,5) = 0;
biTri(4,1,5) = 0; biTri(4,2,5) = 0; biTri(4,3,5) = 0;  biTri(4,4,5) = 1;

biTri(1,1,6) = 0; biTri(1,2,6) = 0;  biTri(1,3,6) = 1; biTri(1,4,6) = 0;
biTri(2,1,6) = 0; biTri(2,2,6) = -1;  biTri(2,3,6) = 0; biTri(2,4,6) = 0;
biTri(3,1,6) = 1; biTri(3,2,6) = 0;  biTri(3,3,6) = 0; biTri(3,4,6) = 0.325;
biTri(4,1,6) = 0; biTri(4,2,6) = 0;  biTri(4,3,6) = 0; biTri(4,4,6) = 1;

jointType = [0,0,0,0,0,0];


numberOfJoints = 6;

% simulation variables 
ts = 0.1;
t_start = 0.0;
t_end = 10.0;
t = t_start:ts:t_end;



%%%%%%% Kinematic Simulation %%%%%%%

for i = t
    
    % TODO 
  
    % simulating the robot
    q = KinematicSimulation(q, q_dot,ts, qmin, qmax);
    
  
end
