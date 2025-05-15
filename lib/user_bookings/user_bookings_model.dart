import '/components/cardtravel_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_panel/user_navigaton_bottombar/user_navigaton_bottombar_widget.dart';
import 'user_bookings_widget.dart' show UserBookingsWidget;
import 'package:flutter/material.dart';

class UserBookingsModel extends FlutterFlowModel<UserBookingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cardtravel component.
  late CardtravelModel cardtravelModel1;
  // Model for cardtravel component.
  late CardtravelModel cardtravelModel2;
  // Model for cardtravel component.
  late CardtravelModel cardtravelModel3;
  // Model for cardtravel component.
  late CardtravelModel cardtravelModel4;
  // Model for cardtravel component.
  late CardtravelModel cardtravelModel5;
  // Model for cardtravel component.
  late CardtravelModel cardtravelModel6;
  // Model for UserNavigatonBottombar component.
  late UserNavigatonBottombarModel userNavigatonBottombarModel;

  @override
  void initState(BuildContext context) {
    cardtravelModel1 = createModel(context, () => CardtravelModel());
    cardtravelModel2 = createModel(context, () => CardtravelModel());
    cardtravelModel3 = createModel(context, () => CardtravelModel());
    cardtravelModel4 = createModel(context, () => CardtravelModel());
    cardtravelModel5 = createModel(context, () => CardtravelModel());
    cardtravelModel6 = createModel(context, () => CardtravelModel());
    userNavigatonBottombarModel =
        createModel(context, () => UserNavigatonBottombarModel());
  }

  @override
  void dispose() {
    cardtravelModel1.dispose();
    cardtravelModel2.dispose();
    cardtravelModel3.dispose();
    cardtravelModel4.dispose();
    cardtravelModel5.dispose();
    cardtravelModel6.dispose();
    userNavigatonBottombarModel.dispose();
  }
}
