

%%%%%%%%%%%%%%%%%%%%%%%% letter_recog function compares incoming letter
%%%%%%%%%%%%%%%%%%%%%%%% image with all images stored in
%%%%%%%%%%%%%%%%%%%%%%%% templates(database) using correlation function and
%%%%%%%%%%%%%%%%%%%%%%%% .Image which gives highest correlation value is
%%%%%%%%%%%%%%%%%%%%%%%% most similar one or our required letter
function letter=letter_recog(img)
%load database
global templates
corrMatrix=[ ];         %% matrix stores value of all correlations
corrIndex=1;

 for n=1:size(templates,2)  %% iterates through all templates matrix
    c=corr2( templates{1,n},img);  %% correlating image with database image
    corrMatrix(corrIndex) = c;  %% storing correlation result in matrix
    corrIndex = corrIndex+1;
 end
    %%%%%%%%%%%%%%%%%%%% finding index having maximum correlation which
    %%%%%%%%%%%%%%%%%%%% corresponds to index of required image in
    %%%%%%%%%%%%%%%%%%%% database%%%
 
maxCorr = max(corrMatrix);  
index=0;
for i=1:size(corrMatrix,2)
    if corrMatrix(i) == maxCorr
        index=i;
        break;
    end
end

%%%%%%%%%%%%%% index value is corresponding to image index in database %%%%%
if (index>=1) && (index <=6)
    letter='A';
elseif (index>=7 && index <=11)
    letter='B';
elseif (index>=12 && index <=13)
    letter='C';
elseif (index>=14 && index <=18)
    letter='D';
elseif (index>=19 && index <=23)
    letter='E';
elseif (index>=24 && index <=25)
    letter='F';
elseif (index>=26 && index <=32)
    letter='G';
elseif (index>=33 && index <=38)
    letter='H';
elseif (index>=39 && index <=41)
    letter='I';
elseif (index>=42 && index <=46)
    letter='J';
elseif (index>=47 && index <=52)
    letter='K';
elseif (index>=53 && index <=54)
    letter='L';
elseif (index>=55 && index <=59)
    letter='M';
elseif (index>=60 && index <=62)
    letter='N';
elseif (index>=63 && index <=66)
    letter='O';
elseif (index>=67 && index <=69)
    letter='P';
elseif (index>=70 && index <=76)
    letter='Q';
elseif (index>=77 && index <=82)
    letter='R';
elseif (index>=83 && index <=86)
    letter='S';
elseif (index>=87 && index <=89)
    letter='T';
elseif (index>=90 && index <=94)
    letter='U';
elseif (index>=95 && index <=97)
    letter='V';
elseif (index>=98 && index <=104)
    letter='W';
elseif (index>=105 && index <=106)
    letter='X';
elseif (index==107)
    letter='Y';
elseif (index>=108 && index <=109)
    letter='Z';
    %*-*-*-*-*
elseif (index>=110 && index <=114)
    letter='1';
elseif (index>=115 && index <=122)
    letter='2';
elseif (index>=123 && index <=130)
    letter='3';
elseif (index>=131 && index <=134)
    letter='4';
elseif (index>=135 && index <=140)
    letter='5';
elseif (index>=141 && index <=145)
    letter='6';
elseif (index>=146 && index <=150)
    letter='7';
elseif (index>=151 && index <=154)
    letter='8';
elseif (index>=155 && index <=161)
    letter='9';
elseif (index>= 162 && index <=168)
    letter='0';
    %********
    %lowercase letters
elseif (index>=169 && index <=181)
    letter='a';
elseif (index>=182 && index <=185)
    letter='b';
elseif (index>=186 && index <=188)
    letter='c';
elseif (index>=189 && index <=193)
    letter='d';
elseif (index>=194 && index <=199)
    letter='e';
elseif (index>=200 && index <=202)
    letter='f';
elseif (index>=203 && index <=208)
    letter='g';
elseif (index>=209 && index <=214)
    letter='h';
elseif (index==215)
    letter='i';
elseif (index>=216 && index <=218)
    letter='j';
elseif (index>=219 && index <=221)
    letter='k';
elseif (index>=222 && index <=225)
    letter='l';
elseif (index>=226 && index <=229)
    letter='m';
elseif (index>=230 && index <=234)
    letter='n';
elseif (index>=235 && index <=236)
    letter='o';
elseif (index>=237 && index <=242)
    letter='p';
elseif (index>=243 && index <=245)
    letter='q';
elseif (index>=246 && index <=251)
    letter='r';
elseif (index>=252 && index <=255)
    letter='s';
elseif (index>=256 && index <=259)
    letter='t';
elseif (index>=260 && index <=265)
    letter='u';
elseif (index>= 266 && index <= 271)
    letter='v';
elseif (index>= 272 && index <= 275)
    letter='w';
elseif (index>=276 && index <=277)
    letter='x';
elseif (index>=278 && index <=281)
    letter='y';
elseif (index>=282 && index <=283)
    letter='z';
elseif (index==284)
    letter='I';
else
    letter='I';
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

