import 'package:lesson0_1/lesson0_1.dart' as lesson0_1;
import 'dart:io';

main(List<String> arguments) {
  File file =  File("src/INPUT.TXT");

  if(file.existsSync()){
    try{
    
      List<String> content = file.readAsLinesSync();
      List<int> nk = lesson0_1.getNumberFromLine(content[0], 2);
        final numOfLights = nk[0];
        final countOfInvers = nk[1];
        
      var valOfInvers = lesson0_1.getNumberFromLine(content[1], countOfInvers);
      
      List<bool> lights = lesson0_1.getOffLights(List(numOfLights));

      int reverse;
      int j;
      for(int i=0; i < countOfInvers; i++){
        reverse = valOfInvers[i];
        j=0;
        while(j < numOfLights){
          lights[j] = !lights[j];
          j += reverse;
        }
      }

      var sum = 0;

      for(int d=0; d < lights.length; d++){
        
        if(lights[d] == true){
          
          sum++;
        }
      }

      print(sum);

      } on IOException catch(e){
      print('${e.toString()}');
      }
  }
}