S1 = [0 0 0 0 0 0 1 1 1 1 1 1]';
R1 = [0 0 2 0 1 2 0 1 1 2 2 0]';
R2 = [0 0 2 0 1 2 0 1 1 1 1 0]';

I1 = mi_lc_hist([S1 R1],[1 2],R2,1);
I2 = mi_lc_hist_old(S1,0,R1,1);

I3 = cmi_lc_hist(S1,0,R1,1,R2,1);