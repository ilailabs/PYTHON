function h=scatPlot(Cord, colr,sz)
h=scatter(Cord(:,1),Cord(:,2),sz,... %'MarkerEdgeColor','r',
              'MarkerFaceColor',colr,...
              'LineWidth',0.8);
end