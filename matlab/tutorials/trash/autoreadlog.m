%reads set of lines
function A=autoreadlog(strt,step,endd,defaltfilename)
%strt=5;step=5;endd=50;defaltfilename='log.lammps';

% A_t=minelog(strcat(num2str(strt),defaltfilename));
% sz=size(A_t);
% zeros(sz);
A=[];

for i=strt:step:endd
    filename=strcat(num2str(i),defaltfilename);
    temp=minelog(filename);
    A=[A;temp];
end

save;
