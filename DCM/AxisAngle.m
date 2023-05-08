function R = AxisAngle(a, phi)
    % Construct a rotation matrix using the axis (a) and angle (phi) of rotation.
    phi = deg2rad(phi);
    CheckColumn(a);
    R = cos(phi) * eye(3) + (1 - cos(phi)) * (a * a.') - sin(phi) * uX(a);
end