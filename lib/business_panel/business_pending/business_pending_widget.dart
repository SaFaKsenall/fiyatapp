import '/business_panel/components/pending_component/pending_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'business_pending_model.dart';
export 'business_pending_model.dart';

class BusinessPendingWidget extends StatefulWidget {
  const BusinessPendingWidget({super.key});

  static String routeName = 'BusinessPending';
  static String routePath = '/businessPending';

  @override
  State<BusinessPendingWidget> createState() => _BusinessPendingWidgetState();
}

class _BusinessPendingWidgetState extends State<BusinessPendingWidget> {
  late BusinessPendingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BusinessPendingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.pendingComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: PendingComponentWidget(),
              ),
              FFButtonWidget(
                onPressed: () async {
                  FFAppState().isLoggedIn = false;
                  FFAppState().deleteDisplayName();
                  FFAppState().displayName = '';

                  FFAppState().deleteUserrole();
                  FFAppState().userrole = '';

                  FFAppState().deleteStatus();
                  FFAppState().status = '';

                  FFAppState().deleteBusinessName();
                  FFAppState().businessName = '';

                  FFAppState().deleteUid();
                  FFAppState().uid = '';

                  FFAppState().deleteCreatedAt();
                  FFAppState().createdAt = '';

                  FFAppState().deleteAuthToken();
                  FFAppState().authToken = '';

                  FFAppState().deleteEmail();
                  FFAppState().email = '';

                  safeSetState(() {});

                  context.pushNamed(LoginPageWidget.routeName);
                },
                text: 'Çıkış Yap',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
