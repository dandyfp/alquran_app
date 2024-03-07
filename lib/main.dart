import 'package:alquran_app/injection.dart';
import 'package:alquran_app/src/features/surah/presentation/bloc/detail_surah/detail_surah_bloc.dart';
import 'package:alquran_app/src/features/surah/presentation/bloc/surah/surah_bloc.dart';
import 'package:alquran_app/src/features/surah/presentation/pages/detail_surah_page.dart';
import 'package:alquran_app/src/features/surah/presentation/pages/surah_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/surah-page',
          name: 'surah-page',
          builder: (context, state) => const SurahPage(),
        ),
        GoRoute(
          path: '/detail-page',
          name: 'detail-page',
          builder: (context, state) => DetailSurahPage(
            number: state.extra as int,
          ),
        ),
      ],
      initialLocation: '/surah-page',
      debugLogDiagnostics: false,
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<SurahBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<DetailSurahBloc>(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}
