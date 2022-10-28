// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class FavoriteState extends Equatable {
  bool favorite = false;
  FavoriteState(this.favorite);
  @override
  List<Object> get props => [favorite];
}
