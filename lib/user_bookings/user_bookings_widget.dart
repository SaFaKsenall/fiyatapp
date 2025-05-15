import '/components/cardtravel_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_panel/user_navigaton_bottombar/user_navigaton_bottombar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'user_bookings_model.dart';
export 'user_bookings_model.dart';

/// modern bookings page
class UserBookingsWidget extends StatefulWidget {
  const UserBookingsWidget({super.key});

  static String routeName = 'UserBookings';
  static String routePath = '/userBookings';

  @override
  State<UserBookingsWidget> createState() => _UserBookingsWidgetState();
}

class _UserBookingsWidgetState extends State<UserBookingsWidget> {
  late UserBookingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserBookingsModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 12.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'My Bookings',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.cardtravelModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: CardtravelWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardtravelModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: CardtravelWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardtravelModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: CardtravelWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardtravelModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: CardtravelWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardtravelModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: CardtravelWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardtravelModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: CardtravelWidget(),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x15000000),
                            offset: Offset(
                              0.0,
                              -2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.userNavigatonBottombarModel,
                updateCallback: () => safeSetState(() {}),
                child: UserNavigatonBottombarWidget(
                  selectedpage: 2,
                  hidden: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
