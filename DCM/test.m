a1 = [1, 0, 0]';
R1 = AxisAngle(a1,90);
C1 =PrinRot(1,90);
tol = 1e-12; % set a small tolerance value
assert(isequal(R1, C1) || norm(R1-C1) < tol);

a2 = [0, 1, 0]';
R2 = AxisAngle(a2,90);
C2 = PrinRot(2,90);
tol = 1e-12; % set a small tolerance value
assert(isequal(R2, C2) || norm(R2-C2) < tol);

a3 = [0, 0, 1]';
R3 = AxisAngle(a3,90);
C3 = PrinRot(3,90);
tol = 1e-12; % set a small tolerance value
assert(isequal(R3, C3) || norm(R3-C3) < tol);