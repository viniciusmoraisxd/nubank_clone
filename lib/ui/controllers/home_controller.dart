import 'package:nubank_interface/shared/theme/app_icons.dart';

import '../models/models.dart';

class HomeController {
  List<CategoryModel> getCategories() {
    return [
      CategoryModel(icon: AppIcons.rewards_ic_empty_state_other, name: "Área Pix"),
      CategoryModel(icon: AppIcons.ic_savings_global_action_pay, name: "Pagar"),
      CategoryModel(icon: AppIcons.ic_savings_global_action_transfer_out, name: "Transferir"),
      CategoryModel(icon: AppIcons.ic_savings_global_action_transfer_in, name: "Depositar"),
      CategoryModel(icon: AppIcons.nuds_ic_personal_loan, name: "Pegar emprestado"),
      CategoryModel(icon: AppIcons.ic_phone, name: "Recarga de celular"),
      CategoryModel(icon: AppIcons.nuds_ic_request_money, name: "Cobrar"),
      CategoryModel(icon: AppIcons.nuds_ic_personal_loan, name: "Doação"),
    ];
  }
}
