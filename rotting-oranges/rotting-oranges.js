/**
 * @param {number[][]} grid
 * @return {number}
 */
var orangesRotting = function(grid) {
    
  const column = grid.length;
  const row = grid[0].length;
  let freshOrange = 0;
  const rottenOrange = [];
  for (let i = 0; i < column; i++) {
    for (let j = 0; j < row; j++) {
      if (grid[i][j] === 2) rottenOrange.push([i, j]);
      if (grid[i][j] === 1) freshOrange++;
    }
  }
    
  let minute = 0;
  while (rottenOrange.length) {
    const size = rottenOrange.length;
    for (let i = 0; i < size; i++) {
      const [x, y] = rottenOrange.shift();
//         test case [0,0]
        
      if (x - 1 >= 0 && grid[x - 1][y] === 1) {
        grid[x - 1][y] = 2;
        freshOrange--;
        rottenOrange.push([x - 1, y]);
      }
//         up
      if (x + 1 < column && grid[x + 1][y] === 1) {
        grid[x + 1][y] = 2;
        freshOrange--;
        rottenOrange.push([x + 1, y]);
      }
//         down
      if (y - 1 >= 0 && grid[x][y - 1] === 1) {
        grid[x][y - 1] = 2;
        freshOrange--;
        rottenOrange.push([x, y - 1]);
      }
//         left
      if (y + 1 < row && grid[x][y + 1] === 1) {
        grid[x][y + 1] = 2;
        freshOrange--;
        rottenOrange.push([x, y + 1]);
      }
//         right
    }
    if (rottenOrange.length > 0) minute++;
  }
    
    
  return freshOrange === 0 ? minute : -1;
//     fresh check
};