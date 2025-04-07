
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediobserve/routes/app_pages.dart';
import 'package:nb_utils/nb_utils.dart';

import 'language/language_en.dart';
import 'language/languages.dart';
import 'modules/login/model/common_model.dart';
Rx<BaseLanguage> locale = LanguageEn().obs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize(aLocaleLanguageList: languageList());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MediObserve",
      initialRoute:AppPages.initial,
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge:
              GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.bold),
          displayMedium:
              GoogleFonts.roboto(fontSize: 28, fontWeight: FontWeight.bold),
          displaySmall:
              GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
          headlineLarge:
              GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
          headlineMedium:
              GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
          headlineSmall:
              GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w600),
          titleLarge:
              GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
          titleMedium:
              GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500),
          bodyLarge:
              GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.normal),
          bodyMedium:
              GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.normal),
          labelLarge:
              GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.normal),
        ),
      ),
      getPages: AppPages.routes,
    );
  }
}
