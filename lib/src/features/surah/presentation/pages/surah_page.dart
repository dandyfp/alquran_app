import 'package:alquran_app/src/core/helper/ui_helper.dart';
import 'package:alquran_app/src/core/style/app_colors.dart';
import 'package:alquran_app/src/core/style/app_images.dart';
import 'package:alquran_app/src/core/style/app_style.dart';
import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/features/surah/presentation/bloc/surah_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SurahPage extends StatefulWidget {
  const SurahPage({super.key});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  refresh() {
    context.read<SurahBloc>().add(OnSurah());
  }

  @override
  void initState() {
    refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Image.asset(AppImages.bgCompactScreen),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Alquran',
                      style: primaryBoldTextStyle.copyWith(
                        fontSize: 32,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  verticalSpace(50),
                  listSurah()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listSurah() {
    return BlocBuilder<SurahBloc, SurahState>(
      builder: (context, state) {
        if (state is SurahLoading) return const CircularProgressIndicator();
        if (state is SurahLoaded) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              var item = state.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.5),
                child: itemSurah(index: index, data: item),
              );
            },
          );
        }
        return Container();
      },
    );
  }

  Widget itemSurah({required int index, required Surah data}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.8),
            blurRadius: 12,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    AppImages.icStar,
                    height: 40,
                    width: 40,
                  ),
                  Text(
                    index.toString(),
                    style: primaryMediumTextStyle.copyWith(fontSize: 14),
                  ),
                ],
              ),
              horizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          data.englishName ?? '',
                          style: primaryMediumTextStyle.copyWith(fontSize: 14),
                        ),
                        horizontalSpace(4),
                        Expanded(
                          child: Text(
                            '(${data.englishNameTranslation})',
                            style: taleMediumTextStyle.copyWith(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
                      ],
                    ),
                    verticalSpace(12),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondaryGray,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
                            child: Text(
                              data.revelationType ?? '',
                              style: primaryRegulerTextStyle.copyWith(
                                fontSize: 8,
                                color: AppColors.primaryGray,
                              ),
                            ),
                          ),
                        ),
                        horizontalSpace(4),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(color: AppColors.secondaryGray, shape: BoxShape.circle),
                        ),
                        horizontalSpace(4),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondaryGray,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
                            child: Text(
                              '${data.numberOfAyahs} Ayat',
                              style: primaryRegulerTextStyle.copyWith(
                                fontSize: 8,
                                color: AppColors.primaryGray,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /* Text(
                data.name ?? '',
                overflow: TextOverflow.ellipsis,
                style: primaryMediumTextStyle.copyWith(fontSize: 14),
              ) */
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              data.name ?? '',
              overflow: TextOverflow.ellipsis,
              style: primaryMediumTextStyle.copyWith(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
