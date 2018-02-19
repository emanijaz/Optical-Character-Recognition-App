
% warning off %#ok<WNOFF>

clc, close all, clear all
img=imread('images/test4.jpg');
figure,imshow(img);   % Show image
title('INPUT IMAGE WITH NOISE')

if size(img,3)==3 %RGB image
    img=rgb2gray(img);  % Convert to gray scale
end


threshold = graythresh(img);  
img =~im2bw(img,threshold);
figure,imshow(img);
title('before bwareaopen')
% Remove all object containing fewer than 15 pixels
img = bwareaopen(img,15);
rem_img=img;
word_matrix=[ ];
word_index = 1;
% figure,imshow(re), title('ím re');
%Opens text.txt as file for write
fid = fopen('text.txt', 'wt');
load templates
global templates
% Compute the number of letters in template file
temp_cols=size(templates,2);
while true
    %Fcn 'lines_crop' separate lines in text
    [first_line rem_img]=lines_extract(rem_img); %first_line= first line, re= remaining image
    n=0;
    spacevector = [];      % to compute the total spaces betweeen
                           % adjacent letter
    remletters_img = first_line;              
   
    while true
        %Fcn 'letter_crop' separate letters in a line
       [fc, remletters_img, space]=letter_extract(remletters_img);  %fc =  first letter in the line
                                       %rc =  remaining cropped line
                                       %space = space between the letter
                                       %   cropped and the next letter
       %uncomment below line to see letters one by one
       %figure,imshow(fc);pause(0.5)
       img_r = imresize(fc,[42 24]);   %resize letter so that correlation
                                       %can be performed
       n = n + 1;
       spacevector(n)=space;
       
       %Fcn 'read_letter' correlates the cropped letter with the images
       %given in the folder 'letters_numbers'
       letter = letter_recog(img_r);
       
       %letter concatenation
%        word_matrix = [word_matrix letter];
        word_matrix(word_index) = letter;
        word_index = word_index+1;
       
       if isempty(remletters_img)  %breaks loop when there are no more characters
           break;
        end
    end
    
        %-------------------------------------------------------------------
        
        %
    max_space = max(spacevector);
    no_spaces = 0;
    
%      for x= 1:n   %loop to introduce space at requisite locations
%        if spacevector(x+no_spaces)> (0.75 * max_space)
%           no_spaces = no_spaces + 1;
%             for m = x:n
%               word_matrix(n+x-m+no_spaces)=word_matrix(n+x-m+no_spaces-1);
%             end
%            word_matrix(x+no_spaces) = ' ';
%            spacevector = [0 spacevector];
%        end
%      end
   
            
    %fprintf(fid,'%s\n',lower(word_matrix));%Write 'word_matrix' in text file (lower)
    fprintf(fid,'%s\n',word_matrix);%Write 'word_matrix' in text file (upper)
    % Clear 'word_matrix' variable
    word_matrix=[ ];
    word_index=1;
    %*When the sentences finish, breaks the loop
    if isempty(rem_img)
        break
    end
end
fclose(fid);
%Open 'text.txt' file
winopen('text.txt')
clear all