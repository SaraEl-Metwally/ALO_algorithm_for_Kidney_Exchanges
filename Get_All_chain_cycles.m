%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


 function  [txt,New_Pop,Sol_dim,n11,n12,n13,n14]= Get_All_chain_cycles(Altu,compatibility_matrix,arcs)
% compute all availble chains and cycles in graph up to size=3  

 
n=length(Altu);
txt='';  % just for add info in listbox GUI
chain_2_index=1;

Successor_Per_nodes = cell(1,size(compatibility_matrix,1));


for i=1:size(compatibility_matrix,1)
    index=1;
    for j=1:size(compatibility_matrix,2)
        if(compatibility_matrix(i,j)==1)
            Successor_Per_nodes{i}(index)=j;
            index=index+1;
        end
      
    end

end


   % get chains(start with altrustics) size=2 
   Alt_indexs=find(Altu);
   chin_2_flag=0;
   for i=1:length(Alt_indexs)
       
       if(size(Successor_Per_nodes{Alt_indexs(i)},2)==0)
               continue;
       end
           for j=1:size(Successor_Per_nodes{Alt_indexs(i)},2)
              
               chin_2_flag=1;
                To=Successor_Per_nodes{Alt_indexs(i)}(j);
                chain_2(chain_2_index,1)=Alt_indexs(i);
                chain_2(chain_2_index,2)=To;
                
                [~,idxsIntoA] = intersect(arcs(1:end,1:2),[Alt_indexs(i) To],'rows');
                chain_2(chain_2_index,3)=arcs(idxsIntoA,3);
                chain_2_index=chain_2_index+1;
                 
                txt=sprintf([txt,num2str(Alt_indexs(i)),'-->']);
                txt=sprintf([txt,num2str(To),'\n']);
               
           end
   end


   chain_3_index=1;
    chain_3_flag=0;
if(chin_2_flag~=0)
      Start_nodes=chain_2(:,2)';
      for i=1:length(Start_nodes)
          
           if(size(Successor_Per_nodes{Start_nodes(i)},2)==0)
               continue;
           end
          
         for j=1:size(Successor_Per_nodes{Start_nodes(i)},2)
            chain_3_flag=1;
            W_sum=0;
            To=Successor_Per_nodes{Start_nodes(i)}(j);
            chain_3(chain_3_index,1)=chain_2(i,1);
            
            [~,idxsIntoA] = intersect(arcs(1:end,1:2),[chain_2(i,1) Start_nodes(i)],'rows');
            W_sum=W_sum+arcs(idxsIntoA,3);
            
            [~,idxsIntoA] = intersect(arcs(1:end,1:2),[Start_nodes(i) To],'rows');
            W_sum=W_sum+arcs(idxsIntoA,3);

            
            chain_3(chain_3_index,2)=Start_nodes(i); 
            chain_3(chain_3_index,3)=Start_nodes(i);
            chain_3(chain_3_index,4)=To;
            
            chain_3(chain_3_index,5)=W_sum;
           
            chain_3_index=chain_3_index+1;
            txt=sprintf([txt,num2str(chain_2(i,1)),'-->']);
            txt=sprintf([txt,num2str(Start_nodes(i)),'  ,  ']);
            txt=sprintf([txt,num2str(Start_nodes(i)),'-->']);
            txt=sprintf([txt,num2str(To),'\n']);
                    
         end
      end
end
   
   
 %get cycles, size=2 [two ways cycles]
 
   cycle_2_index=1;
  cycle_2_flag=0;
  for i=1:n
      for j=i:n
        if(compatibility_matrix(i,j)==1&&compatibility_matrix(j,i)==1)
               cycle_2_flag=1;
               W_sum=0;
                cycle_2(cycle_2_index,1)=i;
                cycle_2(cycle_2_index,2)=j;
                cycle_2(cycle_2_index,3)=j;
                cycle_2(cycle_2_index,4)=i;
                
             [~,idxsIntoA] = intersect(arcs(1:end,1:2),[i j],'rows');
              W_sum=W_sum+arcs(idxsIntoA,3);
                
             [~,idxsIntoA] = intersect(arcs(1:end,1:2),[j i],'rows');
              W_sum=W_sum+arcs(idxsIntoA,3);      
                
             cycle_2(cycle_2_index,5)=W_sum;
             
              cycle_2_index=cycle_2_index+1;
                 txt=sprintf([txt,num2str(i),'-->']);
                 txt=sprintf([txt,num2str(j),'  ,  ']);
                 txt=sprintf([txt,num2str(j),'-->']);
                 txt=sprintf([txt,num2str(i),'\n']);
                         
        end    
           
      end
       
  end
          
   

