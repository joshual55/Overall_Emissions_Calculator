% This page was produced by Joshua Lamb, Sebastian Windham, Justin Joseph,
% and Jacob Levine.

% "On our honor, we, Joshua Lamb, Sebastian Windham, Justin Joseph, and Jacob Levine, 
% have neither given nor received unathorized aid in doing this assignment."

function varargout = citationspage(varargin)
% CITATIONSPAGE MATLAB code for citationspage.fig
%      CITATIONSPAGE, by itself, creates a new CITATIONSPAGE or raises the existing
%      singleton*.
%
%      H = CITATIONSPAGE returns the handle to a new CITATIONSPAGE or the handle to
%      the existing singleton*.
%
%      CITATIONSPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CITATIONSPAGE.M with the given input arguments.
%
%      CITATIONSPAGE('Property','Value',...) creates a new CITATIONSPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before citationspage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to citationspage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help citationspage

% Last Modified by GUIDE v2.5 20-Nov-2021 18:09:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @citationspage_OpeningFcn, ...
                   'gui_OutputFcn',  @citationspage_OutputFcn, ...
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


% --- Executes just before citationspage is made visible.
function citationspage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to citationspage (see VARARGIN)

% Choose default command line output for citationspage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes citationspage wait for user response (see UIRESUME)
% uiwait(handles.figure1);
movegui(gcf,'center')


% --- Outputs from this function are returned to the command line.
function varargout = citationspage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exitButton.
function exitButton_Callback(hObject, eventdata, handles)
titlepage
close(citationspage);
% hObject    handle to exitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in backButton.
function backButton_Callback(hObject, eventdata, handles)
titlepage
close(citationspage);
% hObject    handle to backButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
