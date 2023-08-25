class Media {
  void play (){
    print("Playing media...");
  }
}
class Song extends Media {
  late String artist;
  @override
  void play() {
    print("Playing song by $artist...");
  }
}
void main (){
   Media media = new Media();
   Song song = new Song();
   song.artist = "Justin Beiber";
   song.play();
}