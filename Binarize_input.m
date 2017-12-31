%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


function Bin_x =Binarize_input(x)
          
          [~ ,I]=sort(x);                                    
          z=zeros(1,length(x));
          z(I(1))=0;
          for k=2:length(I)                                
              z(I(k))=z(I(k-1))+1;                             
          end
          Bin_x=zeros(1,length(x));
           
          for k=1:length(z)-1                               
              if(z(k)>=z(k+1)) 
                  Bin_x(k)=1;
              end
          end
           if(z(end)>=z(1))
               Bin_x(end)=1;
           end

 end

