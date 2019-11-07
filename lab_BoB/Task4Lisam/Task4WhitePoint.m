function CImage = WhitePoint(OImage,type)
%WhitePoint Type conversion and white point correction
%   Convert OImage to an image with specified white point
%
%% Who has done it
%
% Author: Same LiU-ID/name as in the Lisam submission
% Co-author: You can work in groups of max 2, this is the LiU-ID/name of
% the other member of the group
%
%% Syntax of the function
%
% Input arguments:  OImage original image of type uint8 or double
%                   type: character variable describing type of CImage,
%                       values are 'b' (uint8), 'd' (double) 
% Output arguments: CImage color corrected image
%
%   A minimal solution must be able to handle the cases where 
%   OImage is of type uint8 or a double array and CImage is of the 
%   type uint8 or double.
%
% You MUST NEVER change the first line
%
%% Basic version control (in case you need more than one attempt)
%
% Version: 1
% Date: today
%
% Gives a history of your submission to Lisam.
% Version and date for this function have to be updated before each
% submission to Lisam (in case you need more than one attempt)
%
%% General rules
%
% 1) Don't change the structure of the template by removing %% lines
%
% 2) Document what you are doing using comments
%
% 3) Before submitting make the code readable by using automatic indentation
%       ctrl-a / ctrl-i
%
% 4) In case a task requires that you have to submit more than one function
%       save every function in a single file and collect all of them in a
%       zip-archive and upload that to Lisam. NO RAR, NO GZ, ONLY ZIP!
%       All non-zip archives will be rejected automatically
%
% 5) Often you must do something else between the given commands in the
%       template
%
%

%% Your code starts here
%

%% The default output type is uint8 
% More information about handling of function arguments, string
% manipulation and basic data types can be found in WhitePoint.pdf
% OImage is the IMAGE and not the filename
%

if (nargin < 2)
    otype = 'b';
else
    if strcmp(type,'b')
        otype = 'b';
    else
        otype = 'd';
    end
end;

% The type of the output image is either uint8 (type 'b') or double (type 'd') 
    
%% Find out the type of the input image 
% You can assume that it is either uint8 or double
%
    if isa(OImage,'uint8')
        InputImage = % convert to double
    else
        InputImage = OImage;
    end

%% Display the input image and pick the white point

fh = figure;
imshow %display the input image 
whitept = ginput(1); % select the point that should be white
rgbvec = squeeze(... % This is the RGB vector at the point you selected
%% Generate the result image CImage
switch otype
    case 'b' %uint8
        CImage
    case 'd' %double
        CImage
    otherwise 
%         if you do the extended version add your code here
end 


%% Scaling of CImage such that the pixel at whitept is
% (maxpix,maxpix,maxpix) 
% where maxpix is the maximum value in a channel which depends on the 
% type of the resulting CImage (see otype)
%
% Also truncate pixel values greater than maxpix to maxpix
% 

% Here you need several lines of code where rgbvec defines the scaling
% after the scaling you have to truncate the pixel values
% Finally you have to convert the result to the datatype given by otype

CImage =

%% Cleaning
close(fh)


end

