% This page was produced by Joshua Lamb, Sebastian Windham, Justin Joseph,
% and Jacob Levine.

% "On our honor, we, Joshua Lamb, Sebastian Windham, Justin Joseph, and Jacob Levine, 
% have neither given nor received unathorized aid in doing this assignment."

% Preparing the environment
clc; clear;

% Get the full path of the current file
path = mfilename('fullpath');

% Remove the filename to get the folder path
for i = length(path):-1:1
    if path(i) == '\'
        for j = 1:1:length(path)-i+1
            path(i) = '';
        end
        break;
    end
end

% Add the subfolders to the current path
addpath(genpath([path '\Screens']));

% Clear unnecessary variables in base workspace
clear i;
clear j;
clear path;

% Load the title page to initiate the program
titlepage;