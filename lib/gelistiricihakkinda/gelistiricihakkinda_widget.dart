import '../ayarlar/ayarlar_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class GelistiricihakkindaWidget extends StatefulWidget {
  const GelistiricihakkindaWidget({Key? key}) : super(key: key);

  @override
  _GelistiricihakkindaWidgetState createState() =>
      _GelistiricihakkindaWidgetState();
}

class _GelistiricihakkindaWidgetState extends State<GelistiricihakkindaWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1.5,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/BACKGROUND.jpg',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0x3FDCC294), Color(0x0014181B)],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AyarlarWidget(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.chevron_left_outlined,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'mr3w67gz' /* <OORBS.Studio> */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 18,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 24),
                child: Material(
                  color: Colors.transparent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      child: FlutterFlowWebView(
                        url: 'https://www.oorbs.studio/',
                        bypass: false,
                        height: MediaQuery.of(context).size.height * 1,
                        verticalScroll: false,
                        horizontalScroll: false,
                      ),
                    ),
                  ),
                ).animated([animationsMap['containerOnPageLoadAnimation']!]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
