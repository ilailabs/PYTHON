function theta=abwvec(v1,v2)
lv1=sqrt(dot(v1,v1));
lv2=sqrt(dot(v2,v2));
theta=acosd(dot(v1,v2)./(lv1*lv2));