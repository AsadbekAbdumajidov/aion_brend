import 'package:aion/src/cubit/cart_count/cart_count_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCountCubit extends Cubit<CartCountState> {
  CartCountCubit() : super(CartCountState(1));

  void countAdd() {
    emit(CartCountState(state.count + 1));
  }

  void countRemove() {
    emit(CartCountState(state.count - 1));
  }
}
