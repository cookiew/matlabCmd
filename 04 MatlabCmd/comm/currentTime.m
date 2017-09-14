function str = currentTime()
 
str = '000, 000. 0000, 0000. 00:00:00 AM';
 
mon1 = 'Jan';
mon2 = 'Feb';
mon3 = 'Mar';
mon4 = 'Apr';
mon5 = 'May';
mon6 = 'Jun';
mon7 = 'Jul';
mon8 = 'Aug';
mon9 = 'Sep';
mon10 = 'Oct';
mon11 = 'Nov';
mon12 = 'Dec';


% D = '05-29-2016'

% [daynumber,dayname]=weekday(D)

time  = clock;
year  = time(1);
month = time(2);
date  = time(3);
hour  = time(4);
minute = time(5);
second = round(time(6));

D =[num2str(month),'-',num2str(date),'-',num2str(year)];
[dayNumber,dayName] = weekday(D);

% output
% weekday
str(1:3) = dayName;
% month
eval(sprintf('str(6:8) = mon%d;',month));
% date
if date < 10
    str(11:12) = ['0',num2str(date)];
else 
    str(11:12) = num2str(date);
end
if date == 1 || date == 21 || date == 31
    str(13:14) = 'st';
elseif date == 2 || date == 23
    str(13:14) = 'nd';
elseif date == 3
    str(13:14) = 'rd';
else
    str(13:14) = 'th';
end
% year
str(17:20) = num2str(year);
% hour
if hour > 12
    hour = hour - 12;
    str(32:33) = 'PM'; 
elseif hour == 12
    str(32:33) = 'PM';
end
if hour < 10
    str(23:24) =  ['0',num2str(hour)];
else
    str(23:24) = num2str(hour);
end
% minutes
if minute < 10
    str(26:27) = ['0',num2str(minute)];
else 
    str(26:27) = num2str(minute);
end
% second
if second < 10
    str(29:30) = ['0',num2str(second)];
else 
    str(29:30) = num2str(second);
end
    
