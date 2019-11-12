import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'dart:io';
import 'dart:typed_data';

class AudioManager {
  static AudioPlayer fixedPlayer;
  static Map<String, File> loadedFiles = {};
  static String prefix = "assets/audio/";

  static final String loginBGFileName = "G18-denglu-0731.mp3";

  static _player(mode) {
    return fixedPlayer ?? new AudioPlayer(mode: mode);
  }

  static Future<File> fetchToMemory(String fileName) async {
    final file = File('${(await getTemporaryDirectory()).path}/$fileName');
    await file.create(recursive: true);
    return await file
        .writeAsBytes((await _fetchAsset(fileName)).buffer.asUint8List());
  }

  static Future<ByteData> _fetchAsset(String fileName) async {
    return await rootBundle.load('$prefix$fileName');
  }

  static Future<File> load(String fileName) async {
    if (!loadedFiles.containsKey(fileName)) {
      loadedFiles[fileName] = await fetchToMemory(fileName);
    }
    return loadedFiles[fileName];
  }

  static play({String url, bool isLoop = true}) async {
    File file = await load(url);
    fixedPlayer = _player(PlayerMode.MEDIA_PLAYER);
    if (isLoop) fixedPlayer.setReleaseMode(ReleaseMode.LOOP);
    fixedPlayer.play(
      file.path,
      isLocal: true,
      volume: 1.0,
      stayAwake: true,
    );
    return fixedPlayer;
  }

  static pause() {
    if (fixedPlayer != null) fixedPlayer.pause();
  }

  static resume() {
    if (fixedPlayer != null) fixedPlayer.resume();
  }

  static dispose() {
    if (fixedPlayer != null) fixedPlayer.dispose();
  }

//
//  static clearByUrl({String url}) {
//    player.clear(url);
//  }

//  static clearLoginBG() {
//    clearByUrl(url: loginBGFileName);
//  }

  static playLoginBG() {
    play(url: loginBGFileName);
  }
}
