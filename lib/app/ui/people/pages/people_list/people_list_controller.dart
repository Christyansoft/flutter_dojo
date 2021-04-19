import 'package:flutter_dojo/app/domain/template/usecases/get_all_people_usecase.dart';
import 'package:flutter_dojo/app/ui/people/pages/people_list/people_list_store.dart';
import 'package:flutter_dojo/common/usecase/usecase.dart';

class PeopleListController {
  final PeopleListStore store;
  final GetAllTemplateUseCase _usecase;
  PeopleListController(
    this.store,
    this._usecase,
  );
  init() async {
    var list = await _usecase.call(NoParams());
    list.fold((l) => {}, (r) {
      store.setListPeople(r);
    });
  }
}
