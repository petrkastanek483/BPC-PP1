function varargout = project(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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
end

% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
clc;
set(handles.vysledek, 'Visible', 'off');  


handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

end
% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
end


function b_Callback(hObject, eventdata, handles)
end

% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end

function a_Callback(hObject, eventdata, handles)

end
% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function n_Callback(hObject, eventdata, handles)

end
% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end

function fce_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
end
function fce_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in obd.
function obd_Callback(hObject, eventdata, handles)
set(handles.vysledek, 'Visible', 'on');
 max=str2double(get(handles.b, 'String'));
 min=str2double(get(handles.a, 'String'));
 n=str2double(get(handles.n, 'String'));
 fce=get(handles.fce, 'String');

[obd,obd1,obdx]=obdelnik(fce,min,max,n);
plot(obdx,obd1);
grid on;

set(handles.vysledek, 'String', obd);
end
% --- Executes on button press in lich.
function lich_Callback(hObject, eventdata, handles)
set(handles.vysledek, 'Visible', 'on');
max=str2double(get(handles.b, 'String'));
min=str2double(get(handles.a, 'String'));
n=str2double(get(handles.n, 'String'));
fce=get(handles.fce, 'String');

[lich,lich1,lichx]=lichobeznik(fce,min,max,n);
plot(lichx,lich1);
grid on;

set(handles.vysledek, 'String', lich);
end
% --- Executes on button press in sim.
function sim_Callback(hObject, eventdata, handles)
set(handles.vysledek, 'Visible', 'on');
max=str2num(get(handles.b, 'String'));
min=str2num(get(handles.a, 'String'));
n=str2num(get(handles.n, 'String'));
fce=get(handles.fce, 'String');

[sim,sim1,simx]=simpson(fce,min,max,n);
plot(simx,sim1);
grid on;

set(handles.vysledek, 'String', sim);
end


function vysledek_Callback(hObject, eventdata, handles)
end


% --- Executes during object creation, after setting all properties.
function vysledek_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
