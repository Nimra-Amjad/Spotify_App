import 'package:spotify_app/core/usecase/usecase.dart';
import 'package:spotify_app/domain/repository/song/song.dart';
import 'package:spotify_app/service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }
}
