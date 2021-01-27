// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../constants/colors.dart';
import '../constants/app_theme.dart';
import '../data/remote/dio_client.dart';
import '../constants/font_family.dart';
import '../blocs/home_page_bloc.dart';
import '../data/remote/apis/movie_api.dart';
import '../data/repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<AppColors>(() => AppColors());
  gh.factory<AppTheme>(() => AppTheme());
  gh.factory<DioClient>(() => DioClient());
  gh.factory<FontFamily>(() => FontFamily());
  gh.factory<HomePageBloc>(() => HomePageBloc());
  gh.factory<MovieApi>(() => MovieApi());
  gh.factory<Repository>(() => Repository());
  return get;
}
