// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBook _$UserBookFromJson(Map<String, dynamic> json) => UserBook(
      currentLearningBookId: (json['currentLearningBookId'] as num).toInt(),
      allbooks: (json['allbooks'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserBookToJson(UserBook instance) => <String, dynamic>{
      'currentLearningBookId': instance.currentLearningBookId,
      'allbooks': UserBook._toJson(instance.allbooks),
    };

_$UserBookResImpl _$$UserBookResImplFromJson(Map<String, dynamic> json) =>
    _$UserBookResImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      wordCount: (json['wordCount'] as num).toInt(),
      isCurrentLearn: json['isCurrentLearn'] as bool,
    );

Map<String, dynamic> _$$UserBookResImplToJson(_$UserBookResImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'wordCount': instance.wordCount,
      'isCurrentLearn': instance.isCurrentLearn,
    };
