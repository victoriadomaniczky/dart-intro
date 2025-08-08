void main() {
  
  final numberList = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  
  print('OG List: $numberList');
  print('Length: ${ numberList.length }');
  print('Index 0: ${ numberList[0] }');
  print('First element: ${ numberList.first }');
  print('Last element: ${ numberList.last }');
  print('Reversed: ${ numberList.reversed }'); // pasa de list a iterable, {} a () 
  print('List to Set to List: ${ numberList.toSet().toList() }');
  
  
  final reversedNumbers = numberList.reversed;
  
  print('Iterable: $reversedNumbers');
  print('Iterable to list: ${ reversedNumbers.toList() }');
  print('Iterable to Set: ${ reversedNumbers.toSet() }'); // es como un listado, pero sus valores son únicos
  
  final numbersGreaterThan5 = numberList.where( (int num) {
    return num > 5; // true
  });
  print('>5: $numbersGreaterThan5'); // devuelve un iterable
  print('>5: ${ numbersGreaterThan5.toSet() }'); // devuelve un set
  
  
}