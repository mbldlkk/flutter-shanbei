import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_in.freezed.dart';

part 'check_in.g.dart';

@freezed
class CheckInModel with _$CheckInModel {
  const factory CheckInModel({
    required int chechInTimes,
    required String latestCheckInDate,
  }) = _CheckInModel;

  factory CheckInModel.fromJson(Map<String, Object?> json) =>
      _$CheckInModelFromJson(json);
}
