function varargout = bungallow(varargin)
% BUNGALLOW MATLAB code for bungallow.fig
%      BUNGALLOW, by itself, creates a new BUNGALLOW or raises the existing
%      singleton*.
%
%      H = BUNGALLOW returns the handle to a new BUNGALLOW or the handle to
%      the existing singleton*.
%
%      BUNGALLOW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BUNGALLOW.M with the given input arguments.
%
%      BUNGALLOW('Property','Value',...) creates a new BUNGALLOW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bungallow_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bungallow_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bungallow

% Last Modified by GUIDE v2.5 17-Nov-2018 11:03:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bungallow_OpeningFcn, ...
                   'gui_OutputFcn',  @bungallow_OutputFcn, ...
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


% --- Executes just before bungallow is made visible.
function bungallow_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bungallow (see VARARGIN)

% Choose default command line output for bungallow
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bungallow wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bungallow_OutputFcn(hObject, eventdata, handles) 
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
patch([0,40,40,0],[0,0,10,10],[0,0,0,0],'blue')%base
patch([0,40,40,0],[0,0,0,0],[0,0,10,10],'red')%front
patch([0,40,40,0],[10,10,10,10],[0,0,10,10],'green')%back
patch([0,0,0,0],[10,0,0,10],[0,0,10,10],'yellow')%left
patch([40,40,40,40],[10,0,0,10],[0,0,10,10],'yellow')%right
patch([0,40,40,0],[0,0,10,10],[10,10,10,10],'white')%ceiling
patch([0,0,0],[10,0,5],[10,10,15],'yellow')%roofing wall front
patch([40,40,40],[10,0,5],[10,10,15],'yellow')%roofing wall back
patch([0,40,40,0],[0,0,5,5],[10,10,15,15],'red')%roof front
patch([0,40,40,0],[10,10,5,5],[10,10,15,15],'red')%roof front
patch([15,25,25,15],[0,0,0,0],[0,0,6,6],'blue')%door
patch([2,7,7,2],[0,0,0,0],[2,2,5,5],'white')%window1
patch([7,11,11,7],[0,0,0,0],[2,2,5,5],'white')%window1
patch([2,7,7,2],[0,0,0,0],[3,3,6,6],'white')%window1
patch([7,11,11,7],[0,0,0,0],[3,3,6,6],'white')%window1
patch([27,32.5,32.5,27],[0,0,0,0],[2,2,5,5],'white')%window2
patch([32.5,38,38,32.5],[0,0,0,0],[2,2,5,5],'white')%window2
patch([27,32.5,32.5,27],[0,0,0,0],[3,3,6,6],'white')%window2
patch([32.5,38,38,32.5],[0,0,0,0],[3,3,6,6],'white')%window2
patch([0,0,0,0],[2,5,5,2],[2,2,5,5],'white')%windowleft
patch([0,0,0,0],[5,8,8,5],[2,2,5,5],'white')%windowleft
patch([0,0,0,0],[2,2,5,5],[5,8,8,5],'white')%windowleft
patch([0,0,0,0],[5,8,8,5],[5,5,8,8],'white')%windowleft
patch([40,40,40,40],[2,5,5,2],[2,2,5,5],'white')%windowright
patch([40,40,40,40],[5,8,8,5],[2,2,5,5],'white')%windowright
patch([40,40,40,40],[2,2,5,5],[5,8,8,5],'white')%windowright
patch([40,40,40,40],[5,8,8,5],[5,5,8,8],'white')%windowright
patch([30,30,30,30],[0.1,10,10,0.1],[0,0,10,10],'red')%wall tableroom
patch([0.1,30,30,0.1],[6,6,6,6],[0,0,10,10],'yellow')%wall tableroom
patch([20,20,20,20],[10,6,6,10],[0,0,10,10],'green')%wall tableroom

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
patch([0.1,39.9,39.9,0.1],[6,6,6,6],[0,0,10,10],'black')%wall tableroom

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
patch([30,39.9,39.9,30],[3,3,3,3],[0,0,10,10],'blue')
% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
patch([30,39.9,39.9,30],[7,7,7,7],[0,0,10,10],'blue')
% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
patch([30,39.9,39.9,30],[8.5,8.5,8.5,8.5],[0,0,10,10],'blue')
% Hint: get(hObject,'Value') returns toggle state of radiobutton5
