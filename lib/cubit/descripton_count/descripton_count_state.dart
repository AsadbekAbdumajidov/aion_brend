// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class DescriptonCountState extends Equatable {
  int count = 0;
  DescriptonCountState(this.count);
  @override
  List<Object> get props => [count];
}