import 'package:poi5en_s_application2/core/app_export.dart';
import 'package:poi5en_s_application2/presentation/search_result_no_data_found_screen/models/search_result_no_data_found_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchResultNoDataFoundScreen.
///
/// This class manages the state of the SearchResultNoDataFoundScreen, including the
/// current searchResultNoDataFoundModelObj
class SearchResultNoDataFoundController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultNoDataFoundModel> searchResultNoDataFoundModelObj =
      SearchResultNoDataFoundModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in searchResultNoDataFoundModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    searchResultNoDataFoundModelObj.value.dropdownItemList.refresh();
  }
}
