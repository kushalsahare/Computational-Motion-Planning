function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

%%% All of your code should be between the two lines of stars.
% *******************************************************************

flag=false;
n= length(P1); % number of points;

v=1:n; % vertex numbers;

c= nchoosek(v,2); % combination of vertices to be choosen for line segment


for ii=1:n
    
        a1=P1(c(ii,1),:);
        a2=P1(c(ii,2),:);
    
    
    for jj=1:n
          b1=P2(c(jj,1),:);
          b2=P2(c(jj,2),:);
          
          if IsIntersect(a1,a2,b1,b2)== 1
              flag=true;
              return
          end
                   
    end
    
        
               
end

    if IsInsideTri(P1,P2)
        flag = true;
        return
    end 

% *******************************************************************
end