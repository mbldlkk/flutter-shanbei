import 'dart:developer';

import 'package:flutter_application_1/base/api.dart';
import 'package:flutter_application_1/base/auth_api.dart';
import 'package:flutter_application_1/common/note/model/note.dart';

const subUrl = "/note";

class NoteApi extends BaseAuthAPi {
  NoteApi() : super(subUrl: subUrl);

  Future<WordNoteResponse> getNoteByWordId(String wordId) async {
    final res = await get("/get-by-wordId/$wordId");

    httpStatusExceptionHandle(res.status);
    log("请求的笔记响应体, 内容是 ${res.body}, 类型是 ${res.runtimeType}");

    return WordNoteResponse.fromJson(res.body);
  }

  createNote(String wordId, String content) async {
    final res = await post("/create-by-wordId/$wordId", {"content": content});
    httpStatusExceptionHandle(res.status);
  }

  findMyNote() {
    get("get-by-userId");
  }
}
