%read read log file a particular line alone, extract variable experssion
%alone
function A=minelog(f_name)

Natoms=findlog(f_name,'%na%','n_atoms');
Tenergy=findlog(f_name,'%te%','t_ene');
Coene=findlog(f_name,'%co%', 'c_patom');
Lconst=findlog(f_name,'%lc%', 'l_const');

A=[Natoms, Tenergy, Coene, Lconst];

