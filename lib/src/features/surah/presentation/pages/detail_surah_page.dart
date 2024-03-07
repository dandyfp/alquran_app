import 'package:alquran_app/src/features/surah/presentation/bloc/detail_surah/detail_surah_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DetailSurahPage extends StatefulWidget {
  final int number;
  const DetailSurahPage({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  State<DetailSurahPage> createState() => _DetailSurahPageState();
}

class _DetailSurahPageState extends State<DetailSurahPage> {
  @override
  void initState() {
    context.read<DetailSurahBloc>().add(DetailSurahEvent.getDetailSurah(widget.number));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocBuilder<DetailSurahBloc, DetailSurahState>(
            builder: (context, state) => state.when(
              initial: () {
                return const Column();
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              error: (requestState) {
                return const Column();
              },
              loaded: (data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: data.verses!
                      .map((e) => Text(
                            e.text?.arab ?? '',
                            style: const TextStyle(fontSize: 20),
                          ))
                      .toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
