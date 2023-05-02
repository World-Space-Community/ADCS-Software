function vrot = xrotation(vector,theta)
    C1 = [1, 0, 0;
        0, cos(theta), sin(theta);
        0, -sin(theta), cos(theta)];
    vrot = C1*vector';
end