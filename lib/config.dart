import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MyConfig extends GetxController
{
 static OnAudioQuery _audioQuery = OnAudioQuery();
 RxInt cur_ind=0.obs;
static List<SongModel> song_list=[];
current_song(int val)
{
  cur_ind.value=val;
  print("CUr:$cur_ind");
}
  static get_songs() async {
    // DEFAULT:
    // SongSortType.TITLE,
    // OrderType.ASC_OR_SMALLER,
    // UriType.EXTERNAL,
    print("Hello");
    song_list = await _audioQuery.querySongs();
    return song_list;
  }
}