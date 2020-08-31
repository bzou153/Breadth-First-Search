function MoveCount = BFS(sc, sr, endCol, endRow, map)
    %initialise some variables
    j = 1;
    Mapsize = size(map);
    R = Mapsize(1);
    C = Mapsize(2);
    searchpath = zeros(100,2);
    rq = {}; % empty queues for rows and cols
    cq = {};
    %variables used to track the number of steps
    move_count = 0;
    nodes_left_in_layer = 1;
    nodes_in_next_layer = 0;
    
    reached_end = false; % variable to check if the end point is reached
    visited = zeros(R,C); % track weather each node has been visited
    
    % neibougher direction vectors
    dr = [-1, +1, 0, 0];
    dc = [0, 0, +1, -1];
    
    %BFS starts
    rq = enqueue(rq,sr);
    cq = enqueue(cq,sc);
    visited(sr,sc) = true;
    
    % continue to search till the queues are empty
    while (size(rq) > 0)
        [r,rq] = dequeue(rq);
        [c,cq] = dequeue(cq);
        % Check if reached the end
        if (r == endRow) && (c == endCol)
            reached_end = true;
            break
        end
        
        %explore_neighbours(r,c,R,C,visited,map);
        for i = 1:4    
            rr = r + dr(i);
            cc = c + dc(i);
        
            % Skip boundry conditions
            if ((rr < 1) || (cc < 1))
                continue;
            end
            if ((rr > R) || (cc > C))
                continue;
            end
            % Skip visited or walls
            if visited(rr,cc) == 1
                continue;
            end
            if map(rr,cc) == 1
                continue;
            end        
            rq = enqueue(rq,rr);
            cq = enqueue(cq,cc);
            searchpath(j,1) = rr;
            searchpath(j,2) = cc;
            visited(rr,cc) = true;
            nodes_in_next_layer = nodes_in_next_layer + 1;
            j = j + 1;
        end
        nodes_left_in_layer = nodes_left_in_layer - 1;
        if nodes_left_in_layer == 0
            nodes_left_in_layer = nodes_in_next_layer;
            nodes_in_next_layer = 0;
            move_count = move_count + 1;
        end
    end
    % return MoveCount and Plot searching path
    MoveCount = move_count;
    plotmap(map, searchpath);
end