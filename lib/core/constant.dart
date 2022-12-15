
import 'dart:ui';

class Palette {
  static const Color mainColor = Color(0xFF1C85E8);
  static const Color backgroundColor = Color(0xFFE5E5E5);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color textGreyColor = Color(0xFF797979);
  static const Color pageIndicatorColor = Color(0xFFD9D9D9);
  static const Color redColor = Color(0xFFE71818);
  static const Color blackColor = Color(0xFF000000);
  static const Color textBlackColor = Color(0xFF111111);
}
class Validator {
  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty)
      return 'E-mail address is required.';

    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

    return null;
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty)
      return 'Password is required.';

    return null;
  }
  String? validateSearch(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty)
      return 'Search is required.';

    return null;
  }
  String? validateBusinessName(String? forName) {
    if (forName == null || forName.isEmpty)
      return 'Full Name is required.';
    return null;
  }
  String? validatePhone(String? forPhone) {
    if (forPhone == null || forPhone.isEmpty)
      return 'Phone Number is required.';
    return null;
  }
  String? validateCustomerName (String? forCustomer) {
    if (forCustomer == null || forCustomer.isEmpty)
      return 'Customer Name  is required.';
    return null;
  }
  String? validateAddress(String? forAddress) {
    if (forAddress == null || forAddress.isEmpty)
      return 'Address is required.';
    return null;
  }
  String? validateInfo(String? forInfo) {
    if (forInfo == null || forInfo.isEmpty)
      return 'Additional Info is required.';
    return null;
  }

}
