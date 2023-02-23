int[][] board = new int[8][8];
int sideLength;

void setup() {
  size(320,320);
  
  for (int i = 0; i < board.length;i++) {
    for (int j = 0; j < board[i].length;j++) {
      if ((j+10)%2 != 0) {
        board[i][j] = 0;  
      }
      else {
        board[i][j] = 1;  
      }
    }
  }
}

void draw() {
  sideLength = 40;
  
  for(int x = 0; x < board.length; x++) {
    for(int y = 0; y < board[x].length; y++) {
      if (board[x][y] == 0) {
        fill(0);
      }
      else {
        fill(255);
      }
      rect(x*sideLength, y*sideLength, sideLength, sideLength);  
    }
  }
}
