%_____________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0      
% maximum length for extracted exchanges is three(k=3)                %
%                                                                     %
% Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                     %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                  %
%                                                                     %
%   Based on code devloped by S. Mirjalili, The Ant Lion Optimizer    %
%   S. Mirjalili, The Ant Lion Optimizer                              %
%   Advances in Engineering Software ,2015                            %
%   DOI: http://dx.doi.org/10.1016/j.advengsoft.2015.01.010           %
%_____________________________________________________________________%


%pop--> contain all possible exchanges[chains and cycles] in the graph
%Altu--> Binary vector to specify the alutristic node(s)
%graph_nodes--> number of paired nodes in the graph
%N--> Population size
%dim--> number of extracted exchanges [chains and cycles] 
%index--> index of repeated exchanges return by non feasible solution


function [Elite_antlion_fitness,Elite_antlion_position,feaisble,indx]=ALO(N,Max_iter,lb,ub,dim,graph_nodes,Pop,chain3_index,cycle3_index,handles)

feaisble=1;
Sorted_antlions=zeros(N,dim)-inf;
Elite_antlion_position=zeros(1,dim);
Elite_antlion_fitness=-inf;
antlions_fitness=zeros(1,N)-inf;
ants_fitness=zeros(1,N)-inf;

% create initial position for ants and antlions

antlion_position=randi([lb,ub],N,dim);
ant_position=randi([lb,ub],N,dim);

for ii=1:size(ant_position,1)
antlion_position(ii,:)=Binarize_input(antlion_position(ii,:));
ant_position(ii,:)=Binarize_input(ant_position(ii,:));
end
% calculate fitness value for each antlion in the population

for i=1:size(antlion_position,1)
    
    antlions_fitness(1,i)=KPD(antlion_position(i,:),graph_nodes,Pop); 
end


% Sort population according to fitness (max fitness is the best)
[sorted_antlion_fitness,sorted_indexes]=sort(antlions_fitness);
Sorted_antlions=antlion_position(sorted_indexes,:);

% recoded fitness and position for best antlion in the population
Elite_antlion_position=Sorted_antlions(end,:);
Elite_antlion_fitness=sorted_antlion_fitness(end);

t=2; 
while t<Max_iter+1
    
    for i=1:size(ant_position,1)
        % Select antlion using roulette wheel selection
        Rolette_index=RWS(sorted_antlion_fitness);
       
        if Rolette_index==-1  
            Rolette_index=1;
        end
        % create new poistion for each ant according to Elite antlion(RE) and selected antlion(RA)
        R_A=Next_walk(Sorted_antlions(Rolette_index,:));   
        R_E=Next_walk(Elite_antlion_position(1,:));
             
        ant_position(i,:)= CrossOver(R_A,R_E);               
         
         
    end
  
    
    for i=1:size(ant_position,1)  
  
         % calculate fitness value for each ant in the population
        ants_fitness(1,i)=KPD(ant_position(i,:),graph_nodes,Pop);
    end
    

    % Update antlion positions and according to new population 
    double_population=[Sorted_antlions;ant_position];
    double_fitness=[sorted_antlion_fitness ants_fitness];
        
   [double_fitness_sorted I]=sort(double_fitness);
   double_sorted_population=double_population(I,:);
        
 
       antlions_fitness=double_fitness_sorted(end:-1:end-N+1);
       Sorted_antlions=double_sorted_population(end:-1:end-N+1,:);
       [antlions_fitness II]=sort(antlions_fitness);
       Sorted_antlions=Sorted_antlions(II,:);

       % Update the position of elite if any antlinons becomes fitter than it
    if antlions_fitness(end)> Elite_antlion_fitness 
        Elite_antlion_position=Sorted_antlions(end,:);
        Elite_antlion_fitness=antlions_fitness(end);
    end
      
    % Keep the elite in the population
    Sorted_antlions(end,:)=Elite_antlion_position;
    antlions_fitness(end)=Elite_antlion_fitness;
  
     drawnow
      
    set(handles.itertext,'String', ['The current iteration: ', num2str(t)])
    set(handles.optimumtext,'String', ['The current fitness: ', num2str(Elite_antlion_fitness)])
     
    t=t+1; 
end

x=find(Elite_antlion_position);
[~, indx]=Check_rep(x,Pop);

 
% check if it return feasible solution
% solution is feasible if it's fitness is positive i.e. does not contain
% repeated donors and/or recisiver for kidneys

if(Elite_antlion_fitness<0)
    feaisble=0;
   Elite_antlion_position=zeros(1,dim);
   Elite_antlion_position(x)=1;
 return;
end

 % the post processing stage 

 Solu=[];
 for i=1:length(x)
    Solu=[Solu unique(Pop{x(i)}(1:end-1))];
 end
 
 
% add non existing exchange if it does not introduce any conflict 
 for i=1:size(Pop,2);
     if (isempty(intersect(Solu,Pop{i}(1:end-1))))
         Solu=[Solu unique(Pop{i}(1:end-1))];
         x=[x i];
     end
 end
 
 % replace exchange (of size 3) with exchange (of size 2) if it does not introduce any conflict 
 
 To_add=[];
 To_remove=[];
 
 for i=1:length(x)
      
    if(Pop{x(i)}(end)==2)
         Tmp_Solu=[];
         Tmp_Solu=setdiff(Solu,unique(Pop{x(i)}(1:end-1)));
         for j=cycle3_index:size(Pop,2)
            if (isempty(intersect(Tmp_Solu,unique(Pop{j}(1:end-1)))))
                 Solu=[];
                 Solu=[Tmp_Solu unique(Pop{j}(1:end-1))];
                 To_add=[To_add j];
                 To_remove=[To_remove x(i)];
               break;
            end
         end
    end
 end
 
 tmp_x=setdiff(x,To_remove);
 x=[];
 x=[tmp_x To_add];

 % replace exchange (of size 2 or 3) with exchange (of size 1[ start with an alutristic]) if it does not introduce any conflict 

 To_add=[];
 To_remove=[];
 Tmp_Solu=[];
  for i=1:length(x)
      
    if(Pop{x(i)}(end)==1)
     
     Tmp_Solu=setdiff(Solu,unique(Pop{x(i)}(1:end-1)));
     for j=chain3_index:size(Pop,2)
             
         if (isempty(intersect(Tmp_Solu,unique(Pop{j}(1:end-1)))))
             Solu=[];
             Solu=[Tmp_Solu unique(Pop{j}(1:end-1))];
             To_add=[To_add j];
             To_remove=[To_remove x(i)];
           break;
         end
     end
    end
  end
  
 tmp_x=setdiff(x,To_remove);
 x=[tmp_x To_add]; 
 

 
% calculate number of matched after antlion optimizer followed by post processing stage

 Total_Wieght=0;
 for m=1:length(x)
    Total_Wieght=Total_Wieght+Pop{x(m)}(end);
 end
 
 Elite_antlion_position=zeros(1,dim);
 Elite_antlion_position(x)=1;
 Elite_antlion_fitness=Total_Wieght;
end