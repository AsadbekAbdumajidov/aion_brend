// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class CupertinoTabBarState extends Equatable {
  int index = 0;
  CupertinoTabBarState(this.index);
  @override
  List<Object> get props => [index];
}
