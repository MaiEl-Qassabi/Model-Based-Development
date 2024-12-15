function varargout = AudioMain(varargin)
% AUDIOMAIN MATLAB code for AudioMain.fig
%      AUDIOMAIN, by itself, creates a new AUDIOMAIN or raises the existing
%      singleton*.
%
%      H = AUDIOMAIN returns the handle to a new AUDIOMAIN or the handle to
%      the existing singleton*.
%
%      AUDIOMAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUDIOMAIN.M with the given input arguments.
%
%      AUDIOMAIN('Property','Value',...) creates a new AUDIOMAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AudioMain_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AudioMain_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AudioMain

% Last Modified by GUIDE v2.5 29-Sep-2022 16:07:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AudioMain_OpeningFcn, ...
                   'gui_OutputFcn',  @AudioMain_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before AudioMain is made visible.
function AudioMain_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AudioMain (see VARARGIN)

% Choose default command line output for AudioMain
handles.output = hObject;
handles.prev_button=1; 
vol = 25;
 set(handles.volume,'value',vol);
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% Update handles structure
guidata(hObject, handles);
[x,path]=imread('E:\Matlab Round\audfile.jpg');
axes(handles.axes1);
imshow(x,path);
% UIWAIT makes AudioMain wait for user response (see UIRESUME)
% uiwait(handles.s1);


% --- Outputs from this function are returned to the command line.
function varargout = AudioMain_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in prev_button.


% --- Executes on button press in prev_button.
function prev_button_Callback(hObject, eventdata, handles)
% hObject    handle to prev_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.prev_button,'visible','on');
set(handles.output,'visible','off');


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song;
global slowsong ;
global medsong;
global fastsong;
%stop(song);

[file,path]=uigetfile();
handles.fullpath=strcat(path,file);
set(handles.audioname,'string', file);
[y,fs]= audioread(handles.fullpath);
%  volu=get(handles.volume,'value');
%  guide(hObject, handles);
song = audioplayer(y,fs);
slowsong = audioplayer(y,1.5*fs);
fastsong = audioplayer(y,2*fs);
medsong = audioplayer(y,1.75*fs);
axes(handles.axes2);
 plot(y,'b');
guide(hObject, handles);


% --- Executes during object creation, after setting all properties.
function audioname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to audioname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song;
global slowsong;
global fastsong;
global medsong;
stop (slowsong);
stop (fastsong);
stop (medsong);
play (song);

guide(hObject, handles);

% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song;
global slowsong;
global fastsong;
global medsong;
pause(song);
% pause(medsong);
% pause(fastsong);
% pause(slowsong);
guide(hObject, handles);

% --- Executes on button press in resume.
function resume_Callback(hObject, eventdata, handles)
% hObject    handle to resume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song;
global slowsong;
global fastsong;
global medsong;
resume(song);
% resume(fastsong);
% resume(medsong);
% resume(slowsong);
guide(hObject, handles);

% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song;
global slowsong;
global fastsong;
global medsong;
stop (song);
stop (fastsong);
stop (slowsong);
stop (medsong);
guide(hObject, handles);

% --- Executes on slider movement.
function volume_Callback(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% %global song
% volu=get(handles.volume,'value');
% new_volume=volu*handles.vol(1)
%  guidata(hObject,handles);
% play (new_volume);
% --- Executes during object creation, after setting all properties.
function volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in fast.
function fast_Callback(hObject, eventdata, handles)
% hObject    handle to fast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global song;
global slowsong;
global fastsong;
global medsong;
stop (song);
stop (slowsong);
stop (medsong);
play (fastsong);
% --- Executes on button press in medium.
function medium_Callback(hObject, eventdata, handles)
% hObject    handle to medium (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song;
global slowsong;
global fastsong;
global medsong;
stop (song);
stop (fastsong);
stop (slowsong);
play (medsong);

% --- Executes on button press in slow.
function slow_Callback(hObject, eventdata, handles)
% hObject    handle to slow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global song;
global slowsong;
global fastsong;
global medsong;
stop (song);
stop (fastsong);
stop (medsong);
play (slowsong);