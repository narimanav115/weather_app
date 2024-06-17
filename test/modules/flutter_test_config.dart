import 'dart:async';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  Intl.defaultLocale = 'en_EN';

  await initializeDateFormatting(Intl.defaultLocale);
  await loadAppFonts();
  return testMain();
}
