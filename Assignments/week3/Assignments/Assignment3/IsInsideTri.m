function IsInside = IsInsideTri( P1, P2 )
 IsInside = false;
    
    T =[P2(1,1) P2(1,2) 1;
        P2(2,1) P2(2,2) 1;
        P2(3,1) P2(3,2) 1];
    
    T1 =[P1(1,1) P1(1,2) 1;
        P2(2,1) P2(2,2) 1;
        P2(3,1) P2(3,2) 1];

    T2 =[P2(1,1) P2(1,2) 1;
        P1(1,1) P1(1,2) 1;
        P2(3,1) P2(3,2) 1];

    T3 =[P2(1,1) P2(1,2) 1;
        P2(2,1) P2(2,2) 1;
        P1(1,1) P1(1,2) 1];
    
    t = abs(det(T1)/2) + abs(det(T2)/2) + abs(det(T3)/2);
    
    if abs(det(T)/2) == t
        IsInside = true;
    end

