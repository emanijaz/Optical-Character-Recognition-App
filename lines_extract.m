

%%%%%%%%%%%%%%%%%%%%%%%% lines_extract function is used for extracting
%%%%%%%%%%%%%%%%%%%%%%%% single line from image passed as parameter
function [fline_img remline_img]=lines_extract(img)

[r c]=find(img);                          %% gives cordinates of all 'ON' pixels in image
img=img(min(r):max(r),min(c):max(c));     %% extruncating over boundaries 
rows=size(img,1);
for s=1:rows              %% iterating on rows of image
    if any(img(s,:))==0                  %% if all elements in respective row are zero ... finding where lines end
        first_line=img(1:s-1, :);        %% First line matrix
        remaining_lines=img(s:end, :);   %% Remaining line matrix
        [r1 c1]=find(first_line);        %% %% gives cordinates of all 'ON' pixels in first_line matrix
        minR = min(r1);                  %% finding row coordinate where first ON pixel comes ( line starts coming)
        maxR = max(r1);                  %% finding row coordinate where last ON pixel comes ( line is ending)
        minCol = min(c1);                %% finding column coordinate where first ON pixel comes ( line starts coming)
        maxCol = max(c1);                %% finding column coordinate where last ON pixel comes ( line is ending)
        fline_img=first_line(minR:maxR , minCol:maxCol);  %% cropping boundary extra image 
             
        [r2 c2]=find(remaining_lines);
        minR = min(r2);
        maxR = max(r2);                 %% same process  of finding min max rows and cols with remaining line image
        minCol = min(c2);
        maxCol = max(c2);
        remline_img=remaining_lines(minR:maxR , minCol:maxCol);   %% cutting over boundaries  
%          
        break
    else
        fline_img=img;       
        remline_img=[ ];
    end
end


