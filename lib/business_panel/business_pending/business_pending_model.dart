import '/business_panel/components/pending_component/pending_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'business_pending_widget.dart' show BusinessPendingWidget;
import 'package:flutter/material.dart';

class BusinessPendingModel extends FlutterFlowModel<BusinessPendingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PendingComponent component.
  late PendingComponentModel pendingComponentModel;

  @override
  void initState(BuildContext context) {
    pendingComponentModel = createModel(context, () => PendingComponentModel());
  }

  @override
  void dispose() {
    pendingComponentModel.dispose();
  }
}
