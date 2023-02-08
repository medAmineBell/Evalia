class Company{
  late String email;
  late String id;
  late String name;
  late String adress;
  late String reviewNumber;
  late String phoneNumber;
  late String category;
  late String logo;
  late String qrCode;
  late String description;
   
  Company({
    required this.email,
    required this.id,
    required this.reviewNumber,
    required this.name,
    required this.adress,
    required this.phoneNumber,
    required this.category,
    required this.logo,
    required this.qrCode,
    required this.description,

  });

  
Company.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    email = json['email'];
    reviewNumber = json['reviewNumber'].toString();
    logo = json['logo'];
    description = json['description'];
    adress = json['location'];
    category = json['category'];
    qrCode = json['qrCode'];
    phoneNumber = json['phoneNumber'].toString();
  }
}