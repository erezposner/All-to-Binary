function  SaveFile2Binary(filename,size,data,precision_for_size,precision_for_data)
%SaveFile2Binary - stores image data to a binary file with image size as
%the first two values
%
% Syntax:  [output1,output2] = SaveFile2Binary(filename,size,data,precision_for_size,precision_for_data)
%
% Inputs:
%    filename - the file output's name
%    size - 1x2 array containing the image size - width first then height
%    size - 1x2 array containing the image size - width first then height
%    precision_for_size - precision for the size values see
%    https://fr.mathworks.com/help/matlab/ref/fwrite.html for more
%    information
%    precision_for_data - precision for the data values see
%    https://fr.mathworks.com/help/matlab/ref/fwrite.html for more
%    information


% Example: 

% precision_for_size = 'uint32';
% precision_for_data='single';
% T_image = image';
% SaveFile2Binary('MTF_001_CAM_1280x960.bin',size(T_image), T_image(:),precision_for_size,precision_for_data)
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: 
%    https://fr.mathworks.com/help/matlab/ref/fwrite.html for more
%    information

% Author: Erez Posner
data = data';
data = data(:);
fid = fopen(filename,'w');
fwrite(fid,size,precision_for_size);
fwrite(fid,data,precision_for_data);
fclose(fid);
