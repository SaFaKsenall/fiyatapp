import '/business_panel/components/navigaton_bottombar/navigaton_bottombar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'business_contactpage_widget.dart' show BusinessContactpageWidget;
import 'package:flutter/material.dart';

class BusinessContactpageModel
    extends FlutterFlowModel<BusinessContactpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for NavigatonBottombar component.
  late NavigatonBottombarModel navigatonBottombarModel;

  @override
  void initState(BuildContext context) {
    navigatonBottombarModel =
        createModel(context, () => NavigatonBottombarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    navigatonBottombarModel.dispose();
  }
}
