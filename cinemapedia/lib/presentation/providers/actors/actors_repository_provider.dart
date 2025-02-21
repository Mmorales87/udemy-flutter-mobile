import 'package:cinemapedia/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repositorio es inmutable
// Su objetivo es proporcionar a todos los demas providers que hay ahí dentro
// la informacion necesaria para que puedan consultar todo lo que se
// proporciona en MovieRepositoryImpl
final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorMoviedbDatasource());
});
