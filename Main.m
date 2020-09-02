%%%%-----------------Breadth First Search----------------------%%%%
[map]=map_convert('map_8.txt');% Load map generated from map_convert
% Specify the starting and end points
startCol = 1;
startRow = 14;
endCol = 18;
endRow = 1;
% Perform the BFS algorithm function
MoveCount = BFS(startCol, startRow, endCol, endRow, map);
%f = @() BFS(startCol, startRow, endCol, endRow, map);
%t = timeit(f);
%disp("Time: ");
%disp(t)