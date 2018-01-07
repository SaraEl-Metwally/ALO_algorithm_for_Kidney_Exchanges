%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


function [txt,New_Pop,n,Altu,Sol_dim,n1,n2,n3,n4]= Get_data(number_nodes)
 
% set nodes realtions randomlly
n = number_nodes;
p = 0.05;                    % percentage for edges

compatibility_matrix= zeros(n,n);
 
 Altu=rand(1,n) < 0.05;   %alturistic ratio (binary vector)
 
   for i=1:n
      for j=1:n
          
         if (i ~= j)
            if rand(1) < p  
             compatibility_matrix(i,j) =1;
             end
         end
      end
   end
   
   % alturistic only give
   for ii=1:n
      if(Altu(ii)==1)
         compatibility_matrix(:,ii) =0;
      end
       
   end
   
   
 % set nodes in circle view coordinates
  coords = [cos(2*pi*(1:n)/n); sin(2*pi*(1:n)/n)]';
  

               
    % plot graph
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
   
  
 
 % compute arcs
 arcs=zeros(1,3);
 index=1;
   for i=1:size(compatibility_matrix,1)
       for j=1:size(compatibility_matrix,2)
           if(compatibility_matrix(i,j)==1)
           arcs(index,1)=i;
           arcs(index,2)=j;
           arcs(index,3)=1;
            index=index+1;
           end
       end
   end
  
   
 % compute all avialbe chains and cycles in graph 
   [txt,New_Pop,Sol_dim,n1,n2,n3,n4]= Get_All_chain_cycles(Altu,compatibility_matrix,arcs);

  
   
end