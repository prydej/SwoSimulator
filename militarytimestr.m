function mtime = militarytimestr(time)

%This function converts a six-element time vector to a string displaying
%military time.

%Extract hours
hours = num2str(time(4));

%Format hours
while length(hours) < 2
    hours = ['0', hours];
end

%Extract minutes
minutes = num2str(time(5));

%Format minutes
while length(minutes) < 2
    minutes = ['0', minutes];
end

%Put it all together
mtime = [hours, minutes];

end