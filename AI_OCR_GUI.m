function varargout = AI_OCR_GUI(varargin)
% AI_OCR_GUI MATLAB code for AI_OCR_GUI.fig
%      AI_OCR_GUI, by itself, creates a new AI_OCR_GUI or raises the existing
%      singleton*.
%
%      H = AI_OCR_GUI returns the handle to a new AI_OCR_GUI or the handle to
%      the existing singleton*.
%
%      AI_OCR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AI_OCR_GUI.M with the given input arguments.
%
%      AI_OCR_GUI('Property','Value',...) creates a new AI_OCR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AI_OCR_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AI_OCR_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AI_OCR_GUI

% Last Modified by GUIDE v2.5 19-Apr-2017 14:20:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AI_OCR_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @AI_OCR_GUI_OutputFcn, ...
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


% --- Executes just before AI_OCR_GUI is made visible.
function AI_OCR_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AI_OCR_GUI (see VARARGIN)

% Choose default command line output for AI_OCR_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AI_OCR_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AI_OCR_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
          '*.*','All Files' },'mytitle',...
          'C:\Users\Jeevtesh Singh\Desktop\pics');
x=imread(strcat(pathname,filename));
imshow(x);
handles.x=x;
guidata(gcbo,handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
segment;

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%handles.uitable=t;
%set(handles.uitable1,'visible','on','Data',MyArrayOfString);
dist=imread('C:\Users\Jeevtesh Singh\Desktop\working\distance.jpg');
imshow(dist);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
testing;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OrigDlgH = ancestor(hObject, 'figure');
delete(OrigDlgH);
open AI_OCR_GUI;
