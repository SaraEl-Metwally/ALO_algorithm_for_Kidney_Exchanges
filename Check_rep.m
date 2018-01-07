%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


function [rep,ind] =Check_rep(x,N_Pop)
  
rep=0;    
ind=[]; 
for m=1:length(x)
      Current_Nodes=unique(N_Pop{x(m)}(1:end-1));
      
for k=m+1:length(x)
    Other_Nodes=unique(N_Pop{x(k)}(1:end-1)); 
    L=length(intersect(Current_Nodes,Other_Nodes));
    if(L>0)
        rep=rep+L;
        ind=[ind; m,k];
       break;
    end
end
end
end
 
 
 
    
 
    

