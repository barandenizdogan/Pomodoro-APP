import 'dart:async';
import '../notification_service.dart';
import '../ayarlar/ayarlar_widget.dart';
import '../flutter_flow/flutter_flow_ad_banner.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:pomodoro/notification_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

bool _isCounting = true;
bool _isCounting5 = true;
bool _isCounting30 = true;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

class AnasayfaWidget extends StatefulWidget {
  const AnasayfaWidget({Key? key}) : super(key: key);

  @override
  _AnasayfaWidgetState createState() => _AnasayfaWidgetState();
}

class _AnasayfaWidgetState extends State<AnasayfaWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Timer? countdownTimer;
  Timer? myCancelableFuture;
  Duration myDuration = Duration(minutes: 25);
  Duration myDuration5 = Duration(minutes: 5);
  Duration myDuration30 = Duration(minutes: 30);

  Future <void> startTimer() async {
    setState(() {
      _isCounting = false;
    });
    countdownTimer = Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
    myCancelableFuture = Timer.periodic(Duration(minutes: 25), (_) => showNotification());
  }
  Future <void> startTimer5() async {
    setState(() {
      _isCounting5 = false;
    });
    countdownTimer = Timer.periodic(Duration(seconds: 1), (_) => setCountDown5());
    myCancelableFuture = Timer.periodic(Duration(minutes: 5), (_) => showNotification());
  }
  Future <void> startTimer30() async {
    setState(() {
      _isCounting30 = false;
    });
    countdownTimer = Timer.periodic(Duration(seconds: 1), (_) => setCountDown30());
    myCancelableFuture = Timer.periodic(Duration(minutes: 30), (_) => showNotification());
  }
  Future <void> resetTimer() async {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 25));
    setState(() => myCancelableFuture!.cancel());
    setState(() {
      _isCounting = true;
    });
  }
  Future <void> resetTimer5() async {
    stopTimer();
    setState(() => myDuration5 = Duration(minutes: 5));
    setState(() => myCancelableFuture!.cancel());
    setState(() {
      _isCounting5 = true;
    });
  }
  Future <void> resetTimer30() async {
    stopTimer();
    setState(() => myDuration30 = Duration(minutes: 30));
    setState(() => myCancelableFuture!.cancel());
    setState(() {
      _isCounting30 = true;
    });
  }
  Future <void> setCountDown() async {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }
  Future <void> setCountDown5() async {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration5.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration5 = Duration(seconds: seconds);
      }
    });
  }
  Future <void> setCountDown30() async {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration30.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration30 = Duration(seconds: seconds);
      }
    });
  }
  Future <void> stopTimer() async {
    setState(() => countdownTimer!.cancel());
    setState(() => myCancelableFuture!.cancel());
    setState(() {
      _isCounting = true;
    });
    setState(() {
      _isCounting5 = true;
    });
    setState(() {
      _isCounting30 = true;
    });
  }

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    final minutes5 = strDigits(myDuration5.inMinutes.remainder(60));
    final seconds5 = strDigits(myDuration5.inSeconds.remainder(60));
    final minutes30 = strDigits(myDuration30.inMinutes.remainder(60));
    final seconds30 = strDigits(myDuration30.inSeconds.remainder(60));
    return Scaffold(
      key: scaffoldKey,
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
              FlutterFlowAdBanner(
                width: MediaQuery.of(context).size.width,
                height: 100,
                showsTestAd: false,
                androidAdUnitID: 'ca-app-pub-5455528914159263/2850363070',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 22),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                  'gk723keh' /* >Anasayfa< */,
                                ),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),),
                                SizedBox(height: 30),
                                Text(
                                  '$minutes:$seconds',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 45),
                                ),
                                SizedBox(height: 20),
                                // Step 9
                                ElevatedButton(
                                  onPressed: () => _isCounting ? startTimer() : stopTimer(),
                                  child: Text(_isCounting ?
                                    FFLocalizations.of(context).getText(
                                    'gk723krt'/* >Anasayfa< */,
                                  ) : FFLocalizations.of(context).getText(
                                    'gk723krr' /* >Anasayfa< */,
                                  ),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 25,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () async {
                                      resetTimer();
                                    },
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                      'gk723kre' /* >Anasayfa< */,
                                    ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 25,
                                      ),
                                    ),
                                  style: ElevatedButton.styleFrom(
                                    primary: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),),
                                SizedBox(height: 30),
                                Text(
                                  FFLocalizations.of(context).getText(
                                  'pfsqntze' /* >Anasayfa< */),
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(FFLocalizations.of(context).getText(
                                  'gk723ker' /* >Anasayfa< */,
                                ),
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                ),),
                                SizedBox(
                                  height: 30,
                                ),
                                // Step 8
                                Text(
                                  '$minutes5:$seconds5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 45),
                                ),
                                SizedBox(height: 20),
                                // Step 9
                                ElevatedButton(
                                  onPressed: () => _isCounting5 ? startTimer5() : stopTimer(),
                                  child: Text(_isCounting5 ?
                                  FFLocalizations.of(context).getText(
                                    'gk723krt'/* >Anasayfa< */,
                                  ) : FFLocalizations.of(context).getText(
                                    'gk723krr' /* >Anasayfa< */,
                                  ),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 25,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    resetTimer5();
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                    'gk723kre' /* >Anasayfa< */,
                                  ),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 25,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),)
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [

                                Text(FFLocalizations.of(context).getText(
                                  'gk723ket' /* >Anasayfa< */,
                                ),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),),
                                SizedBox(
                                  height: 30,
                                ),
                                // Step 8
                                Text(
                                  '$minutes30:$seconds30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 45),
                                ),
                                SizedBox(height: 20),
                                // Step 9
                                ElevatedButton(
                                  onPressed: () => _isCounting30 ? startTimer30() : stopTimer(),
                                  child: Text(_isCounting30 ?
                                  FFLocalizations.of(context).getText(
                                    'gk723krt'/* >Anasayfa< */,
                                  ) : FFLocalizations.of(context).getText(
                                    'gk723krr' /* >Anasayfa< */,
                                  ),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 25,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    resetTimer30();
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                    'gk723kre' /* >Anasayfa< */,
                                  ),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 25,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 12,
                              radius: 32,
                              dotWidth: 8,
                              dotHeight: 8,
                              dotColor: Color(0x9866573F),
                              activeDotColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnasayfaWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AnasayfaWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'pfsqntzr' /* >Pomodoro< */,
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
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AyarlarWidget(),
                            ),
                            (r) => false,
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AyarlarWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'ri6arc7g' /* >Ayarlar< */,
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


