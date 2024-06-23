//第三方
import 'package:get/get.dart';

const popularTags = ["四级", "六级", "考研", "高中", "托福", "雅思"];
const notPopularTags = [
  "小学",
  "初中",
  "大学",
  "英专",
  "留学",
  "专升本",
  "财会",
  "商务英语",
  "英语辅导",
  "公共英语",
  "旅游英语",
  "医学英语",
  "计算机",
  "公开课",
  "文学作品",
  "影视剧",
  "实体书",
  "其他",
];

const allTags = [...popularTags, ...notPopularTags];

class TagController extends GetxController {
  final _currentTag = allTags[0].obs;
  String get currentTag => _currentTag.value;
  set currentTag(String value) => _currentTag.value = value;

  void setCurrentTag(String value) {
    currentTag = value;
  }

  //是否展示下拉菜单
  final isShowTags = false.obs;

  void setIsShowTags() {
    isShowTags.value = !isShowTags.value;
  }
}
