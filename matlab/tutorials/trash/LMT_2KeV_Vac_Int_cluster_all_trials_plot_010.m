clear all
clc
%% define condition
%1_V==Li_V==>>111111      %2_V==O_V===>>222222     %3_V==Ti_V==>>333333
%1_i==Li_i==>>444444      %2_i===O_i===>>555555    %3_i==Ti_i====>>666666
%1_2===Li_O===>>77777     %1_3===Li_Ti===>>88888   %2_1===O_Li===>>999999
%2_3==O_Ti====>>101010    %3_1==Ti_Li====>>111211  %3_2==Ti_Li====>>121212
%Vac_Int_1=load('LMT_2KeV_vacIntrstl_clusters_010_1.txt');
%Vac_Int_2=load('LMT_2KeV_vacIntrstl_clusters_010_2.txt');
Vac_Int_3=load('LMT_2KeV_vacIntrstl_clusters_010_3.txt');
Vac_Int_4=load('LMT_2KeV_vacIntrstl_clusters_010_4.txt');
Vac_Int_5=load('LMT_2KeV_vacIntrstl_clusters_010_5.txt');
Vac_Int_6=load('LMT_2KeV_vacIntrstl_clusters_010_6.txt');
Vac_Int_7=load('LMT_2KeV_vacIntrstl_clusters_010_7.txt');
Vac_Int_8=load('LMT_2KeV_vacIntrstl_clusters_010_8.txt');
%Vac_Int_9=load('LMT_2KeV_vacIntrstl_clusters_010_9.txt');
%Vac_Int_10=load('LMT_2KeV_vacIntrstl_clusters_010_10.txt');
%--------------------------
Vac_Int1=[Vac_Int_3;Vac_Int_4;Vac_Int_5;Vac_Int_6;Vac_Int_7;Vac_Int_8];
Vac_Int = sortrows(Vac_Int1,[1,2]);
j=1;k=1;l=1;m=1;n=1;p=1;Li_V6=zeros(10,1);
Li_V1=zeros(10,1);Li_V2=zeros(10,1);Li_V3=zeros(10,1);Li_V4=zeros(10,1);Li_V5=zeros(10,1);
for i=1:length(Vac_Int)
    if Vac_Int(i,1)==111110 
        if Vac_Int(i,2)==1
            Li_V1(j,1)=Vac_Int(i,3);
            j=j+1;   
        elseif Vac_Int(i,2)==2
            Li_V2(k,1)=Vac_Int(i,3);
            k=k+1;
         elseif Vac_Int(i,2)==3
            Li_V3(l,1)=Vac_Int(i,3);
            l=l+1;  
         elseif Vac_Int(i,2)==4
            Li_V4(m,1)=Vac_Int(i,3);
            m=m+1;
            elseif Vac_Int(i,2)==5
            Li_V5(n,1)=Vac_Int(i,3);
            n=n+1;        
        elseif Vac_Int(i,2)==6             
            Li_V6(p,1)=Vac_Int(i,3);             
            p=p+1;
        end
    end
end
%--------------------------
j=1;k=1;l=1;m=1;n=1;p=1;O_V6=zeros(10,1); O_V1=zeros(10,1);O_V2=zeros(10,1);O_V3=zeros(10,1);O_V4=zeros(10,1);O_V5=zeros(10,1);
for i=1:length(Vac_Int)
    if Vac_Int(i,1)==222220 
        if Vac_Int(i,2)==1
            O_V1(j,1)=Vac_Int(i,3);
            j=j+1;   
        elseif Vac_Int(i,2)==2
            O_V2(k,1)=Vac_Int(i,3);
            k=k+1;
         elseif Vac_Int(i,2)==3
            O_V3(l,1)=Vac_Int(i,3);
            l=l+1;  
         elseif Vac_Int(i,2)==4
            O_V4(m,1)=Vac_Int(i,3);
            m=m+1;
            elseif Vac_Int(i,2)==5
            O_V5(n,1)=Vac_Int(i,3);
            n=n+1;         
        elseif Vac_Int(i,2)==6             
            O_V6(p,1)=Vac_Int(i,3);            
            p=p+1;
        end
    end
