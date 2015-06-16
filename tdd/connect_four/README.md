Differences between Connect 4 and Tic Tac Toe

* Board size changes from 3 X 3 to 6 X 7 
* Has_3_in_a_row would need to change to 4, and the .all function could not be used due to board size.
* To move, only the column will be selected, as gravity will determine the row (lowermost empty).
* Moves must be made invalid if a column is full (rather than a square).

