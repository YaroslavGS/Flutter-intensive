import 'dart:io';

const numOfLights = 172; // number of lights.
const numOfInvers = 10; // number of inversion.
const intervalInvers = [19, 2, 7, 13, 40, 23, 16, 1, 45, 9]; // values for interval inversion.

main(List<String> arguments) {
      
 List<bool> lights = getOffLights(List(numOfLights)); // boolean list with lights: true - on; false - off.
 int interval; // variable for revers lights.
 int j; // counter for while.

  for(int i=0; i < numOfInvers; i++){ // 
    interval = intervalInvers[i];
    j=0;
    while(j < numOfLights){
      lights[j] = !lights[j];
      j += interval;
    }
  }

  var sum = 0;

  for(int d=0; d < lights.length; d++){
    if(lights[d] == true){
      sum++;
    }
  }

  print(sum);
}

/*
  This method returns list with values = false.
*/
List<bool> getOffLights(List<bool> list){ 
  for(int i = 0; i < list.length; i++){
    list[i] = false;
  }
  return list;  
}