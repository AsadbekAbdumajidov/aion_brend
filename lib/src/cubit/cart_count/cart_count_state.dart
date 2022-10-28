// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class CartCountState extends Equatable {
  int count = 0;
  CartCountState(this.count);
  @override
  List<Object> get props => [count];
}