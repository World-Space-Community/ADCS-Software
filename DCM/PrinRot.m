function C = PrinRot(a, phi_deg)
    % Construct a principal rotation.
    % The matrix C represents an affine transformation from one frame to
    % another which is offset by a rotation about a principal axis (a) in the
    % first frame through an angle phi.
    %
    % Inputs:
    %   a: integer value of principal axis (1, 2, or 3)
    %   phi_deg: rotation angle in degrees
    %
    % Outputs:
    %   C: 3x3 rotation matrix
    
    phi_rad = deg2rad(phi_deg);
    c = cos(phi_rad);
    s = sin(phi_rad);

    % Construct transformation about a principal axis (1,2,3).
    if a == 1
        C = [1, 0, 0; 0, c, s; 0, -s, c];
    elseif a == 2
        C = [c, 0, -s; 0, 1, 0; s, 0, c];
    elseif a == 3
        C = [c, s, 0; -s, c, 0; 0, 0, 1];
    else
        error('Principal axis out of bounds');
    end
end