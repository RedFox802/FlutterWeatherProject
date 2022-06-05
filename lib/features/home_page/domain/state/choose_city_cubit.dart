import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home_page/domain/state/choose_city_state.dart';

import '../../data/city_storage.dart';

class ChooseCityCubit extends Cubit<ChooseCityState> {
  ChooseCityCubit() : super(const ChooseCityState());

  final CityStorage _cityStorage = CityStorage();

  Future<void> loadCity() async {
    try {
      emit(state.copyWith(loading: false));
      String city = await _cityStorage.loadCity();
      emit(state.copyWith(loading: false, city: city));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

  Future<void> saveCity({required String city}) async {
    try {
      emit(state.copyWith(loading: false));
      await _cityStorage.saveCity(city: city);
      emit(state.copyWith(loading: false, city: city));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

  Future<void> updateCity({required String city}) async {
    try {
      emit(state.copyWith(loading: false));
      await _cityStorage.updateCity(city: city);
      emit(state.copyWith(loading: false, city: city));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }
}
