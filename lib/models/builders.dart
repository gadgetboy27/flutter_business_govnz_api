class BuildPractitioner {
  final int id;
  final String name;
  final String phone;
  final String email;

  BuildPractitioner({this.id, this.name, this.phone, this.email});

  BuildPractitioner.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'],
        phone = parsedJson['phone'],
        email = parsedJson['email'];
}
