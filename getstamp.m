function stamp = getstamp(coords, velocity, oldtime, spcourse, pspeed)

%This function takes the state at the last fix and calculates the current
%state. It also updates the log file and returns the information needed to
%update the log array.

% compute time difference
time = clock;
dtime = time - oldtime;
multipliers = [24, 60, 60, 1];
tdiff = 0;
for i = 1:4
    tdiff = tdiff + dtime(i+2) * multipliers(i);
end

% compute multiplier for longitude traveled
dlat = coords(1) / 3600;
longdmult = cosd(dlat);

% compute new coords
coords = [coords(1) + velocity(1) * tdiff, coords(2) + velocity(2) * tdiff * longdmult];

% create stamp
stamp = [time, coords, velocity];

% stamp log file with time/perceived course and speed/coordinates

end
