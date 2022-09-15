function varargout = jwj_UserTotalEmissions_Team11(varargin)
% JWJ_USERTOTALEMISSIONS_TEAM11 MATLAB code for jwj_UserTotalEmissions_Team11.fig
%      JWJ_USERTOTALEMISSIONS_TEAM11, by itself, creates a new JWJ_USERTOTALEMISSIONS_TEAM11 or raises the existing
%      singleton*.
%
%      H = JWJ_USERTOTALEMISSIONS_TEAM11 returns the handle to a new JWJ_USERTOTALEMISSIONS_TEAM11 or the handle to
%      the existing singleton*.
%
%      JWJ_USERTOTALEMISSIONS_TEAM11('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JWJ_USERTOTALEMISSIONS_TEAM11.M with the given input arguments.
%
%      JWJ_USERTOTALEMISSIONS_TEAM11('Property','Value',...) creates a new JWJ_USERTOTALEMISSIONS_TEAM11 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before jwj_UserTotalEmissions_Team11_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to jwj_UserTotalEmissions_Team11_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help jwj_UserTotalEmissions_Team11

% Last Modified by GUIDE v2.5 01-Dec-2021 19:05:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @jwj_UserTotalEmissions_Team11_OpeningFcn, ...
                   'gui_OutputFcn',  @jwj_UserTotalEmissions_Team11_OutputFcn, ...
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


% --- Executes just before jwj_UserTotalEmissions_Team11 is made visible.
function jwj_UserTotalEmissions_Team11_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to jwj_UserTotalEmissions_Team11 (see VARARGIN)

% Choose default command line output for jwj_UserTotalEmissions_Team11
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes jwj_UserTotalEmissions_Team11 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
foodEmissions = evalin('base', 'foodEmissions');
carEmissions = evalin('base', 'carEmissions'); 
utilEmissions = evalin('base', 'utilEmissions'); 
totalEmissions = evalin('base', 'totalEmissions');
avgCitFoodEmissions = evalin('base', 'avgCitFoodEmissions');
avgCitCarEmissions = evalin('base', 'avgCitCarEmissions');
avgCitUtilEmissions = evalin('base', 'avgCitUtilEmissions');
avgCitTotalEmissions = evalin('base', 'avgCitTotalEmissions');

set(handles.('food'),'String',['Your monthly grocery emissions are contributing to ' num2str(foodEmissions) ' lbs of carbon dioxdide emissions per year.']);
set(handles.('car'),'String',['Your monthly driving is contributing to ' num2str(carEmissions) ' lbs of carbon dioxide per year. ']);
set(handles.('house'),'String',['Your monthly utilities are contributing to ' num2str(utilEmissions) ' lbs of carbon dioxide per year. ']);
set(handles.('total'),'String',['Your combined annual emissions are ' num2str(totalEmissions) ' lbs of carbon dioxide per year. ']);

X = categorical({'Food','Car','Utility','Total'});
X = reordercats(X,{'Food','Car','Utility','Total'});
Y= [foodEmissions carEmissions utilEmissions totalEmissions];
b = bar(X,Y);
title('User Emissions')
ylabel('Pounds of CO2 (lbs)')
Lim = max([foodEmissions carEmissions utilEmissions totalEmissions avgCitFoodEmissions avgCitCarEmissions avgCitUtilEmissions avgCitTotalEmissions]);
ylim([0 Lim])
b.FaceColor = 'flat';
if foodEmissions > avgCitFoodEmissions
    b.CData(1,:) =[1 0 0]; %red
else 
    b.CData(1,:) =[0 1 0]; %green
end
if carEmissions > avgCitCarEmissions
    b.CData(2,:) =[1 0 0]; %red
else 
    b.CData(2,:) =[0 1 0]; %green
end
if utilEmissions > avgCitUtilEmissions
    b.CData(3,:) =[1 0 0]; %red
else 
    b.CData(3,:) =[0 1 0]; %green
end
if totalEmissions > avgCitTotalEmissions
    b.CData(4,:) =[1 0 0]; %red
else 
    b.CData(4,:) =[0 1 0]; %green
end
movegui(gcf,'center')





% --- Outputs from this function are returned to the command line.
function varargout = jwj_UserTotalEmissions_Team11_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Exit.
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
titlepage
close(jwj_UserTotalEmissions_Team11);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jcl_UtilitiesInputPage_team11
close(jwj_UserTotalEmissions_Team11);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jwj_TotalvsAverage_Team11
close(jwj_UserTotalEmissions_Team11);
