import 'package:flutter/widgets.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class ButtomState extends AppState{
  ButtomState();
}