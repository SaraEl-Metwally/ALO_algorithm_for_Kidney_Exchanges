%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


function [txt,New_Pop,n,Altu,Sol_dim,n1,n2,n3,n4]= Load_data


% set nodes realtions randomlly

[filename_1, pathname_1]=uigetfile('*.txt','Select the Altruistic data file');
Altu=dlmread(strcat(pathname_1,'\',filename_1));

n=length(Altu);

[filename_2, pathname_2]=uigetfile('*.txt','Select the Edges data file');
tmp_arcs='';
tmp_arcs=dlmread(strcat(pathname_2,'\',filename_2));

arcs=tmp_arcs(:,1:3);
compatibility_matrix= zeros(n,n);

 
   for i=1:size(arcs,1)
     compatibility_matrix(arcs(i,1),arcs(i,2))=1;
   end
 

 
 % set nodes in circle view coordinates
  coords = [cos(2*pi*(1:n)/n); sin(2*pi*(1:n)/n)]';

               
    % plot graph
if size(compatibility_matrix,1)<=75
      gplotd(compatibility_matrix,coords,'LineWidth',2,'MarkerSize',8);
      % to add node number in figure
  for k =1:n
     
      if(Altu(k)==1)  % alturstic node in red
          text(coords(k,1),coords(k,2),['  ' num2str(k)],...
               'Color','r','FontSize',16,'FontWeight','b')
      else
           text(coords(k,1),coords(k,2),['  ' num2str(k)],...
               'Color','k','FontSize',12,'FontWeight','b')
      end
  end
   axis off

end
    
 

   
  
   
 % compute all avialbe chains and cycles in graph up to size=3  
  
[txt,New_Pop,Sol_dim,n1,n2,n3,n4]= Get_All_chain_cycles(Altu,compatibility_matrix,arcs);
    
    
 
end