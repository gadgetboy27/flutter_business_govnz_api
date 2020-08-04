import 'package:flutter/material.dart';
import 'package:flutter_business_govnz_api/models/builders.dart';
import 'package:flutter_business_govnz_api/screens/builder.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BuildPractitioner> buildPractitioner =
        Provider.of<List<BuildPractitioner>>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Building Practitioners'),
        ),
        body: (buildPractitioner == null)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: buildPractitioner.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text(buildPractitioner[index].email),
                    title: Text(buildPractitioner[index].name),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BuilderPage(
                                id: buildPractitioner[index].id,
                                name: buildPractitioner[index].name,
                              )));
                    },
                  );
                }));
  }
}
