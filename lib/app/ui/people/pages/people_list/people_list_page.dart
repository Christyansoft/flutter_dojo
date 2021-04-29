import 'package:flutter/material.dart';
import 'package:flutter_dojo/app/ui/people/pages/people_list/people_list_controller.dart';
import 'package:flutter_dojo/app/ui/theme/app_theme.dart';
import 'package:flutter_dojo/common/injected/module.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

class PeopleListPage extends StatelessWidget {
  final _controller = getIt.get<PeopleListController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fillStop = 360 / size.height;
    final colors = [primaryColor, primaryColor, accentColor, accentColor];
    final stops = [0.0, fillStop, fillStop, 1.0];
    return Scaffold(
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: stops,
          colors: colors,
        )),
        child: Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: SvgPicture.asset('assets/images/logo_black.svg'),
              ),
              Text(
                'Movies',
              ),
              Container(
                height: size.height * 0.3,
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

                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 150,
                              height: size.height * 0.27,
                              child: Card(
                                margin: EdgeInsets.all(20),
                                child: Image.network(
                                  'https://starwars-visualguide.com/assets/img/characters/1.jpg',
                                  fit: BoxFit.cover,
                                ),
                                color: primaryColor,
                              ),
                            ),
                            Text(
                              people.name,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
