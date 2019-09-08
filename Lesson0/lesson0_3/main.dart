List<String> dict = const ['abacaba','abracadabra', 'aa','abra']; // dictionary.
List<String> spref = const ['a','abra','abac']; // suprefix words.

main(List<String> arguments) {
  int sum = 0;

  for(var sprefWord in spref){
    for(var dictWord in dict){
      if(dictWord.startsWith(sprefWord) 
      && dictWord.endsWith(sprefWord)
      && sprefWord.length != dictWord.length){ // check if the endings and start of the word match and sum counter.
        sum++;
      }
      else if (dictWord.startsWith(sprefWord) // check case if suprefix = dictionary length. 
      && dictWord.length == sprefWord.length){
        sum++;
      }
    }
    print('This suprefix: "$sprefWord" is ​​suitable for'+
    'this count vocabulary words: $sum'); // Output to console.
    sum = 0;
  }
}