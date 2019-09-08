
const numOfClothes = 3; // number of clothes
const butteryD = 3; // Time decrement with buttery dry.
const humidityOfClothes = [2000,2000,2000]; // clothes humidity: index 0 - first clothe
                                            //                   index 1 - second...
                                            //                   index 2 - third...

const lifeOfClothes = [1000,2000,1500]; // time for clothes life: index 0 - first clothe
                                            //                    index 1 - second...
                                            //                    index 2 - third...

main(List<String> arguments) {
  List<Cloth> clothes = List();

  if(humidityOfClothes.length == lifeOfClothes.length){
    for(int i = 0 ; i < humidityOfClothes.length; i++){
      clothes.add(Cloth(humidityOfClothes[i],lifeOfClothes[i],butteryD)); // add all clothes to list.
    }

  int countCompletedClothes = 0; // counter for completed clothes.
  bool butteryFree = true; // flag. if the battery is free, then true if not, then false.
  bool allDry = false; // flag. if all clothes completed, then true.
    while(!allDry){
      for(int i = 0; i < clothes.length; i++){
        if(clothes[i].life < clothes[i].humidity && butteryFree && clothes[i].completed == false){ // check check whether to put clothes on the battery
          clothes[i].butteryOrDefDry = true;
          butteryFree = false;
          print('Time put on buttert drying: ${clothes[i].timeDrying}; Number of clothes: ${i+1}');
       }
        clothes[i].dry();
      }
      for(var el in clothes){
       if (el.life >= el.humidity && el.butteryOrDefDry == true && el.completed == false){ // check whether you need to remove clothes from the battery
          el.butteryOrDefDry = false;
          butteryFree = true;
        }  
    
        if(el.completed){
          ++countCompletedClothes; // count completed clothes.
        }
        if(countCompletedClothes >= clothes.length){
          allDry = true;
       }
     }
    }//while  
  }
  else{print('Wrong input.');}
}

class Cloth{ // This class is needed in order to make it more convenient to process each clothing separately.

int humidity;
int life;
int butteryDryDec; //decrement for buttert dry.
int timeDrying = 0;
bool butteryOrDefDry;// flag. Determines where clothes are currently located.
bool completed;
final defDryingDec = 1;// Default decrement.

  Cloth(int humidity, int life, int buttery){
    this.humidity = humidity;
    this.life = life;
    butteryDryDec = buttery;
    butteryOrDefDry = false;
    completed = false;
  }

  /*
    This method imitates drying clothes every minute.
  */
  void dry(){
    int decrement;

    if(humidity > 0){  //check completed clothes.
      if(butteryOrDefDry){ // check location clothes.
        decrement = butteryDryDec;
      }
      else{
        decrement = defDryingDec;
     }

    humidity -= decrement;

    if(humidity < 0){
      humidity = 0;
    }
    timeDrying++;
    life--;
    }
    else {completed = true;}
  }
}
