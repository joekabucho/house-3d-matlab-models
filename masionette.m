function varargout = masionette(varargin)
% MASIONETTE MATLAB code for masionette.fig
%      MASIONETTE, by itself, creates a new MASIONETTE or raises the existing
%      singleton*.
%
%      H = MASIONETTE returns the handle to a new MASIONETTE or the handle to
%      the existing singleton*.
%
%      MASIONETTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MASIONETTE.M with the given input arguments.
%
%      MASIONETTE('Property','Value',...) creates a new MASIONETTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before masionette_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to masionette_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help masionette

% Last Modified by GUIDE v2.5 17-Nov-2018 11:20:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @masionette_OpeningFcn, ...
                   'gui_OutputFcn',  @masionette_OutputFcn, ...
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


% --- Executes just before masionette is made visible.
function masionette_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to masionette (see VARARGIN)

% Choose default command line output for masionette
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes masionette wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = masionette_OutputFcn(hObject, eventdata, handles) 
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
patch([0,30,30,0],[0,0,10,10],[0,0,0,0],'blue')%base
patch([0,30,30,0],[0,0,0,0],[0,0,20,20],'red')%front
patch([0,30,30,0],[10,10,10,10],[0,0,20,20],'green')%back
patch([0,0,0,0],[10,0,0,10],[0,0,20,20],'yellow')%left
patch([30,30,30,30],[10,0,0,10],[0,0,20,20],'yellow')%right
patch([0,30,30,0],[0,0,10,10],[20,20,20,20],'white')%ceiling
patch([0,30,30,0],[0,0,10,10],[10,10,10,10],'blue')%mid floor
patch([0,0,0],[10,0,5],[20,20,25],'yellow')%roofing wall front
patch([30,30,30],[10,0,5],[20,20,25],'yellow')%roofing wall back
patch([0,30,30,0],[0,0,5,5],[20,20,25,25],'red')%roof front
patch([0,30,30,0],[10,10,5,5],[20,20,25,25],'red')%roof front
patch([0,0,0,0],[6,4,4,6],[0,0,8,8],'white')%left door
patch([0,0,0,0],[6.5,4.5,4.5,6.5],[12,12,18,18],'white')%left window outer
patch([0,0,0,0],[5.5,3.5,3.5,5.5],[12,12,18,18],'white')%left window inner1
patch([30,30,30,30],[8,2,2,8],[2,2,8,8],'white')%right window 
patch([30,30,30,30],[7,1,1,7],[2,2,8,8],'white')%right window 
patch([30,30,30,30],[8,2,2,8],[12,12,18,18],'white')%right window top
patch([30,30,30,30],[7,1,1,7],[12,12,18,18],'white')%right window 
patch([12,14,14,12],[0,0,0,0],[0,0,7,7],'white')%maindoor right
patch([14,16,16,14],[0,0,0,0],[0,0,7,7],'white')%maindoor left
patch([4,6,6,4],[0,0,0,0],[6,6,9,9],'white')%main left window
patch([6,8,8,6],[0,0,0,0],[6,6,9,9],'white')%main left window
patch([20,22,22,20],[0,0,0,0],[6,6,9,9],'white')%main right window
patch([22,24,24,22],[0,0,0,0],[6,6,9,9],'white')%main right window
patch([4,6,6,4],[0,0,0,0],[12,12,18,18],'white')%main left top window
patch([6,8,8,6],[0,0,0,0],[12,12,18,18],'white')%main left top window
patch([12,14,14,12],[0,0,0,0],[12,12,18,18],'white')%main mid top window
patch([14,16,16,14],[0,0,0,0],[12,12,18,18],'white')%main left top window
patch([20,22,22,20],[0,0,0,0],[12,12,18,18],'white')%main left top window
patch([22,24,24,22],[0,0,0,0],[12,12,18,18],'white')%main left top window
patch([30,30,30,30],[0.1,10,10,0.1],[0,0,10,10],'red')%wall tableroom
patch([0.1,30,30,0.1],[6,6,6,6],[0,0,10,10],'yellow')%wall tableroom
patch([20,20,20,20],[10,6,6,10],[0,0,10,10],'green')%wall tableroom





% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
patch([15,15,15,15],[0,0,10,10],[10,10,20,20],'red')%wall tableroom

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
patch([15,30,30,15],[5,5,5,5],[10,10,20,20],'green')%wall tableroom

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
patch([0,30,30,0],[5,5,5,5],[10,10,20,20],'blue')%wall tableroom

% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
patch([10,10,10,10],[0,0,5,5],[10,10,20,20],'black')

% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
patch([10,10,10,10],[0,0,10,10],[10,10,20,20],'black')%wall tableroom
% Hint: get(hObject,'Value') returns toggle state of radiobutton6
