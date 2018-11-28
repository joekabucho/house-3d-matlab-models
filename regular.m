function varargout = regular(varargin)
% REGULAR MATLAB code for regular.fig
%      REGULAR, by itself, creates a new REGULAR or raises the existing
%      singleton*.
%
%      H = REGULAR returns the handle to a new REGULAR or the handle to
%      the existing singleton*.
%
%      REGULAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REGULAR.M with the given input arguments.
%
%      REGULAR('Property','Value',...) creates a new REGULAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before regular_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to regular_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help regular

% Last Modified by GUIDE v2.5 15-Nov-2018 19:01:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @regular_OpeningFcn, ...
                   'gui_OutputFcn',  @regular_OutputFcn, ...
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


% --- Executes just before regular is made visible.
function regular_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to regular (see VARARGIN)

% Choose default command line output for regular
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes regular wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = regular_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
patch([0,10,10,0],[5,5,0,0],[0,0,0,0],'blue')%base
patch([0,10,10,0],[5,5,5,5],[0,0,5,5],'red')%front
patch([0,10,10,0],[0,0,0,0],[0,0,5,5],'green')%back
patch([0,0,0,0],[0,5,5,0],[0,0,5,5],'yellow')%left
patch([10,10,10,10],[0,5,5,0],[0,0,5,5],'yellow')%right
patch([10,10,0,0],[0,5,5,0],[5,5,5,5],'white')%ceiling
patch([10,10,10],[0,5,2.5],[5,5,7.5],'yellow')%roofing wall front
patch([0,0,0],[0,5,2.5],[5,5,7.5],'yellow')%roofing wall front
patch([0,10,10,0],[0,0,2.5,2.5],[5,5,7.5,7.5],'red')%roof front
patch([0,10,10,0],[5,5,2.5,2.5],[5,5,7.5,7.5],'red')%roof front
patch([3.75,6.25,6.25,3.75],[0,0,0,0],[0,0,3,3],'blue')%door
patch([0.5,1.75,1.75,0.5],[0,0,0,0],[1,1,1.5,1.5],'white')%window1
patch([1.75,2.75,2.75,1.75],[0,0,0,0],[1,1,1.5,1.5],'white')%window1
patch([0.5,1.75,1.75,0.5],[0,0,0,0],[1.5,1.5,2,2],'white')%window1
patch([1.75,2.75,2.75,1.75],[0,0,0,0],[1.5,1.5,2,2],'white')%window1
patch([6.75,8.125,8.125,6.75],[0,0,0,0],[1,1,1.5,1.5],'white')%window2
patch([8.125,9.5,9.5,8.125],[0,0,0,0],[1,1,1.5,1.5],'white')%window2
patch([6.75,8.125,8.125,6.75],[0,0,0,0],[1.5,1.5,2,2],'white')%window2
patch([8.125,9.5,9.5,8.125],[0,0,0,0],[1.5,1.5,2,2],'white')%window2
patch([0,0,0,0],[1,2.5,2.5,1],[1,1,2.5,2.5],'white')%windowleft
patch([0,0,0,0],[2.5,4,4,2.5],[1,1,2.5,2.5],'white')%windowleft
patch([0,0,0,0],[1,1,2.5,2.5],[2.5,4,4,2.5],'white')%windowleft
patch([0,0,0,0],[2.5,4,4,2.5],[2.5,2.5,4,4],'white')%windowleft
patch([10,10,10,10],[1,2.5,2.5,1],[1,1,2.5,2.5],'white')%windowright
patch([10,10,10,10],[2.5,4,4,2.5],[1,1,2.5,2.5],'white')%windowright
patch([10,10,10,10],[1,1,2.5,2.5],[2.5,4,4,2.5],'white')%windowright
patch([10,10,10,10],[2.5,4,4,2.5],[2.5,2.5,4,4],'white')%windowright
patch([7,7,7,7],[0.1,5,5,0.1],[0,0,5,5],'red')%wall tableroom
patch([0.1,7,7,0.1],[3,3,3,3],[0,0,5,5],'yellow')%wall tableroom
patch([4,4,4,4],[5,3,3,5],[0,0,5,5],'green')%wall tableroom





% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
second=(patch([0.1,9.9,9.9,0.1],[3,3,3,3],[0,0,5,5],'black'));%wall tableroom
get(hObject,second)
% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
patch([7,9.9,9.9,7],[1.5,1.5,1.5,1.5],[0,0,5,5],'blue')%wall tableroom
% Hint: get(hObject,'Value') returns toggle state of radiobutton3
