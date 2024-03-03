import 'package:alquran_app/injection.dart';
import 'package:alquran_app/src/commons/enums.dart';
import 'package:alquran_app/src/features/surah/presentation/bloc/surah_bloc.dart';
import 'package:alquran_app/src/features/surah/presentation/pages/detail_surah_page.dart';
import 'package:alquran_app/src/features/surah/presentation/pages/surah_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<SurahBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SurahPage(),
          AppRoute.detailSurah.name: (context) => const DetailSurahPage(),
        },
      ),
    );
  }
}
