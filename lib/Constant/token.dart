import 'package:pbf_app/view_Model/token_viewModel.dart';

class GetToken {
  static String? token;
  void gettoken() async {
    token = await TokenViewModel().getToken();
  }
}
