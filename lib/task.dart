void main() {
  int j=0;
  
  var list = new List(20);
 
 for(int i=1;i<21;i++)
 {
   list[j]=i;
   j++;
 }
  list.forEach((j) => print(j));
  var square = j.map((j) => "square${j*j}").toList();

  print(square);
 
}