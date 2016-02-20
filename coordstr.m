function coords = coordstr(position)

%This function takes a position in seconds north and west, and converts it
%into properly formatted coordinates.

%Determine north or south
if position(1) > 0
    lat = 'N';
else
    lat = 'S';
    position(1) = abs(position(1));
end

%Format degrees
degrees = floor(position(1) / 3600);
sdegrees = num2str(degrees);
while length(sdegrees) < 3
    sdegrees = ['0', sdegrees];
end

%Format minutes
minutes = floor((position(1) - degrees * 3600) / 60);
sminutes = num2str(minutes);
while length(sminutes) < 2
    sminutes = ['0', sminutes];
end

%Format seconds
sseconds = num2str(round(mod(position(1), 60)));
while length(sseconds) < 2
    sseconds = ['0', sseconds];
end

%Consolidate latitude
latitude = [sdegrees, '° ' sminutes, ''' ', sseconds, '" ', lat];

%Determine east or west
if position(2) > 0
    long = 'W';
else
    long = 'E';
    position(2) = abs(position(2));
end

%Format degrees
degrees = floor(position(2) / 3600);
sdegrees = num2str(degrees);
while length(sdegrees) < 3
    sdegrees = ['0', sdegrees];
end

%Format minutes
minutes = floor((position(2) - degrees * 3600) / 60);
sminutes = num2str(minutes);
while length(sminutes) < 2
    sminutes = ['0', sminutes];
end

%Format seconds
sseconds = num2str(round(mod(position(2), 60)));
while length(sseconds) < 2
    sseconds = ['0', sseconds];
end

%Consolidate latitude
longitude = [sdegrees, '° ' sminutes, ''' ', sseconds, '" ', long];

%Put it all together
coords = [latitude, ', ' longitude];

end
