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
                if (_controller.store.people == null ||
                    _controller.store.people.isEmpty) {
                  return CircularProgressIndicator();
                }

                var people = _controller.store.people[index];

                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 200,
                        child: Card(
                          margin: EdgeInsets.all(20),
                          child: Image.network(
                            'https://starwars-visualguide.com/assets/img/characters/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          color: primaryColor,
                        ),
                      ),
                      Text(people.name)
                    ],
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
