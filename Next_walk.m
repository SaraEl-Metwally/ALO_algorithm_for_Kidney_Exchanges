%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


function New_pos =Next_walk(antlion)
          
% generate random walk by muting a randomly selected position of the give antlion.

Mutation_point=randi([1,length(antlion)],1,1);
antlion(Mutation_point)=~antlion(Mutation_point);            
New_pos(1,:)=antlion;

end

