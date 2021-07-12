class User{
  final String id;
  final String? image;
  final String name;
  final String email;
  final String address;

 User({
    required this.id,
    this.image,
    required this.name,
    required this.email,
    required this.address,
    });
}