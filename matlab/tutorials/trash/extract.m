clear
% read form gb_details file %

fname = 'gb_details.csv'
itable = readtable(fname)
icell = table2cell(itable)
imy = icell(1:3:end,:)
sig_cell = imy(:,2);
m_cell = imy(:,4);
the_cell =imy(:,3);
n_cell = imy(:,5);
n=length(sig_cell)

for i=1:n
    str1 = char(sig_cell(i));
    str1 = strsplit(str1);
    sig(i)=str2num(str1{1,1});

    str2 = char(m_cell(i));
    str2 = strsplit(str2);
    m(i)=str2num(str2{1,1});
    
    str4 = char(the_cell(i));
    str4 = strsplit(str4);
    the(i)=str2num(str4{1,1});
    
    str3 = (n_cell(i));
    n(i)=str3{1,1};


end
the=the';
csvwrite('the.txt', the)
csvwrite('sig.txt', sig)
csvwrite('m.txt', m)
csvwrite('n.txt', n)