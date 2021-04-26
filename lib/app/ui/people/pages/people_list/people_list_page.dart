import 'package:flutter/material.dart';
import 'package:flutter_dojo/app/ui/people/pages/people_list/people_list_controller.dart';
import 'package:flutter_dojo/common/injected/module.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class PeopleList extends StatelessWidget {
  final _controller = getIt.get<PeopleListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Observer(
          builder: (_) {
            return ListView.builder(
              itemCount: _controller.store.people.length,
              itemBuilder: (BuildContext context, int index) {
                if (_controller.store.people == null ||
                    _controller.store.people.isNotEmpty) {
                  return CircularProgressIndicator();
                }
                return ListTile(
                  title: Text("bla bla"),
                  subtitle: Text("data"),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
