import 'package:flutter/material.dart';
import 'package:flute_music_player/flute_music_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    MusicFinder audioPlayer;
 List<Song>_songs=[];
  @override
  void initState() async {
 
    super.initState();
   initPlayer();
  }

  void initPlayer() async{
    audioPlayer=new MusicFinder();
var songs= await MusicFinder.allSongs();
    songs=List.from(songs);

setState(() {
  _songs=songs;
});
  }

Future _playLocal(String url) async{
return await audioPlayer.play(url,isLocal: true);

}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Mymusicly"),),
        body: ListView.builder(
          itemCount: _songs.length,
          itemBuilder: (context,int index){
            return ListTile(
              leading: CircleAvatar(
                child: Text(_songs[index].title[0]),
              ),
              title: Text(_songs[index].title[0]),
              onTap:()=> _playLocal(_songs[index].uri),
            );
          },
        ),
      ),
    );
  }
}
