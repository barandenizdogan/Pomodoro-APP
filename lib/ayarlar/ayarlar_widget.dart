import '../aboutapp/aboutapp_widget.dart';
import '../anasayfa/anasayfa_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../gelistiricihakkinda/gelistiricihakkinda_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AyarlarWidget extends StatefulWidget {
  const AyarlarWidget({Key? key}) : super(key: key);

  @override
  _AyarlarWidgetState createState() => _AyarlarWidgetState();
}

class _AyarlarWidgetState extends State<AyarlarWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 0.5,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
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
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 0.5,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
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
    'containerOnPageLoadAnimation5': AnimationInfo(
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
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/BACKGROUND.jpg',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
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
                              builder: (context) => AnasayfaWidget(),
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
                          '02n8utot' /* Ayarlar */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).alternate,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 60, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 12),
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
                              width: MediaQuery.of(context).size.width * 0.44,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Color(0x00DCC294),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'xz33hqsx' /* Dil
AyarlarÄ± */
                                            ,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 8, 12, 8),
                                    child: FlutterFlowLanguageSelector(
                                      width: 200,
                                      backgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      dropdownIconColor: Color(0xFF14181B),
                                      borderRadius: 8,
                                      textStyle: TextStyle(
                                        color: Color(0xFF0E0E0E),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 10,
                                      ),
                                      hideFlags: false,
                                      flagSize: 24,
                                      flagTextGap: 8,
                                      currentLanguage:
                                      FFLocalizations.of(context)
                                          .languageCode,
                                      languages: FFLocalizations.languages(),
                                      onChanged: (lang) =>
                                          setAppLanguage(context, lang),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animated([
                            animationsMap['containerOnPageLoadAnimation1']!
                          ]),
                        ),
                        Material(
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
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(25),
                              ),
                            ),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AboutappWidget(),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 12, 8),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'xjcyvmho' /* Uygulama
HakkÄ±nda */
                                        ,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 6, 12, 0),
                                    child: Icon(
                                      Icons.privacy_tip_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation2']!]),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(25),
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(0),
                              ),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'kvvgps4c' /* Ä°letiÅŸim */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      await launchURL(
                                          'https://www.oorbs.studio/');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              2, 0, 12, 0),
                                          child: Icon(
                                            Icons.http,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            size: 25,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '52ce53qy' /* www
oorbs.studio */
                                              ,
                                            ),
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .tertiaryColor,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      await launchURL(
                                          'mailto:app@oorbs.studio');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 12, 4),
                                          child: Icon(
                                            Icons.email,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            size: 25,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'b390s0e8' /* e-mail */,
                                          ),
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      await launchURL(
                                          'https://www.instagram.com/oorbs.studio/');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              2, 0, 12, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.instagram,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            size: 25,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '331seris' /* Instagram */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation3']!]),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
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
                              width: MediaQuery.of(context).size.width * 0.44,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          GelistiricihakkindaWidget(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 0, 12, 8),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '3g2sjote' /* GeliÅŸtirici
HakkÄ±nda */
                                              ,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .title1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 6, 12, 0),
                                      child: FaIcon(
                                        FontAwesomeIcons.code,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        size: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animated([
                            animationsMap['containerOnPageLoadAnimation4']!
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
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
                              width: MediaQuery.of(context).size.width * 0.44,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'KullanÄ±cÄ± sistemi eklenecek, oluÅŸturduÄŸunuz takÄ±mlara kullanÄ±cÄ±larÄ± davet edebileceksiniz. HatÄ±rlatÄ±cÄ± sekmesi yolda, planladÄ±ÄŸÄ±nÄ±z gÃ¶revlerinizi not alabilir bunlara tarih bildirimi ekleyebileceksiniz. Ã‡ok yakÄ±nda sizlerle, Ã¼zerinde Ã§alÄ±ÅŸmaktayÄ±z. TÃ¼m destekleriniz iÃ§in teÅŸekkÃ¼rler... www.OORBS.Studio',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 5000),
                                      backgroundColor: Color(0x00000000),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 0, 12, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'qyemisry' /* GÃ¼ncellemeler */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .title1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 2, 12, 0),
                                      child: Icon(
                                        Icons.accessibility_new,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animated([
                            animationsMap['containerOnPageLoadAnimation5']!
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset(
                      'assets/images/navbar.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 35,
                        fillColor: Color(0x15FFFFFF),
                        icon: FaIcon(
                          FontAwesomeIcons.clock,
                          color: Colors.white,
                          size: 15,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnasayfaWidget(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AnasayfaWidget(),
                              ),
                            );
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'aki7l4hq' /* >Pomodoro< */,
                            ),
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        buttonSize: 35,
                        fillColor: Color(0x15FFFFFF),
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 15,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AyarlarWidget(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AyarlarWidget(),
                              ),
                            );
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'im8s6gb4' /* >Ayarlar< */,
                            ),
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}