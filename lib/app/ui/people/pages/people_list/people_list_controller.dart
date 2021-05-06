import 'package:flutter/material.dart';
import 'package:flutter_dojo/app/domain/template/entities/people_entity.dart';
import 'package:flutter_dojo/app/domain/template/usecases/interfaces/get_all_people_usecase.dart';
import 'package:flutter_dojo/app/ui/people/pages/people_list/people_list_store.dart';
import 'package:flutter_dojo/app/ui/people/pages/people_list/widgets/detail_widget.dart';
import 'package:flutter_dojo/common/errors/failure.dart';

class PeopleListController {
  final PeopleListStore store;
  final GetAllPeopleUseCase _usecase;
  PeopleListController(
    this.store,
    this._usecase,
  ) {
    init();
  }
  init() async {
    var list = await _usecase.call();

    list.fold((Failure failure) => {}, (List<PeopleEntity> peopleList) {
      store.setListPeople(peopleList);
    });
  }

  void onTapModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(73)),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return DetailWidget();
      },
    );
  }
}
