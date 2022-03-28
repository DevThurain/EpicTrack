import 'package:epic_track/src/models/dto/free_game.dart';

abstract class Repository {
  Future<List<FreeGame>> getFreeGameList();
}
