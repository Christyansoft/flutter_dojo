import 'package:flutter/material.dart';
import 'package:flutter_dojo/app/ui/people/pages/people_list/people_list_controller.dart';
import 'package:flutter_dojo/app/ui/theme/app_theme.dart';
import 'package:flutter_dojo/common/injected/module.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PeopleListPage extends StatelessWidget {
  final _controller = getIt.get<PeopleListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Observer(
          builder: (_) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _controller.store.people.length,
              itemBuilder: (BuildContext context, int index) {
                if (_controller.store.people == null || _controller.store.people.isEmpty) {
                  return CircularProgressIndicator();
                }
                return Center(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 100,
                    width: 100,
                    color: primaryColor,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
