// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import 'package:alquran_app/src/core/helper/convert_number_arabic.dart';
import 'package:alquran_app/src/core/style/app_colors.dart';
import 'package:alquran_app/src/core/style/app_images.dart';
import 'package:alquran_app/src/core/style/app_style.dart';
import 'package:alquran_app/src/features/surah/domain/entities/verse.dart';
import 'package:alquran_app/src/features/surah/presentation/bloc/detail_surah/detail_surah_bloc.dart';

class DetailSurahPage extends StatefulWidget {
  final String surahName;
  final int number;
  const DetailSurahPage({
    Key? key,
    required this.number,
    required this.surahName,
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
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        centerTitle: true,
        title: Text(
          widget.surahName,
          style: primarySemiBoldTextStyle.copyWith(fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocBuilder<DetailSurahBloc, DetailSurahState>(
            builder: (context, state) => state.when(
              initial: () {
                return const Column();
              },
              loading: () {
                return Center(child: LottieBuilder.asset(AppImages.animationLoading));
              },
              error: (requestState) {
                return const Column();
              },
              loaded: (data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: data.verses!.map((e) => ItemDetailSurah(e: e)).toList(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ItemDetailSurah extends StatefulWidget {
  final Verse e;
  const ItemDetailSurah({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  State<ItemDetailSurah> createState() => _ItemDetailSurahState();
}

class _ItemDetailSurahState extends State<ItemDetailSurah> {
  bool isPlay = false;
  final player = AudioPlayer();

  playAudio(String src) async {
    await player.play(UrlSource(src));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.secondaryGray),
        ),
      ),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        leading: InkWell(
            onTap: () {
              setState(() {
                isPlay = !isPlay;
                playAudio(widget.e.audio?.primary ?? '');
              });
            },
            child: Icon(isPlay == false ? Icons.play_arrow : Icons.pause)),
        title: Text(
          '${replaceFarsiNumber(widget.e.number?.inSurah.toString() ?? '')} ${widget.e.text?.arab}',
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
