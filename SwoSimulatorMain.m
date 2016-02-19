%MATLAB ship simulator by Jason Koch and Julian Pryde

clear
clc

% Take ship characteristics (turn radius at specific rudder angles, forard and aftward acceleration)
trads = zeros(6,2);
for i = 1:6
    prompt = sprintf('What is the tactical diameter of the ship at %d° rudder? (Yards): ', i * 5);
    tdia = input(prompt);
    trads(i, :) = [i * 5, tdia / 2];
end

facc = input('What is the forard acceleration of the ship when under power? (Knots/min): ');
aacc = input('What is the aftward acceleration of the ship when under reverse power? (Knots/min): ');

% Define drag deceleration as function of velocity
% We should discuss this. - Jason

% create random set and drift
setdrift = [rand * 5, rand * 5];

% Take initial course, speed, position,
pcourse = input('What is the initial course? (Degrees True): ');
pspeed = input('What is the initial speed? (Knots): ');
positionN = input('What are the initial north coordinates? (ddd mm ss) ', 's');
positionW = input('What are the initial west coordinates? (ddd mm ss) ', 's');
position = [0, 0];
position(1) = str2double(positionN(1:3)) * 3600 + str2double(positionN(5:6)) * 60 + str2double(positionN(8:9));
position(2) = str2double(positionW(1:3)) * 3600 + str2double(positionW(5:6)) * 60 + str2double(positionW(8:9));

% create uncertainty factor for course and speeds
course = pcourse + rand - 0.5;
speed = pspeed + rand - 0.5;

% Convert course and speed to a cartesian velocity vector in seconds per second.
velocity = [speed * cosd(course), speed * sind(course)] / 180;

choice = 'b';
while ~strcmp(choice, 'x')
    
    % Convert perceived course to string
    spcourse = num2str(pcourse);
    while length(spcourse) < 3
        spcourse = ['0', spcourse];
    end
    
    % display menu: take fix, end program, set new course and speeds
    clc
    fprintf('Steady on course %s° T; speed is %d knots.\n', spcourse, pspeed)
    fprintf('f: Take fix\n')
    fprintf('c: Change course and speed\n')
    fprintf('x: Quit program\n')
    choice = input('','s');
    
    % If take fix:
    % display current coordinates
    % stamp log file with time/perceived course and speed/coordinates
    % stamp array log with time/actual course and speed/coordinates
    % these will be in a function called getstamp
    
    % If set new course and speeds
    % Stamp both logs with coordinates and shit
    
    % function [end turn time, end turn coords] = turnSim(rud angle, true speed, true course, coords, perceived course, percieved speed)
    
    % create new uncertainty factor
    
    % @#$%^&* swear profusely at user
    
    % calculate duration of change
    
    % print "changing course and/or speed" for duration of change
    
    % replace course, speed, coords and time with new values
    
    % stamp dem logs
    
    % If end program
    %...
    
    % No Stopping!
    
    % return to top of program
    
    % If Ctrl+C then restart program
    
    % If power button pressed then restart program
    
    % If computer smashed with hammer then restart program on different computer
    
    % is no escape.
    
    % is no end.
    
    % SWO life or NO life.
    
    % fin.
end

% ???

% profit