%_______________________________________________________________________%
%  Kideny Exchgane using (ALO) demo version 1.0                         %
%  maximum length for extracted exchanges is three(k=3)                 %
%                                                                       %
%   Main paper: "Ant Lion Optimization Algorithm for Kidney Exchanges"  %
%                                                                       %
%   Eslam Hamouda, Sara El-Metwaly, and Mayada Tarek                    %
%                                                                       %
%_______________________________________________________________________%


function fitness =KPD(x,n_nodes,N_Pop)
  
x=find(x);

index_take=1;
index_give=1;
Take=zeros(1,length(x));
Give=zeros(1,length(x));
 
 Error_take=0;
 Error_give=0;
 Total_Wieght=0;
  
 
for m=1:length(x)
      dim=size(N_Pop{x(m)},2);
       
       if(dim==3)
       Take(index_take)=N_Pop{x(m)}(2);
       index_take=index_take+1;
       Give(index_give)=N_Pop{x(m)}(1);
       index_give=index_give+1;
       Total_Wieght=Total_Wieght+N_Pop{x(m)}(end);
       end
        
        if(dim==5)
            
       Take(index_take)=N_Pop{x(m)}(2);
       index_take=index_take+1;
       Take(index_take)=N_Pop{x(m)}(4);
       index_take=index_take+1;
       
       Give(index_give)=N_Pop{x(m)}(1);
       index_give=index_give+1;
       
       Give(index_give)=N_Pop{x(m)}(3);
       index_give=index_give+1;
       Total_Wieght=Total_Wieght+N_Pop{x(m)}(end);
        end
        
         if(dim==7)
           Take(index_take)=N_Pop{x(m)}(2);
           index_take=index_take+1;
           Take(index_take)=N_Pop{x(m)}(4);
           index_take=index_take+1;
           Take(index_take)=N_Pop{x(m)}(6);
           index_take=index_take+1;
       
          Give(index_give)=N_Pop{x(m)}(1);
          index_give=index_give+1;
          Give(index_give)=N_Pop{x(m)}(3);
          index_give=index_give+1;
          Give(index_give)=N_Pop{x(m)}(5);
          index_give=index_give+1;
          Total_Wieght=Total_Wieght+N_Pop{x(m)}(end);
         end
end
 
if (~isempty(Take))
    Error_take=0;
    hist=[];
    hist_count=1;
  
    for i=1:length(Take)
        if(~isempty(find(hist==Take(i))))
            continue;
        end
         hist(hist_count)=Take(i);
         hist_count=hist_count+1;
        for j=i+1:length(Take)
            if(Take(i)==Take(j))
                Error_take=Error_take+1;
                %break;
            end
        end
    end
end
 

if (~isempty(Give))
  
    Error_give=0;
    hist=[];
    hist_count=1;
    for i=1:length(Give)
        if(~isempty(find(hist==Give(i))))
            continue;
        end
         hist(hist_count)=Give(i);
         hist_count=hist_count+1;
        for j=i+1:length(Give)
            if(Give(i)==Give(j))
                Error_give=Error_give+1;
                %break;
            end
        end
    end
end
 

Error=(Error_take+Error_give)*n_nodes*3;
fitness=Total_Wieght-Error;


 
 
 
 
end
 
    