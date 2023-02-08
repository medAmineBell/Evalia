class User{
  late String email;
  late String id;
  late String name;
  late String image;
  late String phoneNumber;
  
   
  User({
    required this.email,
    required this.id,
    required this.name,
    required this.image,
    required this.phoneNumber,
   

  });

  
User.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    email = json['email'];
    image = json['image'];
    phoneNumber = json['phoneNumber'].toString();
  }
}