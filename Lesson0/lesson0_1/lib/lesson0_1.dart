List<int> getNumberFromLine(String line, int size) {
  var numbers = line.split(" ");
  List<int> result = List();
  for(int i=0; i < numbers.length; i++){
    result.add(int.parse(numbers[i]));
  }

  return result;
}

List<bool> getOffLights(List<bool> list){
  for(int i = 0; i < list.length; i++){
    list[i] = false;
  }
  return list;  
}
