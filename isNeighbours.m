function Neighbour = isNeighbours(prevRow,prevCol,tempRow,tempCol)
    if ((prevRow + 1 == tempRow) &&(prevCol == tempCol))
        Neighbour = true;
    elseif ((prevRow - 1 == tempRow) &&(prevCol == tempCol))
        Neighbour = true;
    elseif ((prevCol - 1 == tempCol) &&(prevRow == tempRow))
        Neighbour = true;
    elseif ((prevCol + 1 == tempCol) &&(prevRow == tempRow))
        Neighbour = true;
    else
        Neighbour = false;
    end
end

