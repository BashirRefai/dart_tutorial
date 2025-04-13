///////// abstract //////////
//------- 1 -------
abstract class MediaPlayer {
  init() {}
  play() {}
  pause() {}
}

class VideoPlayer extends MediaPlayer {
  @override
  init() {
    print("init video");
  }

  @override
  pause() {
    print("pause video");
  }

  @override
  play() {
    print("play video");
  }
}

class AudioPlayer implements MediaPlayer {
  @override
  init() {
    print("init audio");
  }

  @override
  pause() {
    print("pause audio");
  }

  @override
  play() {
    print("play audio");
  }
}

class ExtendedPlayer extends MediaPlayer {}
