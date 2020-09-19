B = read_file2mat(13666,14383,'Tempcgunk.txt');
% col2(lz), col4(ke)
% KE_chunk = B(:,4);
% 
% K_b = 8.617333262145e-5; %eV per K
% 
% T_chunk = KE_chunk/(1.5*K_b);
plot(B(:,2),B(:,4))

