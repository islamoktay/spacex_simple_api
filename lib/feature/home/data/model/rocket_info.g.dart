// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RocketInfo _$$_RocketInfoFromJson(Map<String, dynamic> json) =>
    _$_RocketInfo(
      fairings: json['fairings'] == null
          ? null
          : Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      staticFireDateUtc: json['static_fire_date_utc'] == null
          ? null
          : DateTime.parse(json['static_fire_date_utc'] as String),
      staticFireDateUnix: json['static_fire_date_unix'] as int?,
      net: json['net'] as bool?,
      window: json['window'] as int?,
      rocket: json['rocket'] as String?,
      success: json['success'] as bool?,
      failures: (json['failures'] as List<dynamic>?)
          ?.map((e) => Failure.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as String?,
      crew: (json['crew'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ships:
          (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
      capsules: (json['capsules'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      launchpad: json['launchpad'] as String?,
      flightNumber: json['flight_number'] as int?,
      name: json['name'] as String?,
      dateUtc: json['date_utc'] == null
          ? null
          : DateTime.parse(json['date_utc'] as String),
      dateUnix: json['date_unix'] as int?,
      dateLocal: json['date_local'] == null
          ? null
          : DateTime.parse(json['date_local'] as String),
      datePrecision: json['date_precision'] as String?,
      upcoming: json['upcoming'] as bool?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => Core.fromJson(e as Map<String, dynamic>))
          .toList(),
      autoUpdate: json['auto_update'] as bool?,
      tbd: json['tbd'] as bool?,
      launchLibraryId: json['launch_library_id'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_RocketInfoToJson(_$_RocketInfo instance) =>
    <String, dynamic>{
      'fairings': instance.fairings?.toJson(),
      'links': instance.links?.toJson(),
      'static_fire_date_utc': instance.staticFireDateUtc?.toIso8601String(),
      'static_fire_date_unix': instance.staticFireDateUnix,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'failures': instance.failures?.map((e) => e.toJson()).toList(),
      'details': instance.details,
      'crew': instance.crew,
      'ships': instance.ships,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'flight_number': instance.flightNumber,
      'name': instance.name,
      'date_utc': instance.dateUtc?.toIso8601String(),
      'date_unix': instance.dateUnix,
      'date_local': instance.dateLocal?.toIso8601String(),
      'date_precision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores?.map((e) => e.toJson()).toList(),
      'auto_update': instance.autoUpdate,
      'tbd': instance.tbd,
      'launch_library_id': instance.launchLibraryId,
      'id': instance.id,
    };

_$_Core _$$_CoreFromJson(Map<String, dynamic> json) => _$_Core(
      core: json['core'] as String?,
      flight: json['flight'] as int?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landing_attempt'] as bool?,
      landingSuccess: json['landing_success'] as bool?,
      landingType: json['landing_type'] as String?,
      landpad: json['landpad'] as String?,
    );

Map<String, dynamic> _$$_CoreToJson(_$_Core instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landing_attempt': instance.landingAttempt,
      'landing_success': instance.landingSuccess,
      'landing_type': instance.landingType,
      'landpad': instance.landpad,
    };

_$_Failure _$$_FailureFromJson(Map<String, dynamic> json) => _$_Failure(
      time: json['time'] as int?,
      altitude: json['altitude'] as int?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_FailureToJson(_$_Failure instance) =>
    <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };

_$_Fairings _$$_FairingsFromJson(Map<String, dynamic> json) => _$_Fairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recovery_attempt'] as bool?,
      recovered: json['recovered'] as bool?,
      ships:
          (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_FairingsToJson(_$_Fairings instance) =>
    <String, dynamic>{
      'reused': instance.reused,
      'recovery_attempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ships': instance.ships,
    };

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      patch: json['patch'] == null
          ? null
          : Patch.fromJson(json['patch'] as Map<String, dynamic>),
      reddit: json['reddit'] == null
          ? null
          : Reddit.fromJson(json['reddit'] as Map<String, dynamic>),
      flickr: json['flickr'] == null
          ? null
          : Flickr.fromJson(json['flickr'] as Map<String, dynamic>),
      presskit: json['presskit'] as String?,
      webcast: json['webcast'] as String?,
      youtubeId: json['youtube_id'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'patch': instance.patch?.toJson(),
      'reddit': instance.reddit?.toJson(),
      'flickr': instance.flickr?.toJson(),
      'presskit': instance.presskit,
      'webcast': instance.webcast,
      'youtube_id': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

_$_Flickr _$$_FlickrFromJson(Map<String, dynamic> json) => _$_Flickr(
      small: json['small'] as List<dynamic>?,
      original: (json['original'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_FlickrToJson(_$_Flickr instance) => <String, dynamic>{
      'small': instance.small,
      'original': instance.original,
    };

_$_Patch _$$_PatchFromJson(Map<String, dynamic> json) => _$_Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$$_PatchToJson(_$_Patch instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

_$_Reddit _$$_RedditFromJson(Map<String, dynamic> json) => _$_Reddit(
      campaign: json['campaign'] as String?,
      launch: json['launch'] as String?,
      media: json['media'] as String?,
      recovery: json['recovery'] as String?,
    );

Map<String, dynamic> _$$_RedditToJson(_$_Reddit instance) => <String, dynamic>{
      'campaign': instance.campaign,
      'launch': instance.launch,
      'media': instance.media,
      'recovery': instance.recovery,
    };
