function [time, coords, velocity] = getstamp(coords, velocity, oldtime, spcourse, pspeed);

%This function takes the state at the last fix and calculates the current
%state. It also updates the log file and returns the information needed to
%update the log array.

% compute current coordinates
time = clock;
dtime = time - oldtime;
dtime = dtime(end);
coords = [coords(1) + velocity(1) * dtime, coords(2) + velocity(2) * dtime];

% stamp log file with time/perceived course and speed/coordinates

end