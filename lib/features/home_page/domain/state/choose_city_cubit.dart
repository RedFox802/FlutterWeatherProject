import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home_page/domain/state/choose_city_state.dart';

import '../../data/city_storage.dart';

class ChooseCityCubit extends Cubit<ChooseCityState> {
  ChooseCityCubit() : super(const ChooseCityState());

  final CityStorage _cityStorage = CityStorage();

  init() async {
    await loadCity();
    await loadCityList();
  }

  Future<void> loadCity() async {
    try {
      emit(state.copyWith(loading: true));
      String city = await _cityStorage.loadCity();
      emit(state.copyWith(city: city, loading: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

  Future<void> loadCityList() async {
    try {
      emit(state.copyWith(loading: true));
      List<String> cityList = await _cityStorage.loadCityList();
      emit(state.copyWith(cityList: cityList, loading: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

  Future<void> saveCity({required String city}) async {
    try {
      emit(state.copyWith(loading: true));
      await _cityStorage.saveCity(city: city);
      emit(state.copyWith(city: city, loading: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

  Future<void> saveCityList({required String city}) async {
    try {
      emit(state.copyWith(loading: true));
      List<String> cityList = await _cityStorage.loadCityList();
      cityList.add(city);
      await _cityStorage.saveCityList(cityList: cityList);
      emit(state.copyWith(cityList: cityList, loading: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }
}
