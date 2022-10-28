import 'package:aion/src/cubit/favorite/favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteState(false));

  void favoriteCheck() {
    emit(FavoriteState(!state.favorite));
  }
}
