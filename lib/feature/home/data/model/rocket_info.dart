// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_info.freezed.dart';
part 'rocket_info.g.dart';

@freezed
class RocketInfo with _$RocketInfo {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory RocketInfo({
    Fairings? fairings,
    Links? links,
    DateTime? staticFireDateUtc,
    int? staticFireDateUnix,
    bool? net,
    int? window,
    String? rocket,
    bool? success,
    List<Failure>? failures,
    String? details,
    List<String>? crew,
    List<String>? ships,
    List<String>? capsules,
    List<String>? payloads,
    String? launchpad,
    int? flightNumber,
    String? name,
    DateTime? dateUtc,
    int? dateUnix,
    DateTime? dateLocal,
    String? datePrecision,
    bool? upcoming,
    List<Core>? cores,
    bool? autoUpdate,
    bool? tbd,
    String? launchLibraryId,
    String? id,
  }) = _RocketInfo;

  factory RocketInfo.fromJson(Map<String, dynamic> json) =>
      _$RocketInfoFromJson(json);
}

@freezed
class Core with _$Core {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Core({
    String? core,
    int? flight,
    bool? gridfins,
    bool? legs,
    bool? reused,
    bool? landingAttempt,
    bool? landingSuccess,
    String? landingType,
    String? landpad,
  }) = _Core;

  factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);
}

@freezed
class Failure with _$Failure {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Failure({
    int? time,
    int? altitude,
    String? reason,
  }) = _Failure;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}

@freezed
class Fairings with _$Fairings {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Fairings({
    bool? reused,
    bool? recoveryAttempt,
    bool? recovered,
    List<String>? ships,
  }) = _Fairings;

  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);
}

@freezed
class Links with _$Links {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Links({
    Patch? patch,
    Reddit? reddit,
    Flickr? flickr,
    String? presskit,
    String? webcast,
    String? youtubeId,
    String? article,
    String? wikipedia,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Flickr with _$Flickr {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Flickr({
    List<dynamic>? small,
    List<String>? original,
  }) = _Flickr;

  factory Flickr.fromJson(Map<String, dynamic> json) => _$FlickrFromJson(json);
}

@freezed
class Patch with _$Patch {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Patch({
    String? small,
    String? large,
  }) = _Patch;

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);
}

@freezed
class Reddit with _$Reddit {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Reddit({
    String? campaign,
    String? launch,
    String? media,
    String? recovery,
  }) = _Reddit;

  factory Reddit.fromJson(Map<String, dynamic> json) => _$RedditFromJson(json);
}
