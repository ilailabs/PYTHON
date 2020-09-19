filename='dumpfile.dump';

nline=nlines(filename);
natoms=readline(4,4,filename);
b=9+natoms;
eof=0;
nf=nline/b;

    %reading for i frame%
    for i=1:nf
    ts(i)=readline(eof+2,eof+2,filename);
    bsize(:,:,i)=readline(eof+6,eof+8,filename);
    D(:,:,i)=readline(eof+10,eof+b,filename);
    eof=eof+b;
    end
    
 % --- Sub functions --- %
 
 %nlines%
function n=nlines(filename)
fid=fopen(filename);
count = 0;
while true
  if ~ischar( fgetl(fid) ); break; end
  count = count + 1;
end
fclose(fid);
n=count;
end
    %nlines%
    
    %readline()%
    function A=readline(a,b,filename)
%enter a line form, b upto, and filename
fid=fopen(filename);
for i=1:a-2
tline = fgetl(fid);
end
string=fgetl(fid);
temp=[];
q=[];
for i=a:b
        temp=fgetl(fid);
        temp=str2num(temp);
        q=[q;temp];
end
fclose(fid);
A=q;
    end
    %readline()%