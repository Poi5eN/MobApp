import 'package:poi5en_s_application2/core/app_export.dart';
import 'package:poi5en_s_application2/presentation/add_card_screen/models/add_card_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddCardScreen.
///
/// This class manages the state of the AddCardScreen, including the
/// current addCardModelObj
class AddCardController extends GetxController {
  TextEditingController cardNumberEditTextController = TextEditingController();

  TextEditingController expirationDateEditTextController =
      TextEditingController();

  TextEditingController securityCodeEditTextController =
      TextEditingController();

  TextEditingController cardHolderEditTextController = TextEditingController();

  Rx<AddCardModel> addCardModelObj = AddCardModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardNumberEditTextController.dispose();
    expirationDateEditTextController.dispose();
    securityCodeEditTextController.dispose();
    cardHolderEditTextController.dispose();
  }
}
