// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class CheckBoxState extends Equatable {
  bool check = false;
  CheckBoxState(this.check);
  @override
  List<Object> get props => [check];
}
