import '/business_panel/navigaton_bottombar/navigaton_bottombar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'business_settings_page_widget.dart' show BusinessSettingsPageWidget;
import 'package:flutter/material.dart';

class BusinessSettingsPageModel
    extends FlutterFlowModel<BusinessSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavigatonBottombar component.
  late NavigatonBottombarModel navigatonBottombarModel;

  @override
  void initState(BuildContext context) {
    navigatonBottombarModel =
        createModel(context, () => NavigatonBottombarModel());
  }

  @override
  void dispose() {
    navigatonBottombarModel.dispose();
  }
}
