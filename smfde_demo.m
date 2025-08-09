function smfde_demo
clc;
clear all;
addpath nsst_toolbox

% Specify input and output directories
input_path = 'input_images';
output_path = 'output_images';

% Create the output directory if it doesn't exist
if ~exist(output_path, 'dir')
    mkdir(output_path);
end
% Get a list of all files in the input folder
file_list = dir(fullfile(input_path, '*.*'));  % All file types

% Define image extensions
image_exts = {'.jpg', '.JPG', '.png', '.bmp', '.jpeg', '.JPEG'};

% Filter out non-image files
file_list = file_list(arrayfun(@(f) any(endsWith(f.name, image_exts, 'IgnoreCase', true)), file_list));



for k = 1:length(file_list)
    im_name = fullfile(input_path, file_list(k).name);

    % Read the hazy image
    I_hazy = imread(im_name);
    tic
    amef_im = smfde(im2double(I_hazy));
    time = toc;

    % Display image properties and processing time
    [m, n, ~] = size(I_hazy);
    disp(['Image: ', file_list(k).name])
    disp(['Resolution: ', num2str(m), ' x ', num2str(n)])
    disp(['Processing time: ', num2str(time), ' seconds'])

    % Save the enhanced image to the output directory
    [~, filename, ext] = fileparts(file_list(k).name);
    output_filename = fullfile(output_path, [filename '_enhanced' ext]);
    imwrite(amef_im, output_filename);

    % Optionally display the original hazy image and the enhanced image
    % figure, imshow(I_hazy), title('Original Hazy Image')
    % figure, imshow(amef_im), title('Enhanced Image')

    % Optionally wait for user input before moving to the next image
    % pause;
end

end
