fname = "hexPlane.lmp";
nl = nlines(fname);
AB = read_file2mat(14,nl,fname);
cA = AB(:,3:5);
[delx, lx] = findRepeatDist(cA(:,1));
[dely, ly] = findRepeatDist(cA(:,2));

cAn = sortrows(cA,2);
cAn = sortrows(cA,1);

write_lmpdatafile_m(cAn, delx, 26.63);
