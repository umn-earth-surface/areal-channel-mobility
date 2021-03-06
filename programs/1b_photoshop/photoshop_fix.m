% Get rid of hidden files from photoshop

clear all;
close all;

channel_system='XES02_slow_bl_fall';
chars = 23; % number of characters in filename, without the extension
filetypein='bmp';
filetypeout='jpg';
%if crop
%infile='/channelmap_input/images_photoshop';
%outfile='/channelmap_input/images';

%if smooth
infile='/channelmap_output/channelmaps_bmp_photoshop';
outfile='/channelmap_output/channelmaps_bmp_filtered';

indir=['/Volumes/My Book/decor4/files/' channel_system infile];
outdir=['/Volumes/My Book/decor4/files/' channel_system outfile];

cd(indir);

files=dir(['*.' filetypein]);

for z=241%:numel(files);
    cd(indir)
    A=files(z).name;
    B=importdata(A);
    C=[A(1:chars) ['.' filetypeout]];
    cd(outdir)
    imwrite(B, C, filetypeout);
end