function [b]=getbasis()
  A=[0 0 0 1];
  B=[0.5 0.5 0.5 2];
  a=basis_symm8a(A);
  c=basis_symm8b(B);
  b=[a;c];
  end