end
%--------------------------
j=1;k=1;l=1;m=1;n=1;p=1;Ti_V6=zeros(10,1); Ti_V1=zeros(10,1);Ti_V2=zeros(10,1);Ti_V3=zeros(10,1);Ti_V4=zeros(10,1);Ti_V5=zeros(10,1);
for i=1:length(Vac_Int)
    if Vac_Int(i,1)==333330 
        if Vac_Int(i,2)==1
            Ti_V1(j,1)=Vac_Int(i,3);
            j=j+1;   
        elseif Vac_Int(i,2)==2
            Ti_V2(k,1)=Vac_Int(i,3);
            k=k+1;
         elseif Vac_Int(i,2)==3
            Ti_V3(l,1)=Vac_Int(i,3);
            l=l+1;  
         elseif Vac_Int(i,2)==4
            Ti_V4(m,1)=Vac_Int(i,3);
            m=m+1;
            elseif Vac_Int(i,2)==5
            Ti_V5(n,1)=Vac_Int(i,3);
            n=n+1;         
        elseif Vac_Int(i,2)==6             
            Ti_V6(p,1)=Vac_Int(i,3);             
            p=p+1;
        end
    end
end
%--------------------------
j=1;k=1;l=1;m=1;n=1;p=1;Li_i6=zeros(10,1); Li_i1=zeros(10,1);Li_i2=zeros(10,1);Li_i3=zeros(10,1);Li_i4=zeros(10,1);Li_i5=zeros(10,1);
for i=1:length(Vac_Int)
    if Vac_Int(i,1)==444440 
        if Vac_Int(i,2)==1
            Li_i1(j,1)=Vac_Int(i,3);
            j=j+1;   
        elseif Vac_Int(i,2)==2
            Li_i2(k,1)=Vac_Int(i,3);
            k=k+1;
         elseif Vac_Int(i,2)==3
            Li_i3(l,1)=Vac_Int(i,3);
            l=l+1;  
         elseif Vac_Int(i,2)==4
            Li_i4(m,1)=Vac_Int(i,3);
            m=m+1;
            elseif Vac_Int(i,2)==5
            Li_i5(n,1)=Vac_Int(i,3);
            n=n+1;         
        elseif Vac_Int(i,2)==6             
            Li_i6(p,1)=Vac_Int(i,3);             
            p=p+1;
        end
    end
end
%--------------------------
j=1;k=1;l=1;m=1;n=1;p=1;O_i6=zeros(10,1); O_i1=zeros(10,1);O_i2=zeros(10,1);O_i3=zeros(10,1);O_i4=zeros(10,1);O_i5=zeros(10,1);
for i=1:length(Vac_Int)
    if Vac_Int(i,1)==555560
        if Vac_Int(i,2)==1
            O_i1(j,1)=Vac_Int(i,3);
            j=j+1;   
        elseif Vac_Int(i,2)==2
            O_i2(k,1)=Vac_Int(i,3);
            k=k+1;
         elseif Vac_Int(i,2)==3
            O_i3(l,1)=Vac_Int(i,3);
            l=l+1;  
         elseif Vac_Int(i,2)==4
            O_i4(m,1)=Vac_Int(i,3);
            m=m+1;
          elseif Vac_Int(i,2)==5
            O_i5(n,1)=Vac_Int(i,3);
            n=n+1;         
        elseif Vac_Int(i,2)==6             
            O_i6(p,1)=Vac_Int(i,3);             
            p=p+1;
        end
    end
end
%--------------------------
j=1;k=1;l=1;m=1;n=1;p=1;Ti_i6=zeros(10,1); Ti_i1=zeros(10,1);Ti_i2=zeros(10,1);Ti_i3=zeros(10,1);Ti_i4=zeros(10,1);Ti_i5=zeros(10,1);
for i=1:length(Vac_Int)
    if Vac_Int(i,1)==666670
        if Vac_Int(i,2)==1
            Ti_i1(j,1)=Vac_Int(i,3);
            j=j+1;   
        elseif Vac_Int(i,2)==2
            Ti_i2(k,1)=Vac_Int(i,3);
            k=k+1;
         elseif Vac_Int(i,2)==3
            Ti_i3(l,1)=Vac_Int(i,3);
            l=l+1;  
         elseif Vac_Int(i,2)==4
            Ti_i4(m,1)=Vac_Int(i,3);
            m=m+1;
         elseif Vac_Int(i,2)==5
            Ti_i5(n,1)=Vac_Int(i,3);
            n=n+1;
        elseif Vac_Int(i,2)==6
            Ti_i6(p,1)=Vac_Int(i,3);
            p=p+1;
        end
    end
