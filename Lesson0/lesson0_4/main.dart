
const allCaps = [2,2,2]; //index 0 - num of 1* Caps
                         //index 1 - num of 2* Caps
                         //index 2 - num of 3* Caps

const costAllCaps = [1,2,3]; //index 0 - cost of 1* Caps
                             //index 1 - cost of 2* Caps
                             //index 2 - cost of 3* Caps

const costTshirt = 4;

main(List<String> arguments) {
List<Cap> caps = List();
int totalSum = 0;
int numOfTshirt;

  if(allCaps.length == costAllCaps.length){

    for(int i =0; i < allCaps.length; i++){
      caps.add(Cap(allCaps[i],costAllCaps[i])); // add all caps to list.
    }

    for(var el in caps){ // sum total number all stars.
      totalSum += el.numCap * el.costCap; 
    }
    numOfTshirt = (totalSum / costTshirt).ceil(); 
    print('Number of T-Shirts: $numOfTshirt');
  }
  else{
    print('Wrong input.');
  }
}

class Cap { // This class is needed as a regular container.
  int numCap;
  int costCap;
  
  Cap(int numCap, int costCap){
    this.numCap = numCap;
    this.costCap = costCap;
  }
}
