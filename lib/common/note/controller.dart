import 'dart:async';
import 'dart:developer';

import 'package:flutter_application_1/common/note/api.dart';
import 'package:flutter_application_1/common/note/model/note.dart';
import 'package:get/get.dart';

class NoteController extends GetxController {
  final noteApi = Get.find<NoteApi>();

  final _isLoading = Rx<bool>(true);
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final _allNote = Rx<List<NoteModel>>([]);
  List<NoteModel> get allNote => _allNote.value;
  set allNote(List<NoteModel> value) => _allNote.value = value;

  final _myNote = Rxn<NoteModel?>();
  NoteModel? get myNote => _myNote.value;
  set myNote(NoteModel? value) => _myNote.value = value;

  final _editContent = Rx<String>("");
  String get editContent => _editContent.value;
  set editContent(String value) => _editContent.value = value;

  Timer? timer;

  editNote(String text) {
    timer?.cancel();
    timer = Timer(const Duration(seconds: 1), () {
      editContent = text;
    });
  }

  fetchCurrentWordNote(wordId) async {
    //加载态
    isLoading = true;

    final notedata = await noteApi.getNoteByWordId(wordId);

    log("当前单词的笔记是 ${notedata.toString()}");

    allNote = notedata.wordNote;
    myNote = notedata.userWordNote;
    // 如果api笔记为空,那就说明笔记不存在, 不展示即可
  }

  postWordNote(String wordId) async {
    try {
      await noteApi.createNote(wordId, editContent);
      //如果响应成功, 则将本地的mynote 和 allnote 修改

      myNote = NoteModel(authorName: "demo", content: editContent);
      allNote = [
        ...allNote,
        NoteModel(authorName: "demo", content: editContent)
      ];
    } catch (e, s) {
      log("$e,$s");
      Get.snackbar("错误", "提交笔记出错,请稍后重试");
    }
  }
}
