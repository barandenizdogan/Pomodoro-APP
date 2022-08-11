import '../ayarlar/ayarlar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutappWidget extends StatefulWidget {
  const AboutappWidget({Key? key}) : super(key: key);

  @override
  _AboutappWidgetState createState() => _AboutappWidgetState();
}

class _AboutappWidgetState extends State<AboutappWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          child: SingleChildScrollView(
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
                            'ec8bvtau' /* Uygulama Hakkında */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
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
                  padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'kk2jak4i' /* Pomodoro Tekniği Nedir?

Pomod... */
                      ,
                    ),
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
