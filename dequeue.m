function [current,queue] = dequeue(q)
% dequeue function for BFS
    current = q{1};
    queue = q(2:end);
end

