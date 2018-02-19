

             %%%%%%%%%% letter_extract function is used for extracting
             %%%%%%%%%% letters from a line which is passed as image in parameter 
function [firstletter_img, remletters_img, space]=letter_extract(img)

[r c]=find(img);                         %% gives cordinates of all 'ON' pixels in image
img=img(min(r):max(r),min(c):max(c));    %% extruncating over boundaries 
cols=size(img,2);                        %% getting number of columns

% figure,imshow(img);

for s=1:cols                              %% itrating through all columns
    if any(img(:,s))==0                   %% finding where letter end
        firstletter_img=img(:,1:s-1);     %% First letter matrix
%         figure,imshow(first_letter);
%         
        remaining_letters=img(:,s:end);   %% Remaining line matrix
%         figure,imshow(remaining_letters);
%         
        [r1 c1]=find(firstletter_img);    
        minR = min(r1);                  %% finding row coordinate where first ON pixel comes ( letter starts coming)
        maxR = max(r1);                  %% finding row coordinate where last ON pixel comes ( letter is ending)
        minCol = min(c1);                %% finding column coordinate where first ON pixel comes ( letter starts coming)
        maxCol = max(c1);                %% finding column coordinate where last ON pixel comes ( letter is ending)
        firstletter_img=firstletter_img(minR:maxR , minCol:maxCol);  %% extruncating over boundaries from first letter matrix
        [r2 c2]=find(remaining_letters);     
        minR = min(r2);                  %% same process  of finding min max rows and cols with remaining letters image
        maxR = max(r2);
        minCol = min(c2);
        maxCol = max(c2);
        remletters_img=remaining_letters(minR:maxR , minCol:maxCol);  %% extruncating over boundaries from remaining letter matrix
        space = size(remaining_letters,2)-size(remletters_img,2);   %% calculates space between firstLetter and adjacent one.. 
        %%%%  counting space in form of empty columns
       break
    else
        firstletter_img=img;             
        remletters_img=[ ];
        space = 0;
    end
end

            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

