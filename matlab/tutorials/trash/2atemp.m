fileId = fopen('GroupAtoms.txt','w');
for i=1:length(grp)
fprintf(fileId,'%s\n',num2str(grp{i}));
end
fclose(filePh);
