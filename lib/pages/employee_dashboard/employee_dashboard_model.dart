import '/components/side/side_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'employee_dashboard_widget.dart' show EmployeeDashboardWidget;
import 'package:flutter/material.dart';

class EmployeeDashboardModel extends FlutterFlowModel<EmployeeDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for side component.
  late SideModel sideModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideModel = createModel(context, () => SideModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
