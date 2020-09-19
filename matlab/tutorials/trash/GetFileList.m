% '''this script gets the name of the file names in that folder'''

%flist=dir('*.txt');
flist=dir('*.txt');
n=length(flist);
j=1;
for i=1:n
a{j}=flist(i).name;
j=j+1;
end