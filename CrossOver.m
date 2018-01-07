%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%

function out=CrossOver(Pos1,Pos2)
r=rand(size(Pos1))<0.5;
out(r)=Pos1(r);
out(~r)=Pos2(~r);