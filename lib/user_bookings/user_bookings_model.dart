import '/flutter_flow/flutter_flow_util.dart';
import '/user_panel/user_navigaton_bottombar/user_navigaton_bottombar_widget.dart';
import 'user_bookings_widget.dart' show UserBookingsWidget;
import 'package:flutter/material.dart';

class UserBookingsModel extends FlutterFlowModel<UserBookingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UserNavigatonBottombar component.
  late UserNavigatonBottombarModel userNavigatonBottombarModel;

  @override
  void initState(BuildContext context) {
    userNavigatonBottombarModel =
        createModel(context, () => UserNavigatonBottombarModel());
  }

  @override
  void dispose() {
    userNavigatonBottombarModel.dispose();
  }
}
