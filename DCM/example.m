%% Principle Rotation Example
C1 =PrinRot(1,90);
disp("Rotation about X axis (C_{1})")
disp(C1)

C2 = PrinRot(2,90);
disp("Rotation about Y axis (C_{2})")
disp(C2)

C3 = PrinRot(3,90);
disp("Rotation about Z axis (C_{3})")
disp(C3)

%% Euler Rotation Example
a1 = [1, 0, 0]';
R1 = AxisAngle(a1,90);
disp("Rotation about X axis (C_{1})")
disp(R1)

a2 = [0, 1, 0]';
R2 = AxisAngle(a2,90);
disp("Rotation about Y axis (C_{2})")
disp(R2)

a3 = [0, 0, 1]';
R3 = AxisAngle(a3,90);
disp("Rotation about Z axis (C_{3})")
disp(C3)
