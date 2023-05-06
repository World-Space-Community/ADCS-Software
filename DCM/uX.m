function cross = uX(u)
    %Construct the cross-matrix which enables cross products in R3
    cross = [0, -u(3), u(2); u(3), 0, -u(1); -u(2), u(1), 0 ];
end