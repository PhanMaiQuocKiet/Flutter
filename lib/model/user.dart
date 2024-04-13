class User{
  //Attributes
 late int id;
 late String name;

 //Constructor
  User(this.id,this.name);

 //Method
@override
  String toString(){
    return '$id - $name';
}
}