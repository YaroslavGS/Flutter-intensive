
import 'package:lesson0_2/lesson0_2.dart' as lesson0_2;
import 'dart:io';

const PATH =  "src/INPUT.TXT";
const MAX_NUM_OF_CARDS = 100000;
const MIN_NUM_OF_CARDS = 1;
const MAX_ABS_VALUE = 1000000;

main(List<String> arguments) {
  File file = File(PATH);

  if(file.existsSync()){
    try{
      List<String> content = file.readAsLinesSync();
      List<int> numOfCard = lesson0_2.getNumberFromLine(content[0]);
      List<int> firstRowOfCards =  lesson0_2.getNumberFromLine(content[1]);
      List<int> secondRowOfCards = lesson0_2.getNumberFromLine(content[2]);
      int time = 0;
      int pointer = 0;
      int temp;
      if(numOfCard[0] <= MAX_NUM_OF_CARDS || numOfCard[0] >= MIN_NUM_OF_CARDS){
      for(int i=0; i < numOfCard[0]; i++){
          if(firstRowOfCards[i] == secondRowOfCards[pointer]){

            if(secondRowOfCards[pointer] != firstRowOfCards[pointer]){
              for(int j= i; j > pointer; j--){
                temp = firstRowOfCards[j - 1];
                firstRowOfCards[j - 1] = firstRowOfCards[j];
                firstRowOfCards[j] = temp;
                time++;
              }
            }
            
            pointer++;
            i = pointer;
          }
        }
        if(lesson0_2.equalRows(firstRowOfCards, secondRowOfCards)){
          print('Time: $time');
        }
        else {
          print('Time: -1');
        }
        
        print('First row:  ${firstRowOfCards[0]} ${firstRowOfCards[1]} ${firstRowOfCards[2]} ${firstRowOfCards[3]} ${firstRowOfCards[4]}');
        print('Second row: ${secondRowOfCards[0]} ${secondRowOfCards[1]} ${secondRowOfCards[2]} ${secondRowOfCards[3]} ${secondRowOfCards[4]}');
      }
      else {
        print('Wrong input number of cards(N). Please, check Readme.md');
      }
      
    } on IOException catch(e){
      print('${e.toString()}');
    }
  }
}
