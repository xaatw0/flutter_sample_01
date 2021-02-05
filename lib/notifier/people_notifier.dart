import 'package:hooks_riverpod/all.dart';

final peopleProvider = StateNotifierProvider((_) => PeopleNotifer());

class PeopleNotifer extends StateNotifier<int> {
  PeopleNotifer() : super(0);
  void setpeople(int people) => state = people;
}
