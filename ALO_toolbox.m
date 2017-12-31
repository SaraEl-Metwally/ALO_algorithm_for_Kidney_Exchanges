%______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                        %
%  maximum length for extracted exchanges is three(k=3)                %
%                                                                      %
% Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"   %
%                                                                      %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                   %
%                                                                      %
%   Based on code devloped by S. Mirjalili, The Ant Lion Optimizer     %
%   S. Mirjalili, The Ant Lion Optimizer                               %
%   Advances in Engineering Software ,2015                             %
%   DOI: http://dx.doi.org/10.1016/j.advengsoft.2015.01.010            %
%______________________________________________________________________%


function varargout = ALO_toolbox(varargin)
                                                                 

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ALO_toolbox_OpeningFcn, ...
                   'gui_OutputFcn',  @ALO_toolbox_OutputFcn, ...
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

% --- Executes just before ALO_toolbox is made visible.
function ALO_toolbox_OpeningFcn(hObject, ~, handles, varargin)
% Choose default command line output for ALO_toolbox
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);



% --- Outputs from this function are returned to the command line.
function varargout = ALO_toolbox_OutputFcn(~, ~, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;




function IterNo_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function IterNo_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function LowerBound_Callback(hObject, eventdata, handles)

  % --- Executes during object creation, after setting all properties.
function LowerBound_CreateFcn(hObject, eventdata, ~)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
   

end


function UpperBound_Callback(hObject, ~, handles)
% hObject    handle to UpperBound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of UpperBound as text
%        str2double(get(hObject,'String')) returns contents of UpperBound as a double

% --- Executes during object creation, after setting all properties.
function UpperBound_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UpperBound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Dim_Callback(hObject, eventdata, handles)
% hObject    handle to Dim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Dim as text
%        str2double(get(hObject,'String')) returns contents of Dim as a double

% --- Executes during object creation, after setting all properties.
function Dim_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function CostFunction_Callback(hObject, ~, handles)
% hObject    handle to CostFunction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CostFunction as text
%        str2double(get(hObject,'String')) returns contents of CostFunction as a double

% --- Executes during object creation, after setting all properties.
function CostFunction_CreateFcn(hObject, eventdata, ~)
% hObject    handle to CostFunction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)



function edit8_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 %close(handles.figure1)


 % --- Executes when uipanel3 is resized.
function uipanel3_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in Arcs.
function Arcs_Callback(hObject, eventdata, handles)
% hObject    handle to Arcs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Arcs contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Arcs


% --- Executes during object creation, after setting all properties.
function Arcs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Arcs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in SOL.
function SOL_Callback(hObject, eventdata, handles)
% hObject    handle to SOL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SOL contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SOL


% --- Executes during object creation, after setting all properties.
function SOL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SOL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

 function ed_time_Callback(~, eventdata, handles)
% hObject    handle to ed_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_time as text
%        str2double(get(hObject,'String')) returns contents of ed_time as a double


% --- Executes during object creation, after setting all properties.
function ed_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Popsize_Callback(hObject, eventdata, handles)
% hObject    handle to Popsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Popsize as text
%        str2double(get(hObject,'String')) returns contents of Popsize as a double


% --- Executes during object creation, after setting all properties.
function Popsize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Popsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%-------------------------- ---------------Main---------------------------------------------------------------------------%

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

load graph.mat;
SearchAgents_no=str2num(get(handles.Popsize,'String')); %pop size
Max_iteration=str2num(get(handles.IterNo,'String'));    % iteration

chain3_index=n2;
cycle3_index=n4;
graph_nodes=n;                      % load number of node in graph
graph_pop=Pop;                      % load all chains and cyclesin graph

Graph_dim=Sol_dim;                  % dim represent number of cycles and chains
 
lb=-100;
ub=100;


% intitilzation for GUI edit box
set(handles.edit9,'String','');
set(handles.edit10,'String','');
set(handles.SOL,'String','');
set(handles.ed_time,'String','');

tic;
tstart = tic;
[Best_score,Best_pos,feaisble,indc]=ALO(SearchAgents_no,Max_iteration,lb,ub,Graph_dim,graph_nodes,graph_pop,chain3_index,cycle3_index,handles);
telapsed = toc(tstart);

