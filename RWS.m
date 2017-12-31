%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


function choice = RWS(weights)
% normlize fitness values to range [1 100]

weights=1./weights;
   a=min(weights);
   b=max(weights);
   c=1;
   d=100;      
  weights=((weights-a).*(d-c))./(b-a)+c;
 
 accumulation = cumsum(weights);
   p = rand() * accumulation(end);
    chosen_index = -1;
   for index = 1 : length(accumulation)
     if (accumulation(index) > p)
       chosen_index = index;
       break;
     end
   end
   choice = chosen_index;
  
  
  
  
  
  
  
  
  

  
  