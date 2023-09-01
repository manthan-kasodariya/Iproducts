class items{
  final String? firstname;
  final String? lastname;
  final String? gender;
  final int? age;

  // curly braces is used inside the constructor to make it named parameters so that names  can be used to assign value like
  // firstname : "manthan"
  //we you do not use {} then you can use it like this

  items({this.firstname, this.lastname, this.gender, this.age});


  //there two use of kyword factory
  // 1st is if you want to initialize the final variable of the class on basis og some logic
  // and other is is call the particular constructor if there are more than one constructor

  //like we give name to string like string manthan = ""  sohere map1 is name of map <string,dynamic> means the all the key are string
  // and the value are dynamic because in jason file there age which is int and other are string and if the key are dynamic then
  //in place of string you can use dynamic keyword
  //items.frommap is named constructor it is not an inbuiltfuntion

  factory items.frommap(Map<String,dynamic> map1){
    return items(
      firstname : map1["firstname"],
      lastname : map1["lastname"],
      gender : map1["gender"],
      age : map1["age"],

    );
  }
}

class catalogmodel{
  static  List<items>? product;
}
