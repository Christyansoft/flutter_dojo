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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(child: SvgPicture.asset('assets/images/logo_black.svg')),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Text(
                'Characters',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              width: 150.0,
              margin: EdgeInsets.only(left: 16),
              child: Divider(
                thickness: 1,
                color: Theme.of(context).dividerColor,
              ),
            ),
            Container(
              width: 200.0,
              margin: EdgeInsets.only(left: 16),
              transform: Matrix4.translationValues(0.0, -10.0, 0.0),
              child: Divider(
                thickness: 1,
                color: Theme.of(context).dividerColor,
              ),
            ),
            Container(
              height: size.height * 0.3,
              child: Observer(
                builder: (_) {
                  return ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    scrollDirection: Axis.horizontal,
                    itemCount: _controller.store.people.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (_controller.store.people == null || _controller.store.people.isEmpty) {
                        return CircularProgressIndicator();
                      }

                      var people = _controller.store.people[index];

                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width * 0.34,
                              height: size.height * 0.21,
                              child: Card(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                   'https://starwars-visualguide.com/assets/img/characters/1.jpg',
                                  ),
                                ),
                                // child: Image.network(
                                //   'https://starwars-visualguide.com/assets/img/characters/1.jpg',
                                //   fit: BoxFit.fill,
                                // ),
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
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