set(handles.ed_time,'String',num2str(telapsed));

% to add solutin in solutin list box
SOL_values='';
for i=1:length(Best_pos)
    if(Best_pos(i)==1)
        
         dim=size(graph_pop{i},2);
         if(dim==3)
         SOL_values=sprintf([SOL_values,num2str(graph_pop{i}(1)),'-->',num2str(graph_pop{i}(2)),'\n']);
         end
         
         if(dim==5)
         SOL_values=sprintf([SOL_values,num2str(graph_pop{i}(1)),'-->',num2str(graph_pop{i}(2)),', ',num2str(graph_pop{i}(3)),'-->',num2str(graph_pop{i}(4)),'\n' ]);
         end
         
          if(dim==7)
         SOL_values=sprintf([SOL_values,num2str(graph_pop{i}(1)),'-->',num2str(graph_pop{i}(2)),', ',num2str(graph_pop{i}(3)),'-->',num2str(graph_pop{i}(4)),', ',num2str(graph_pop{i}(5)),'-->',num2str(graph_pop{i}(6)),'\n']);
          end
        
    end
end
set(handles.SOL,'String','');
SOLL=strread(SOL_values,'%s','delimiter','\n');
set(handles.SOL,'String',SOLL);
set(handles.SOL,'Value',1);

set(handles.Arcs,'Max',100,'Min',0);
d=find(Best_pos==1);

set(handles.Arcs,'Value',d); 



set(handles.edit9,'String', num2str(Best_pos) );
if(feaisble==1)
set(handles.edit10,'String', num2str(Best_score) );
else
set(handles.edit10,'String', 'Infeasible Solution!' );
set(handles.SOL,'Max',20,'Min',0);
set(handles.SOL,'Value',indc(1,:)); 

end

   
% --- Executes on button press in data_button  (Create new  graph).
function data_button_Callback(hObject, eventdata, handles)

set(handles.pushbutton1,'Enable','off');
set(handles.edit9,'String','');
set(handles.edit10,'String','');
set(handles.Arcs,'String','');
set(handles.SOL,'String','');
set(handles.ed_time,'String','');
set(handles.itertext,'String','The current iteration is');
set(handles.optimumtext,'String','The current optimal value is');


% create random  graph

Pop=[];
Altu=[];
txt='';
Sol_dim=-1;
[txt,Pop,n,Altu,Sol_dim,n1,n2,n3,n4]= Get_data(20);
set(handles.Arcs,'Value',1);

if(isempty(Pop))
set(handles.Arcs,'String','Try again..');    
else
set(handles.pushbutton1,'Enable','on');
List_values=strread(txt,'%s','delimiter','\n');
set(handles.Arcs,'String',List_values);
save('graph.mat','Pop','n','Altu','Sol_dim','n1','n2','n3','n4');
end


% --- Executes on button press in loadbtn.
function loadbtn_Callback(hObject, eventdata, handles)
% hObject    handle to loadbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Enable','off');
set(handles.edit9,'String','');
set(handles.edit10,'String','');
set(handles.Arcs,'String','');
set(handles.SOL,'String','');
set(handles.ed_time,'String','');
set(handles.itertext,'String','The current iteration is');
set(handles.optimumtext,'String','The current optimal value is');
cla(handles.figure1);

% load saved data to create graph
Pop=[];
Altu=[];
txt='';
Sol_dim=-1;

[txt,Pop,n,Altu,Sol_dim,n1,n2,n3,n4]= Load_data();

if(length(Altu)>75)
ax=handles.axes4;
text(0.5, 0.5, 'Too large to show....', 'Parent',ax);
end

set(handles.Arcs,'Value',1);
if(isempty(Pop))
set(handles.Arcs,'String','Try again..');    
else
set(handles.pushbutton1,'Enable','on');
List_values=strread(txt,'%s','delimiter','\n');
set(handles.Arcs,'String',List_values);
    save('graph.mat','Pop','n','Altu','Sol_dim','n1','n2','n3','n4');
end
