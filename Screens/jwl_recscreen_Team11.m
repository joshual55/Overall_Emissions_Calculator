% This function was made by Jacob Levine
% "On my honor, I, Jacob Levine, have neither given nor received
% unathorized aid in doing this assignment."

function varargout = jwl_recscreen_Team11(varargin)
% JWL_RECSCREEN_TEAM11 MATLAB code for jwl_recscreen_Team11.fig
%      JWL_RECSCREEN_TEAM11, by itself, creates a new JWL_RECSCREEN_TEAM11 or raises the existing
%      singleton*.
%
%      H = JWL_RECSCREEN_TEAM11 returns the handle to a new JWL_RECSCREEN_TEAM11 or the handle to
%      the existing singleton*.
%
%      JWL_RECSCREEN_TEAM11('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JWL_RECSCREEN_TEAM11.M with the given input arguments.
%
%      JWL_RECSCREEN_TEAM11('Property','Value',...) creates a new JWL_RECSCREEN_TEAM11 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before jwl_recscreen_Team11_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to jwl_recscreen_Team11_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help jwl_recscreen_Team11

% Last Modified by GUIDE v2.5 01-Dec-2021 18:31:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @jwl_recscreen_Team11_OpeningFcn, ...
                   'gui_OutputFcn',  @jwl_recscreen_Team11_OutputFcn, ...
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


% --- Executes just before jwl_recscreen_Team11 is made visible.
function jwl_recscreen_Team11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to jwl_recscreen_Team11 (see VARARGIN)

% Choose default command line output for jwl_recscreen_Team11
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes jwl_recscreen_Team11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
totalEmissions = evalin('base', 'totalEmissions');
avgCitTotalEmissions = evalin('base', 'avgCitTotalEmissions');
%compare the total emissions
if totalEmissions < avgCitTotalEmissions
set(handles.('text14'),'String','Your TOTAL output emissions are lower than the average emissions output so just keep being mindful of the environment!');
else
    set(handles.('text14'),'String','Your TOTAL output emissions are higher than the average total emissions output. Try to be smarter about how you manage your emissions output. See our recommendation for categories you have HIGH emissions outputs for.');
end
movegui(gcf,'center')

% --- Outputs from this function are returned to the command line.
function varargout = jwl_recscreen_Team11_OutputFcn(hObject, eventdata, handles) 
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
titlepage
close(jwl_recscreen_Team11);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jwj_TotalvsAverage_Team11
close(jwl_recscreen_Team11);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jwl_EndScreen_Team11
close(jwl_recscreen_Team11);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
foodEmissions = evalin('base', 'foodEmissions');
avgCitFoodEmissions = evalin('base', 'avgCitFoodEmissions');
%pull the global values and compare them to make recommendation
if foodEmissions < avgCitFoodEmissions
set(handles.('text10'),'String','Your FOOD output emissions are lower than the average emissions output. Keep being mindful of your grocery store purchases, thank you!');
else
    set(handles.('text10'),'String','Your FOOD output emissions are higher than the average emissions output. Try to only purchase food you need, and make sure you are not throwing away fresh food!');
end
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
carEmissions = evalin('base', 'carEmissions');
avgCitCarEmissions = evalin('base', 'avgCitCarEmissions');
%pull the global values and compare them to make recommendation
if carEmissions < avgCitCarEmissions
set(handles.('text10'),'String','Your AUTO output emissions are lower than the average emissions output. Keep being mindful of your vehicle usage, thank you!');
else
    set(handles.('text10'),'String','Your AUTO output emissions are higher than the average emissions output. Look into local bus routes or alternative modes of transportation, like biking, to lower your emissions!');
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
utilEmissions = evalin('base', 'utilEmissions');
avgCitUtilEmissions = evalin('base', 'avgCitUtilEmissions');
%pull the global values and compare them to make recommendation
if utilEmissions < avgCitUtilEmissions
set(handles.('text10'),'String','Your HOUSEHOLD UTILITIES output emissions are lower than the average emissions output. Keep being mindful of your household utilities usage, thank you!');
else
    set(handles.('text10'),'String','Your HOUSEHOLD UTILITIES output emissions are higher than the average emissions output. Make sure you are turning off the lights when you do not need them, and shorter showers are an easy way to lower water usage!');
end
