function CheckColumn(a)
    % Check if the input vector is a column vector.
    if size(a, 2) ~= 1
        error('Input vector must be a column vector');
    end
end