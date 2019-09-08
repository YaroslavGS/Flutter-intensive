
import 'dart:io';

const numOfCards = 5; // number of cards.
List<int> firstRowCards =  [3, 2, 3, 4, 5]; // first row of cards.
const secondRowCards = [5, 4, 3, 2, 3]; // second row of cards.

main(List<String> arguments) {
  
  int time = 0;
  int pointer = 0; // index second list.
  int temp;

  for(int i=0; i < numOfCards; i++){
    if(firstRowCards[i] == secondRowCards[pointer]){ // check if elements in first and second rows equals.
      if(secondRowCards[pointer] != firstRowCards[pointer]){ // check if sorting is necessary.
        for(int j= i; j > pointer; j--){
          temp = firstRowCards[j - 1];
          firstRowCards[j - 1] = firstRowCards[j];
          firstRowCards[j] = temp;
          time++;
        }
      }
            
      pointer++;
      i = pointer;
    }
  }

  if(equalRows(firstRowCards, secondRowCards)){
    print('Time: $time');
  }
  else {
    print('Time: -1'); // The result is for rows of cards that cannot be made the same.
  }
        
  print('First row:  ${firstRowCards[0]} ${firstRowCards[1]} ${firstRowCards[2]} ${firstRowCards[3]} ${firstRowCards[4]}');
  print('Second row: ${secondRowCards[0]} ${secondRowCards[1]} ${secondRowCards[2]} ${secondRowCards[3]} ${secondRowCards[4]}');
}

/* 
  This method compares two lists between themselves.
*/
bool equalRows(List<int> firstList, List<int> secondList){
  if(firstList.length != secondList.length){
    return false;
  }
  for(int i = 0; i < firstList.length; i++){
    if(firstList[i] != secondList[i]){
      return false;
    }
  }
  return true;
}
      
      
  


