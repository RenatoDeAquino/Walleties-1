import 'package:walleties/core/services/custom_api.dart';
import 'package:walleties/core/view_models/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  CustomAPI api = CustomAPI();
  static HomeViewModel homeViewModel;
  static HomeViewModel instance() {
    if (homeViewModel == null) {
      homeViewModel = HomeViewModel();
    }
    return homeViewModel;
  }
}
