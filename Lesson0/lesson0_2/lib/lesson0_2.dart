List<int> getNumberFromLine(String line) {
  var numbers = line.split(" ");
  List<int> result = List();
  for(int i=0; i < numbers.length; i++){
    result.add(int.parse(numbers[i]));
  }

  return result;
}

bool equalRows(List<dynamic> firstRow, List<dynamic> secondRow){

  if(firstRow.length != secondRow.length){
    return false;
  }

  for(int i = 0; i < firstRow.length; i++){
    if(firstRow[i] != secondRow[i]){
      return false;
    }
  }

  return true;
}