end
%--------------------------
Li_V_clstr=[1 mean(Li_V1); 2 mean(Li_V2); 3 mean(Li_V3); 4 mean(Li_V4);5 mean(Li_V5);6 mean(Li_V6)];
O_v_clstr=[mean(O_V1); mean(O_V2); mean(O_V3); mean(O_V4); mean(O_V5) ; mean(O_V6)];
Ti_V_clstr=[mean(Ti_V1); mean(Ti_V2); mean(Ti_V3); mean(Ti_V4); mean(Ti_V5); mean(Ti_V6)];
Li_i_clstr=[mean(Li_i1); mean(Li_i2); mean(Li_i3); mean(Li_i4); mean(Li_i5); mean(Li_i6)];
O_i_clstr=[mean(O_i1); mean(O_i2); mean(O_i3); mean(O_i4); mean(O_i5); mean(O_i6)];
Ti_i_clstr=[mean(Ti_i1); mean(Ti_i2); mean(Ti_i3); mean(Ti_i4); mean(Ti_i5); mean(Ti_i6)];
Vac_Int_cluster_010=[Li_V_clstr O_v_clstr Ti_V_clstr Li_i_clstr O_i_clstr Ti_i_clstr];

dlmwrite('Avg_LMT_2KeV_Vac_Int_cluster_010.txt',Vac_Int_cluster_010,'delimiter','\t')%,'precision',5)

%--------------------------
Li_V_clstr_stdev=[1 std(Li_V1); 2 std(Li_V2); 3 std(Li_V3); 4 std(Li_V4);5 std(Li_V5);6 std(Li_V6)];
O_v_clstr_stdev=[std(O_V1); std(O_V2); std(O_V3); std(O_V4); std(O_V5);std(O_V6)];
Ti_V_clstr_stdev=[std(Ti_V1); std(Ti_V2); std(Ti_V3); std(Ti_V4); std(Ti_V5);std(Ti_V6)];
Li_i_clstr_stdev=[std(Li_i1); std(Li_i2); std(Li_i3); std(Li_i4); std(Li_i5);std(Li_i6)];
O_i_clstr_stdev=[std(O_i1); std(O_i2); std(O_i3); std(O_i4); std(O_i5);std(O_i6)];
Ti_i_clstr_stdev=[std(Ti_i1); std(Ti_i2); std(Ti_i3); std(Ti_i4); std(Ti_i5);std(Ti_i6)];
Vac_Int_cluster_stdev_010=[Li_V_clstr_stdev O_v_clstr_stdev Ti_V_clstr_stdev Li_i_clstr_stdev O_i_clstr_stdev Ti_i_clstr_stdev];

dlmwrite('Stdev_LMT_2KeV_Vac_Int_cluster_010.txt',Vac_Int_cluster_stdev_010,'delimiter','\t')%,'precision',5)

%--------------------------
Y = Vac_Int_cluster_010(1:5,2:7);
Error=Vac_Int_cluster_stdev_010(1:5,2:7);
figure(1)
bar3(Y)
set(gca,'FontSize',16,'Linewidth',1);
xt={'V_{Li}' ; 'V_{O}' ; 'V_{Ti}' ; 'Li_i' ; 'O_i';'Ti_i'} ; 
set(gca,'xtick',1:6); 
set(gca,'xticklabel',xt);
ax = gca;
ax.XTickLabelRotation = 20;
title('Defect cluster [010]')
% Create zlabel
zlabel('Defect Counts','FontWeight','bold');

% Create ylabel
ylabel('Cluster size','FontWeight','bold','Rotation',-35);

% Create xlabel
xlabel('Defect type','FontWeight','bold','Rotation',24);
%--------------------------
% figure(2)
% ThreeDBarWithErrorBars(Y, Error)




