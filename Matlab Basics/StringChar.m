str1 ='Hello';
str2 ='Matlab';
str3 ='world';
combined = char(str1,str3,str2)
% combined =
%
%   3×6 char array
%
%     'Hello '
%     'world '
%     'Matlab'
%% 
words ={'Hello' 'world','Matlab'};
strjoin (words,' '); %' 'space betwwen words
%ans =Hello world Matlab

%% 
names={'Ahmed','Abdo','Malek'};
surnames={'Mohamed','Ezz','Mostafa'};
Fullname= char(strcat(names,' ',surnames))
% Fullname =
% 
%   3×12 char array
% 
%     'AhmedMohamed'
%     'AbdoEzz     '
%     'MalekMostafa'
%strcat = both cell array types

