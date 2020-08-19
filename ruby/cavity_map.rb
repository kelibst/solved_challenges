# Complete the cavityMap function below.
def cavityMap(grid)
    
  for x in 1...grid.length-1  do 

      for z in 1...grid[x].length-1 do
        #get the current element and those before and after it.
          currentElem = (grid[x][z]);
          befCurrElem = (grid[x][z-1]);
          aftCurrElem = (grid[x][z+=1])

        #get the array before and after
        befArrElem = (grid[x-1][z-1]);
        aftArrElelm = (grid[x+1][z-1])
        
        #set cavity if conditions are met

        grid[x][z-1] = "X" if (currentElem.to_i > befArrElem.to_i && currentElem.to_i > aftArrElelm.to_i && currentElem.to_i > befCurrElem.to_i && currentElem.to_i > aftCurrElem.to_i && currentElem != "X")
      end
  end
  return grid;
end

grid = %w[9892101 
        1912163
        1112114
        1522153
        1212122];

         print cavityMap(grid);