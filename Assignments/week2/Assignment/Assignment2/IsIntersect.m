function intersect = IsIntersect(p1,p2,p3,p4)
%IsIntersect returns collision=false if the segments formed by two points do not intersect.
% Input p1(X), p2(X) ,p3(X), p4(X) co-ordinates.
% segment X formed from two co-ordinate p1 & p2
% segment Y formed from two co-ordinates p3 & p4
X=1;Y=2;


  s1(X) = p2(X) - p1(X);     s1(Y) = p2(Y) - p1(Y);
  s2(X) = p4(X) - p3(X);     s2(Y) = p4(Y) - p3(Y);

    
    den  = s2(Y)* s1(X) - s2(X) * s1(Y);
    num1 = s2(X) * (p1(Y)-p3(Y)) - s2(Y) * (p1(X)-p3(X));
    num2 = s1(X) * (p1(Y)-p3(Y)) - s1(Y)*(p1(X)-p3(X));
    
if abs(num1) < eps && abs(num2) < eps && abs(den) < eps
    intersect = true; % lines are co-incident
else

    if abs(den) < eps
        intersect = false; % lines are parllel
    else
        s = num1 / den; % line intersect
        t = num2 / den;

                       
            if s < 0 || s > 1 || t < 0 || t > 1  % if not s and t between 1 and  0
               intersect = false;
            else
                intersect = true;
            end

    end
end 

  end

