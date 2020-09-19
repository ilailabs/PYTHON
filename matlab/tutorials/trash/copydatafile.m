function copydatafile(file)
mkdir('temp');
for l=5:5:60
    folder_name=strcat('Cu_',num2str(l),'Free');
    cd(folder_name)
    newfilename=strcat(num2str(l),file);
    copyfile(file,newfilename)
    movefile(newfilename,'../temp');
    cd('..')
end
    