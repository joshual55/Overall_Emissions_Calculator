function varargout = jcl_CarInputPage_team11(varargin)
%JCL_CARINPUTPAGE_TEAM11 MATLAB code file for jcl_CarInputPage_team11.fig
%      JCL_CARINPUTPAGE_TEAM11, by itself, creates a new JCL_CARINPUTPAGE_TEAM11 or raises the existing
%      singleton*.
%
%      H = JCL_CARINPUTPAGE_TEAM11 returns the handle to a new JCL_CARINPUTPAGE_TEAM11 or the handle to
%      the existing singleton*.
%
%      JCL_CARINPUTPAGE_TEAM11('Property','Value',...) creates a new JCL_CARINPUTPAGE_TEAM11 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to jcl_CarInputPage_team11_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      JCL_CARINPUTPAGE_TEAM11('CALLBACK') and JCL_CARINPUTPAGE_TEAM11('CALLBACK',hObject,...) call the
%      local function named CALLBACK in JCL_CARINPUTPAGE_TEAM11.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help jcl_CarInputPage_team11

% Last Modified by GUIDE v2.5 07-Dec-2021 21:13:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @jcl_CarInputPage_team11_OpeningFcn, ...
                   'gui_OutputFcn',  @jcl_CarInputPage_team11_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before jcl_CarInputPage_team11 is made visible.
function jcl_CarInputPage_team11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for jcl_CarInputPage_team11
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes jcl_CarInputPage_team11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
movegui(gcf,'center')


% --- Outputs from this function are returned to the command line.
function varargout = jcl_CarInputPage_team11_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exitButton.
function exitButton_Callback(hObject, eventdata, handles)
% hObject    handle to exitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
titlepage
close(jcl_CarInputPage_team11);


% --- Executes on button press in nextButton.
function nextButton_Callback(hObject, eventdata, handles)
% hObject    handle to nextButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
assignin('base', 'milesDriven', 52*get(handles.milesSlider,'Value')); % Store ANNUAL miles driven
close(jcl_CarInputPage_team11);
jcl_UtilitiesInputPage_team11


% --- Executes on slider movement.
function milesSlider_Callback(hObject, eventdata, handles)
% hObject    handle to milesSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
milesDriven = get(hObject,'Value');
set(handles.('milesText'),'String',num2str(milesDriven));


% --- Executes during object creation, after setting all properties.
function milesSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to milesSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in backButton.
function backButton_Callback(hObject, eventdata, handles)
% hObject    handle to backButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jcl_FoodInputPage_team11
close(jcl_CarInputPage_team11);