% get cycles, size=3 three ways cycles  

  cycle_3_index=1;
   cycle_3_flag=0;
  if (arcs(1,1)~=0)
   
     for i=1:size(Successor_Per_nodes,2)
        if(size(Successor_Per_nodes{i},2)==0)
            continue;
        end
         for j=1:size(Successor_Per_nodes{i},2)
             if(size(Successor_Per_nodes{j},2)==0)
                continue;
             end
             To_1=Successor_Per_nodes{i}(j);
             if(size(Successor_Per_nodes{To_1},2)==0)
                   continue;
             end
             for k=1:size(Successor_Per_nodes{To_1},2)
                 To_2=Successor_Per_nodes{To_1}(k);
                 if(compatibility_matrix(To_2,i)==1)
                     cycle_3_flag=1;
                     W_sum=0;
                     cycle_3(cycle_3_index,1)=i;
                     cycle_3(cycle_3_index,2)=To_1;
                     cycle_3(cycle_3_index,3)=To_1;
                     cycle_3(cycle_3_index,4)=To_2;
                     cycle_3(cycle_3_index,5)=To_2;
                     cycle_3(cycle_3_index,6)=i;
                     
                      [~,idxsIntoA] = intersect(arcs(1:end,1:2),[i To_1],'rows');
                      W_sum=W_sum+arcs(idxsIntoA,3); 
                      
                      [~,idxsIntoA] = intersect(arcs(1:end,1:2),[To_1 To_2],'rows');
                      W_sum=W_sum+arcs(idxsIntoA,3); 
                      
                      [~,idxsIntoA] = intersect(arcs(1:end,1:2),[To_2 i],'rows');
                      W_sum=W_sum+arcs(idxsIntoA,3); 
                     
                     cycle_3(cycle_3_index,7)=W_sum;
                     cycle_3_index=cycle_3_index+1;
                     
                 end
             end
                 
         end
     end
  end
  
% remove  repatition 1->12, 12->5  5-->1   equal to  5->1  1->12   12->5

if(cycle_3_flag==1)
[~,indx]=unique(sort(cycle_3,2),'rows');
cycle_3=cycle_3(indx,:);
end



n1=0;
n2=0;
n3=0;
n4=0;

if(chin_2_flag==1)n1=size(chain_2,1);end;
if(chain_3_flag==1)n2=size(chain_3,1);end;
if(cycle_2_flag==1)n3=size(cycle_2,1);end;
if(cycle_3_flag==1)n4=size(cycle_3,1);end;


n11=1;
n12=n1+1;
n13=n1+n2+1;
n14=n1+n2+n3+1;

Sol_dim=n1+n2+n3+n4;          % size of pop is equal to graph_pop size
 


index=1;
N_Pop = cell(1,Sol_dim);

for i=1:n1
    N_Pop{index}=chain_2(i,:);
    index=index+1;
end

for i=1:n2
    N_Pop{index}=chain_3(i,:);
    index=index+1;
end

for i=1:n3
    N_Pop{index}=cycle_2(i,:);
    index=index+1;
end


for i=1:n4
    N_Pop{index}=cycle_3(i,:);
    index=index+1;
end



New_Pop = cell(size(N_Pop,1),size(N_Pop,2));

index=1;
for i=1:size(N_Pop,2)
    for j=1:size(N_Pop{i},1)
        New_Pop(index)={N_Pop{i}(j,:)};
    index=index+1;
    end
    
end
   
     for i=n1+n2+n3+1:n1+n2+n3+n4
        txt=sprintf([txt,num2str(New_Pop{i}(1)),'-->']);
        txt=sprintf([txt,num2str(New_Pop{i}(2)),'  ,  ']);
        txt=sprintf([txt,num2str(New_Pop{i}(3)),'-->']);
        txt=sprintf([txt,num2str(New_Pop{i}(4)),'  ,  ']);
        txt=sprintf([txt,num2str(New_Pop{i}(5)),'-->']);
        txt=sprintf([txt,num2str(New_Pop{i}(6)),'\n']);
     end
  
        
 end
  