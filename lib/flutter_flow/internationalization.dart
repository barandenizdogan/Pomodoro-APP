import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['tr', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String? trText = '',
    String? enText = '',
  }) =>
      [trText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Anasayfa
  {
    'pfsqntzr': {
      'tr': '>Pomodoro<',
      'en': '>Pomodoro<',
    },
    'ri6arc7g': {
      'tr': '>Ayarlar<',
      'en': '>Settings<',
    },
    'gk723kuk': {
      'tr': 'Pomodoro',
      'en': 'Pomodoro',
    },
    'gk723keh': {
      'tr': '>25 Dakika<',
      'en': '>25 Minute<',
    },
    'gk723ker': {
      'tr': '>Kısa Mola<',
      'en': '>Short Brake<',
    },
    'gk723ket': {
      'tr': '>Uzun Mola<',
      'en': '>Long Brake<',
    },
    'gk723krt': {
      'tr': 'Başla',
      'en': 'Start',
    },
    'gk723krr': {
      'tr': 'Duraklat',
      'en': 'Stop',
    },
    'gk723kre': {
      'tr': 'Sıfırla',
      'en': 'Reset',
    },
    'pfsqntze': {
      'tr': 'Sağa kaydırarak diğer seçeneklere ulaşabilirsiniz.',
      'en': 'Swipe right to see other functions.',
    },
  },
  // gelistiricihakkinda
  {
    'mr3w67gz': {
      'tr': '<OORBS.Studio>',
      'en': '<OORBS.Studio>',
    },
    'az9z13o6': {
      'tr': '   Ayarlar',
      'en': 'Settings',
    },
  },
  // aboutapp
  {
    'ec8bvtau': {
      'tr': 'Uygulama Hakkında',
      'en': 'About App',
    },
    'kk2jak4i': {
      'tr':
          'Pomodoro Tekniği Nedir?\n\nPomodoro Tekniği, Francesco Cirillo tarafından çalışmak ve okumak için daha verimli bir yol için yaratılmıştır. Teknik, işi geleneksel olarak 25 dakikalık aralıklarla kısa molalarla ayrılmış aralıklarla bölmek için bir zamanlayıcı kullanır. Her aralık, Cirillo\'nun üniversite öğrencisi olarak kullandığı domates şeklindeki mutfak zamanlayıcısından sonra İtalyanca \'domates\' kelimesinden bir pomodoro olarak bilinir. - Vikipedi\n\nPomodoro Zamanlayıcı nasıl kullanılır?\n\nBugün üzerinde çalışmak için görevler ekleyin...\nHer görev için tahmini pomodoroları (1 = 25 dakikalık çalışma) ayarlayın\nÜzerinde çalışmak için bir görev seçin\nZamanlayıcıyı başlatın ve 25 dakika boyunca göreve odaklanın\nAlarm çaldığında 5 dakika ara verin\nGörevleri bitirene kadar 3-5 defa yineleyin',
      'en':
          'What is Pomodoro Technique?\n\nThe Pomodoro Technique is created by Francesco Cirillo for a more productive way to work and study. The technique uses a timer to break down work into intervals, traditionally 25 minutes in length, separated by short breaks. Each interval is known as a pomodoro, from the Italian word for \'tomato\', after the tomato-shaped kitchen timer that Cirillo used as a university student. - Wikipedia\n\nHow to use the Pomodoro Timer?\n\nAdd tasks to work on today\nSet estimate pomodoros (1 = 25min of work) for each tasks\nSelect a task to work on\nStart timer and focus on the task for 25 minutes\nTake a break for 5 minutes when the alarm ring\nIterate 3-5 until you finish the tasks',
    },
    'nn8bzjg8': {
      'tr': 'Ayarlar',
      'en': 'Settings',
    },
  },
  // Ayarlar
  {
    'jt6t3kw3': {
      'tr': 'Ayarlar',
      'en': 'Settings',
    },
    'xz33hqsx': {
      'tr': 'Dil\nAyarları',
      'en': 'Language\nSettings',
    },
    'xjcyvmho': {
      'tr': 'Uygulama\nHakkında',
      'en': 'About\nApp',
    },
    'kvvgps4c': {
      'tr': 'İletişim',
      'en': 'Contact Us',
    },
    '52ce53qy': {
      'tr': 'www\noorbs.studio',
      'en': 'www\noorbs.studio',
    },
    'b390s0e8': {
      'tr': 'e-mail',
      'en': 'e-mail',
    },
    '331seris': {
      'tr': 'Instagram',
      'en': 'Instagram',
    },
    '3g2sjote': {
      'tr': 'Geliştirici\nHakkında',
      'en': 'About\nDeveloper',
    },
    'qcs7mfcm': {
      'tr': 'Güncellemeler',
      'en': 'Updates',
    },
    'aki7l4hq': {
      'tr': '>Pomodoro<',
      'en': '>Pomodoro<',
    },
    'im8s6gb4': {
      'tr': '>Ayarlar<',
      'en': '>Settings<',
    },
    'y2f02fue': {
      'tr': ' Ayarlar',
      'en': 'Settings',
    },
  },
  // Miscellaneous
  {
    'gs5ll56s': {
      'tr': 'Bildirimlere izin vermek ister misiniz?',
      'en': 'Do you want to allow notifications?',
    },
  },
].reduce((a, b) => a..addAll(b));
