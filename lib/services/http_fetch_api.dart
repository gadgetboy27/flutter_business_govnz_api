import '../models/builders.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class BuildPractitionerService {
  Future<List<BuildPractitioner>> fetchBuilders() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/users");
    var jsonResponse = convert.jsonDecode(response.body) as List;
    return jsonResponse
        .map((buildPractitioner) =>
            BuildPractitioner.fromJson(buildPractitioner))
        .toList();
  }

  Future<BuildPractitioner> fetchBuilder(int id) async {
    var response =
        await http.get("https://jsonplaceholder.typicode.com/users/$id");
    var jsonResponse = convert.jsonDecode(response.body);
    return BuildPractitioner.fromJson(jsonResponse);
  }
}
