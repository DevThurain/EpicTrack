import 'package:epic_track/src/models/dto/free_game.dart';
import 'package:epic_track/src/models/dto/free_game_list_dto.dart';
import 'package:epic_track/src/network/client/dio_client.dart';
import 'package:epic_track/src/network/repository.dart';

class RepositoryImpl extends Repository {
  var dioClient = DioClient.getEpicClient();

  @override
  Future<List<FreeGame>> getFreeGameList() async {
    final response = await dioClient.get(
      '/freeGamesPromotions',
    );
    var freeGameDtoList = FreeGameListDto.fromJson(response.data);

    return freeGameDtoList.data?.catalog?.searchStore?.elements
        ?.map((game) => FreeGame(title: game.title, description: game.description))
        .toList() ?? [];
  }
}
