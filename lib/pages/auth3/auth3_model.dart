import '/flutter_flow/flutter_flow_util.dart';
import 'auth3_widget.dart' show Auth3Widget;
import 'package:flutter/material.dart';

class Auth3Model extends FlutterFlowModel<Auth3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressController1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressController2;
  String? Function(BuildContext, String?)? emailAddressController2Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordConfirmVisibility = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode1?.dispose();
    emailAddressController1?.dispose();

    passwordFocusNode1?.dispose();
    passwordController1?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmController?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressController2?.dispose();

    passwordFocusNode2?.dispose();
    passwordController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
