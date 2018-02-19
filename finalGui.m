function varargout = finalGui(varargin)
% FINALGUI MATLAB code for finalGui.fig
%      FINALGUI, by itself, creates a new FINALGUI or raises the existing
%      singleton*.
%
%      H = FINALGUI returns the handle to a new FINALGUI or the handle to
%      the existing singleton*.
%
%      FINALGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALGUI.M with the given input arguments.
%
%      FINALGUI('Property','Value',...) creates a new FINALGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalGui

% Last Modified by GUIDE v2.5 03-Dec-2017 09:31:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalGui_OpeningFcn, ...
                   'gui_OutputFcn',  @finalGui_OutputFcn, ...
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


% --- Executes just before finalGui is made visible.
function finalGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalGui (see VARARGIN)

% Choose default command line output for finalGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finalGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in browse_button.
function browse_button_Callback(hObject, eventdata, handles)
% hObject    handle to browse_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile('*', 'Pick an Image');
		img=imread(filename);
		axes(handles.axes1);
		imshow(img);
		handles.img=img;
        % Update handles structure
guidata(hObject, handles);


% --- Executes on button press in ocr_test.
function ocr_test_Callback(hObject, eventdata, handles)
% hObject    handle to ocr_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I = handles.img;                              %% getting image stored in handle property 
% % figure,imshow(img);   % Show image
% title('INPUT IMAGE WITH NOISE')

if size(I,3)==3                   %% checks if image is RGB 
    I=rgb2gray(I);              %% Convert to gray scale 
end


fileOpen = fopen('output.txt', 'wt');
load templates
global templates

t = graythresh(I);        %% get threshold value using graythresh function
I =im2bw(I,t);        %% conversion to black and white image and taking complement of it
I=~I;
img = bwareaopen(I,14);          %% Remove noise fewer than 14 pixels by opening method
rem_img=I;
word_matrix=[ ];                   %% mattix for storing all letters of single line
word_index = 1;

while true
    
    [first_line rem_img]=lines_extract(rem_img); %function to separate lines
    n=0;
   % spacecount = [];      % to compute the total spaces betweeen
                           % adjacent letter
    remletters_img = first_line;              
   
    while true
            %% letter_extract function extracts single letter from line one by one 
       [letter, remletters_img, space]=letter_extract(remletters_img);
                                      
                                    
       img_r = imresize(letter,[42 24]);    %% resize our image to perform correlation 
       n = n + 1;
       spacecount(n)=space;      %% adding space count to spacevector
       
                    %% function letter_recog compares cropped letter to all database images using correlation function
        letter = letter_recog(img_r);
        word_matrix(word_index) = letter;   %% appending recognized letter to our matrix 
        word_index = word_index+1;          %% increment in index
       
       if isempty(remletters_img)          %% breaks loop when there are no more characters are to recognized
           break;
        end
    end
    
        %introducing space
        
    max_space = max(spacecount);
    no_spaces = 0;
    
     for x= 1:n   %insert space at required location
       if spacecount(x+no_spaces)> (0.5 * max_space)
          no_spaces = no_spaces + 1;
            for m = x:n
              word_matrix(n+x-m+no_spaces)=word_matrix(n+x-m+no_spaces-1);
            end
           word_matrix(x+no_spaces) = ' ';
           spacecount = [0 spacecount];
       end
     end

    fprintf(fileOpen,'%s\n',word_matrix);   %% writing to output txt file
    
    if isempty(rem_img)          %% if no image is remaining to test then break loop
        break
    end
    word_matrix=[ ];  % Clear 'word_matrix' matrix
    word_index=1;     
end



                    %%%%%%%%%%%%%%%%%%%%%% writing to gui output box %%%%%%%%%%%%%%%%%%%
                    
fileOpen = fopen('output.txt');
set(handles.output_box,'String',''); %% clearing output text field
chr ='';
while ~feof(fileOpen)
    line = fgetl(fileOpen);    %% reading single line from output file
    chr = [chr line];     %% appending to chr array 
    chr = [chr newline];  %% appending newline
end
set(handles.output_box,'String', chr);          %% placing chr array to output box in gui 
% while ~feof(fileOpen)   %% reading from text file 
%     ftext = fgetl(fileOpen);
%     
%      currString = get(handles.output_box,'String');
%      currString = strcat(currString,  ftext);
% %      currString = strcat(currString, newline);
%     set(handles.output_box,'String',currString);
% end
fclose(fileOpen);
guidata(hObject, handles);
