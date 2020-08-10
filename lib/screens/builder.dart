import 'package:flutter/material.dart';
import 'package:flutter_business_govnz_api/models/builders.dart';
import 'package:flutter_business_govnz_api/services/http_fetch_api.dart';
import 'package:provider/provider.dart';

class BuilderPage extends StatelessWidget {
  final int id;
  final String name;
  final BuildPractitionerService buildPractitionerService =
      BuildPractitionerService();

  BuilderPage({@required this.id, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        body: FutureProvider(
          create: (context) => buildPractitionerService.fetchBuilder(id),
          child: Center(
            child: Consumer<BuildPractitioner>(
              builder: (context, employee, widget) {
                return (employee != null)
                    ? Text(
                        'Employee: ${employee.name} Phone:${employee.phone}')
                    : CircularProgressIndicator();
              },
            ),
          ),
        ));
  }
}
