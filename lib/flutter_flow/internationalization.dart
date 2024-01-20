import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // JobList
  {
    'qbf701vs': {
      'en': 'JobList',
      'ar': '',
    },
    'x48x239r': {
      'en': 'Search for your shoes...',
      'ar': '',
    },
    'v5lna2m8': {
      'en': 'Week from ',
      'ar': '',
    },
    'ke943fvd': {
      'en': ' to ',
      'ar': '',
    },
    'l1gnljia': {
      'en': 'Job Details',
      'ar': '',
    },
    'jqb3amwz': {
      'en': 'Staff Name',
      'ar': '',
    },
    '41dc4lqp': {
      'en': 'Job Location',
      'ar': '',
    },
    'olylvxxh': {
      'en': 'Job Time',
      'ar': '',
    },
    'j9p6zsot': {
      'en': 'ــــــــــــ',
      'ar': '',
    },
    'z50i19sc': {
      'en': 'Accept',
      'ar': '',
    },
    'w6674wqx': {
      'en': 'Decline',
      'ar': '',
    },
    'ay5kh693': {
      'en': '+ Timesheet',
      'ar': '',
    },
    'wiqw4ftq': {
      'en': 'Shop',
      'ar': '',
    },
  },
  // MainDashboard
  {
    'nnlpr3e9': {
      'en': 'Job Board',
      'ar': '',
    },
    '60xnktec': {
      'en': 'Client Interface',
      'ar': '',
    },
    'gf59dbz5': {
      'en': 'Admin/Manager Interface',
      'ar': '',
    },
    'fqty4zev': {
      'en': 'Employee Interface',
      'ar': '',
    },
  },
  // ClientDashboard
  {
    'luyq3xmk': {
      'en': 'Client Interface',
      'ar': '',
    },
    'sl6lft95': {
      'en': 'Job Request Forms',
      'ar': '',
    },
    '4491rv0c': {
      'en': 'Job Status Dashboard',
      'ar': '',
    },
  },
  // FormList
  {
    '0vx4qi5z': {
      'en': 'Form1',
      'ar': '',
    },
    'gxppp1bn': {
      'en': 'Form2',
      'ar': '',
    },
    'n11w95gt': {
      'en': 'Form3',
      'ar': '',
    },
  },
  // EmployeeDashboard
  {
    'qus4umcn': {
      'en': 'Employee Interface',
      'ar': '',
    },
    'vtx1mw7h': {
      'en': 'Job List',
      'ar': '',
    },
    '1hvl351h': {
      'en': 'SBM Daily sheet',
      'ar': '',
    },
    '345lqt9q': {
      'en': 'Job Completion Status Update',
      'ar': '',
    },
  },
  // FormPage
  {
    'sd8mnz2e': {
      'en': 'Form Page',
      'ar': '',
    },
    'l9l4q82a': {
      'en': 'jobDetails',
      'ar': '',
    },
    '5ci7neju': {
      'en': 'Enter Field 1',
      'ar': '',
    },
    '6t1g8spg': {
      'en': 'staffName',
      'ar': '',
    },
    'hkzhu5nf': {
      'en': 'Enter Field 2',
      'ar': '',
    },
    'd4fp52e1': {
      'en': 'jobDescription',
      'ar': '',
    },
    'xnvxzibq': {
      'en': 'Enter Field 4',
      'ar': '',
    },
    'vi3mrlnl': {
      'en': 'Start time',
      'ar': '',
    },
    '7t3iexi2': {
      'en': 'end time',
      'ar': '',
    },
    '80byw3ky': {
      'en': 'jobLocation',
      'ar': '',
    },
    'wwphhfju': {
      'en': 'Enter Field 3',
      'ar': '',
    },
    'b9rx50ge': {
      'en': 'Agree',
      'ar': '',
    },
    'dv1mooid': {
      'en': 'All the Information are true',
      'ar': '',
    },
    'ocq7e8ev': {
      'en': 'Submit',
      'ar': '',
    },
    'o0olzq0f': {
      'en': 'Field is required',
      'ar': '',
    },
    'uic07ua8': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    's3j9zsy5': {
      'en': 'Field is required',
      'ar': '',
    },
    'asr94jv6': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'nhgb4o6i': {
      'en': 'Field is required',
      'ar': '',
    },
    'l3ulxdl6': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'goru9bex': {
      'en': 'Field is required',
      'ar': '',
    },
    'vw16tzgy': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // JobStatus
  {
    'n5irx011': {
      'en': 'Job Status',
      'ar': '',
    },
    '1scf2bth': {
      'en': 'Search for your shoes...',
      'ar': '',
    },
    '85hsa7uv': {
      'en': 'Week from ',
      'ar': '',
    },
    '53ypb418': {
      'en': ' to ',
      'ar': '',
    },
    'liyf4as8': {
      'en': 'Job Details',
      'ar': '',
    },
    '0aurw93s': {
      'en': 'Staff Name',
      'ar': '',
    },
    'ihipdz2p': {
      'en': 'Job Location',
      'ar': '',
    },
    'f9ygf598': {
      'en': 'Job Time',
      'ar': '',
    },
    'ija07u2z': {
      'en': 'ــــــــــــ',
      'ar': '',
    },
    'np79wi7w': {
      'en': 'Shop',
      'ar': '',
    },
  },
  // Timesheet
  {
    'hxirgj51': {
      'en': 'Timesheet',
      'ar': '',
    },
    'kcj9t25b': {
      'en': 'jobDetails',
      'ar': '',
    },
    '4znbtqkl': {
      'en': 'Enter Field 1',
      'ar': '',
    },
    'robgz8tx': {
      'en': 'staffName',
      'ar': '',
    },
    'zxv28yic': {
      'en': 'Enter Field 2',
      'ar': '',
    },
    'st8pkywm': {
      'en': 'jobDescription',
      'ar': '',
    },
    'l3y4k6b1': {
      'en': 'Enter Field 4',
      'ar': '',
    },
    'cca00me4': {
      'en': 'Start time',
      'ar': '',
    },
    '8kjjv0uz': {
      'en': 'end time',
      'ar': '',
    },
    'iwzojjz4': {
      'en': 'jobLocation',
      'ar': '',
    },
    'hcetwwnp': {
      'en': 'Enter Field 3',
      'ar': '',
    },
    '0gh1p1pt': {
      'en': 'Agree',
      'ar': '',
    },
    '3zqotggz': {
      'en': 'All the Information are true',
      'ar': '',
    },
    'lfvd8avk': {
      'en': 'Submit',
      'ar': '',
    },
    '6tlqjlsf': {
      'en': 'Field is required',
      'ar': '',
    },
    '3gni2qs9': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'zpvz4ohg': {
      'en': 'Field is required',
      'ar': '',
    },
    'pfrqlpcm': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'q53ecroe': {
      'en': 'Field is required',
      'ar': '',
    },
    '0006j7oh': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'yqbd1emm': {
      'en': 'Field is required',
      'ar': '',
    },
    'c19m7n69': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // DailySheet
  {
    'k7t30dh9': {
      'en': 'JobList',
      'ar': '',
    },
    'tfmmkutu': {
      'en': 'Search for your shoes...',
      'ar': '',
    },
    'qfl4cmbm': {
      'en': 'Week from ',
      'ar': '',
    },
    'o89gzdfk': {
      'en': ' to ',
      'ar': '',
    },
    'nitvvtap': {
      'en': 'Job Details',
      'ar': '',
    },
    'jav2xyaa': {
      'en': 'Staff Name',
      'ar': '',
    },
    'msail8tu': {
      'en': 'Job Location',
      'ar': '',
    },
    'l3g0u6dn': {
      'en': 'Job Time',
      'ar': '',
    },
    '2u9iu1mw': {
      'en': 'ــــــــــــ',
      'ar': '',
    },
    'hrcfwm5r': {
      'en': 'Completed',
      'ar': '',
    },
    'iqh4x51v': {
      'en': 'Shop',
      'ar': '',
    },
  },
  // Auth3
  {
    'pgjy0d87': {
      'en': 'SBM Jobs Managment',
      'ar': '',
    },
    '9tkzzgjn': {
      'en': 'Create Account',
      'ar': '',
    },
    'za0s3bsj': {
      'en': 'Create Account',
      'ar': '',
    },
    'ljxwypyx': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
    },
    'o3kr18sd': {
      'en': 'Email',
      'ar': '',
    },
    'xg4sj09z': {
      'en': 'Password',
      'ar': '',
    },
    'nvcgnvm6': {
      'en': 'PasswordConfirm',
      'ar': '',
    },
    'uuxu0ar5': {
      'en': 'Get Started',
      'ar': '',
    },
    'jasiz79s': {
      'en': 'Log In',
      'ar': '',
    },
    '4maxyzlk': {
      'en': 'Welcome Back',
      'ar': '',
    },
    'hd0sxwc3': {
      'en': 'Fill out the information below in order to access your account.',
      'ar': '',
    },
    'jk0mr38y': {
      'en': 'Email',
      'ar': '',
    },
    'bv9h6zv0': {
      'en': 'Password',
      'ar': '',
    },
    'k7wgyt26': {
      'en': 'Sign In',
      'ar': '',
    },
    '3qgqdcry': {
      'en': 'Button',
      'ar': '',
    },
    'dg8rh9c9': {
      'en': 'Home',
      'ar': '',
    },
  },
  // drop
  {
    '0uh95ffn': {
      'en': 'Account Options',
      'ar': '',
    },
    'd2i19jzq': {
      'en': 'Randy Peterson',
      'ar': '',
    },
    'ksctuonp': {
      'en': 'randy.p@domainname.com',
      'ar': '',
    },
    'uvvqa2fw': {
      'en': 'My Account',
      'ar': '',
    },
    '8kyciya8': {
      'en': 'Settings',
      'ar': '',
    },
    'off648pq': {
      'en': 'Billing Details',
      'ar': '',
    },
    '4s71711t': {
      'en': 'Light Mode',
      'ar': '',
    },
    's5xo2my8': {
      'en': 'Dark Mode',
      'ar': '',
    },
    'lay7jcw2': {
      'en': 'Log out',
      'ar': '',
    },
  },
  // side
  {
    'ieylppjl': {
      'en': 'SBM Job',
      'ar': '',
    },
    '8td8b61i': {
      'en': 'Andrew D.',
      'ar': '',
    },
    '5ekeaz62': {
      'en': 'admin@gmail.com',
      'ar': '',
    },
    '4t6tx1qj': {
      'en': 'Log out',
      'ar': '',
    },
    '4b6zhort': {
      'en': 'Platform Navigation',
      'ar': '',
    },
    '33sn1dn4': {
      'en': 'Dashboard',
      'ar': '',
    },
    '1mk2ui34': {
      'en': 'Client Dashboard',
      'ar': '',
    },
    '8fytpbde': {
      'en': 'Employee Dashboard',
      'ar': '',
    },
    'ozjcwbia': {
      'en': 'Settings',
      'ar': '',
    },
    'yzun0bv0': {
      'en': 'Notifications',
      'ar': '',
    },
    'ih7m0htm': {
      'en': '12',
      'ar': '',
    },
    'f8f920ry': {
      'en': 'Billing',
      'ar': '',
    },
    's619ryqa': {
      'en': 'Explore',
      'ar': '',
    },
    'ktg8tkkt': {
      'en': 'Light Mode',
      'ar': '',
    },
    'x7kyjj70': {
      'en': 'Dark Mode',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    '193i0kty': {
      'en': '',
      'ar': '',
    },
    '4bmi2j8f': {
      'en': '',
      'ar': '',
    },
    'p9nhh8ot': {
      'en': '',
      'ar': '',
    },
    '810dwy14': {
      'en': '',
      'ar': '',
    },
    '4uwwvig7': {
      'en': '',
      'ar': '',
    },
    'mhftmqh9': {
      'en': '',
      'ar': '',
    },
    'c5906yph': {
      'en': '',
      'ar': '',
    },
    '4ps4xbh7': {
      'en': '',
      'ar': '',
    },
    'wmh8j1f5': {
      'en': '',
      'ar': '',
    },
    'qy3fww9p': {
      'en': '',
      'ar': '',
    },
    'te9xip4a': {
      'en': '',
      'ar': '',
    },
    'mh13x8hu': {
      'en': '',
      'ar': '',
    },
    'giskghmg': {
      'en': '',
      'ar': '',
    },
    'djnejf6h': {
      'en': '',
      'ar': '',
    },
    'lkr2uyf8': {
      'en': '',
      'ar': '',
    },
    '7952orga': {
      'en': '',
      'ar': '',
    },
    'wssxstys': {
      'en': '',
      'ar': '',
    },
    'tg27z8cy': {
      'en': '',
      'ar': '',
    },
    'n2nxjkmo': {
      'en': '',
      'ar': '',
    },
    'itb91hgv': {
      'en': '',
      'ar': '',
    },
    '3oojd3wk': {
      'en': '',
      'ar': '',
    },
    'gg35kofs': {
      'en': '',
      'ar': '',
    },
    '1oxjdt7d': {
      'en': '',
      'ar': '',
    },
    'j7hx5pcz': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
