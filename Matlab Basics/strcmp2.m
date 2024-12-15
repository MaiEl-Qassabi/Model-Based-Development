username= 'admin';
password ='secure123';

if strcmp(username,'admin') && strcmp(password,'secure123')
    disp('Correct');
else
    disp('Wrong');
end

% strcmp2
% Correct

%% 
str1='Hello World';
str2= 'Hello There';
res=strncmp(str1,str2,5)

% res =
% 
%   logical
% 
%    1

res2=strncmp(str1,str2,7)

% res2 =
% 
%   logical
% 
%    0