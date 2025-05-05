import '/business_panel/components/navigaton_bottombar/navigaton_bottombar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_hotels_widget.dart' show MyHotelsWidget;
import 'package:flutter/material.dart';

class MyHotelsModel extends FlutterFlowModel<MyHotelsWidget> {
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
