%clear;
%i=0;
n=1;

 for i=0:n;
     if (i>0);
         stop(song);
[file,path]=uigetfile();
fullpath=strcat(path,file);
[y,fs]= audioread(fullpath);

 song = audioplayer(y,fs);
 %play(song);
 
     else
        [file,path]=uigetfile();
fullpath=strcat(path,file);
[y,fs]= audioread(fullpath);

 song = audioplayer(y,fs);
 %play(song);
%  i=i+1;
%  n=n+1;
     end
     i=i+1;
 n=n+1;
     play(song);
 end

% last input for audioplayer can be 1 or 0 to choose which audio output
% player = audioplayer(y, fs, 16, 0); 
%  play(player);
% deploytool