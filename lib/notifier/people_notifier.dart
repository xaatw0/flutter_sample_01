import 'package:hooks_riverpod/all.dart';

final peopleProvider = StateNotifierProvider((_) => PeopleNotifer());
final stayProvider = StateNotifierProvider((_) => PeopleNotifer());

class PeopleNotifer extends StateNotifier<int> {
  PeopleNotifer() : super(0);
  void setValue(int people) => state = people;
}
