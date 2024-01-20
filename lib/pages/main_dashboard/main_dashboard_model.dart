import '/components/side/side_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_dashboard_widget.dart' show MainDashboardWidget;
import 'package:flutter/material.dart';

class MainDashboardModel extends FlutterFlowModel<MainDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for side component.
  late SideModel sideModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for side component.
  late SideModel sideModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideModel1 = createModel(context, () => SideModel());
    sideModel2 = createModel(context, () => SideModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideModel1.dispose();
    sideModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
