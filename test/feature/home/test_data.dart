import 'package:spacex_simple_api/feature/home/data/model/rocket_info.dart';

final testRocketInfoData = [
  RocketInfo.fromJson({
    "fairings": {
      "reused": false,
      "recovery_attempt": false,
      "recovered": false,
      "ships": []
    },
    "links": {
      "patch": {
        "small": "https://images2.imgbox.com/ab/5a/Pequxd5d_o.png",
        "large": "https://images2.imgbox.com/92/e4/7Cf6MLY0_o.png"
      },
      "reddit": {
        "campaign": null,
        "launch": null,
        "media": null,
        "recovery": null
      },
      "flickr": {"small": [], "original": []},
      "presskit":
          "http://www.spacex.com/press/2012/12/19/spacexs-falcon-1-successfully-delivers-razaksat-satellite-orbit",
      "webcast": "https://www.youtube.com/watch?v=yTaIDooc8Og",
      "youtube_id": "yTaIDooc8Og",
      "article": "http://www.spacex.com/news/2013/02/12/falcon-1-flight-5",
      "wikipedia": "https://en.wikipedia.org/wiki/RazakSAT"
    },
    "static_fire_date_utc": null,
    "static_fire_date_unix": null,
    "net": false,
    "window": 0,
    "rocket": "5e9d0d95eda69955f709d1eb",
    "success": true,
    "failures": [],
    "details": null,
    "crew": [],
    "ships": [],
    "capsules": [],
    "payloads": ["5eb0e4b7b6c3bb0006eeb1e6"],
    "launchpad": "5e9e4502f5090995de566f86",
    "flight_number": 5,
    "name": "RazakSat",
    "date_utc": "2009-07-13T03:35:00.000Z",
    "date_unix": 1247456100,
    "date_local": "2009-07-13T15:35:00+12:00",
    "date_precision": "hour",
    "upcoming": false,
    "cores": [
      {
        "core": "5e9e289ef359184f103b2627",
        "flight": 1,
        "gridfins": false,
        "legs": false,
        "reused": false,
        "landing_attempt": false,
        "landing_success": null,
        "landing_type": null,
        "landpad": null
      }
    ],
    "auto_update": true,
    "tbd": false,
    "launch_library_id": null,
    "id": "5eb87cdcffd86e000604b32e"
  }),
  RocketInfo.fromJson({
    "fairings": {
      "reused": false,
      "recovery_attempt": false,
      "recovered": false,
      "ships": []
    },
    "links": {
      "patch": {
        "small": "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png",
        "large": "https://images2.imgbox.com/5b/02/QcxHUb5V_o.png"
      },
      "reddit": {
        "campaign": null,
        "launch": null,
        "media": null,
        "recovery": null
      },
      "flickr": {"small": [], "original": []},
      "presskit": null,
      "webcast": "https://www.youtube.com/watch?v=0a_00nJ_Y88",
      "youtube_id": "0a_00nJ_Y88",
      "article":
          "https://www.space.com/2196-spacex-inaugural-falcon-1-rocket-lost-launch.html",
      "wikipedia": "https://en.wikipedia.org/wiki/DemoSat"
    },
    "static_fire_date_utc": "2006-03-17T00:00:00.000Z",
    "static_fire_date_unix": 1142553600,
    "net": false,
    "window": 0,
    "rocket": "5e9d0d95eda69955f709d1eb",
    "success": false,
    "failures": [
      {"time": 33, "altitude": null, "reason": "merlin engine failure"}
    ],
    "details": "Engine failure at 33 seconds and loss of vehicle",
    "crew": [],
    "ships": [],
    "capsules": [],
    "payloads": ["5eb0e4b5b6c3bb0006eeb1e1"],
    "launchpad": "5e9e4502f5090995de566f86",
    "flight_number": 1,
    "name": "FalconSat",
    "date_utc": "2009-07-13T03:35:00.000Z",
    "date_unix": 1143239400,
    "date_local": "2006-03-25T10:30:00+12:00",
    "date_precision": "hour",
    "upcoming": false,
    "cores": [
      {
        "core": "5e9e289df35918033d3b2623",
        "flight": 1,
        "gridfins": false,
        "legs": false,
        "reused": false,
        "landing_attempt": false,
        "landing_success": null,
        "landing_type": null,
        "landpad": null
      }
    ],
    "auto_update": true,
    "tbd": false,
    "launch_library_id": null,
    "id": "5eb87cd9ffd86e000604b32a"
  }),
  RocketInfo.fromJson({
    "fairings": {
      "reused": false,
      "recovery_attempt": false,
      "recovered": false,
      "ships": []
    },
    "links": {
      "patch": {
        "small": "https://images2.imgbox.com/f9/4a/ZboXReNb_o.png",
        "large": "https://images2.imgbox.com/80/a2/bkWotCIS_o.png"
      },
      "reddit": {
        "campaign": null,
        "launch": null,
        "media": null,
        "recovery": null
      },
      "flickr": {"small": [], "original": []},
      "presskit": null,
      "webcast": "https://www.youtube.com/watch?v=Lk4zQ2wP-Nc",
      "youtube_id": "Lk4zQ2wP-Nc",
      "article":
          "https://www.space.com/3590-spacex-falcon-1-rocket-fails-reach-orbit.html",
      "wikipedia": "https://en.wikipedia.org/wiki/DemoSat"
    },
    "static_fire_date_utc": null,
    "static_fire_date_unix": null,
    "net": false,
    "window": 0,
    "rocket": "5e9d0d95eda69955f709d1eb",
    "success": false,
    "failures": [
      {
        "time": 301,
        "altitude": 289,
        "reason": "harmonic oscillation leading to premature engine shutdown"
      }
    ],
    "details":
        "Successful first stage burn and transition to second stage, maximum altitude 289 km, Premature engine shutdown at T+7 min 30 s, Failed to reach orbit, Failed to recover first stage",
    "crew": [],
    "ships": [],
    "capsules": [],
    "payloads": ["5eb0e4b6b6c3bb0006eeb1e2"],
    "launchpad": "5e9e4502f5090995de566f86",
    "flight_number": 2,
    "name": "DemoSat",
    "date_utc": "2007-03-21T01:10:00.000Z",
    "date_unix": 1174439400,
    "date_local": "2007-03-21T13:10:00+12:00",
    "date_precision": "hour",
    "upcoming": false,
    "cores": [
      {
        "core": "5e9e289ef35918416a3b2624",
        "flight": 1,
        "gridfins": false,
        "legs": false,
        "reused": false,
        "landing_attempt": false,
        "landing_success": null,
        "landing_type": null,
        "landpad": null
      }
    ],
    "auto_update": true,
    "tbd": false,
    "launch_library_id": null,
    "id": "5eb87cdaffd86e000604b32b"
  }),
  RocketInfo.fromJson({
    "fairings": {
      "reused": false,
      "recovery_attempt": false,
      "recovered": false,
      "ships": []
    },
    "links": {
      "patch": {
        "small": "https://images2.imgbox.com/6c/cb/na1tzhHs_o.png",
        "large": "https://images2.imgbox.com/4a/80/k1oAkY0k_o.png"
      },
      "reddit": {
        "campaign": null,
        "launch": null,
        "media": null,
        "recovery": null
      },
      "flickr": {"small": [], "original": []},
      "presskit": null,
      "webcast": "https://www.youtube.com/watch?v=v0w9p3U8860",
      "youtube_id": "v0w9p3U8860",
      "article":
          "http://www.spacex.com/news/2013/02/11/falcon-1-flight-3-mission-summary",
      "wikipedia": "https://en.wikipedia.org/wiki/Trailblazer_(satellite)"
    },
    "static_fire_date_utc": null,
    "static_fire_date_unix": null,
    "net": false,
    "window": 0,
    "rocket": "5e9d0d95eda69955f709d1eb",
    "success": false,
    "failures": [
      {
        "time": 140,
        "altitude": 35,
        "reason":
            "residual stage-1 thrust led to collision between stage 1 and stage 2"
      }
    ],
    "details":
        "Residual stage 1 thrust led to collision between stage 1 and stage 2",
    "crew": [],
    "ships": [],
    "capsules": [],
    "payloads": ["5eb0e4b6b6c3bb0006eeb1e3", "5eb0e4b6b6c3bb0006eeb1e4"],
    "launchpad": "5e9e4502f5090995de566f86",
    "flight_number": 3,
    "name": "Trailblazer",
    "date_utc": "2008-08-03T03:34:00.000Z",
    "date_unix": 1217734440,
    "date_local": "2008-08-03T15:34:00+12:00",
    "date_precision": "hour",
    "upcoming": false,
    "cores": [
      {
        "core": "5e9e289ef3591814873b2625",
        "flight": 1,
        "gridfins": false,
        "legs": false,
        "reused": false,
        "landing_attempt": false,
        "landing_success": null,
        "landing_type": null,
        "landpad": null
      }
    ],
    "auto_update": true,
    "tbd": false,
    "launch_library_id": null,
    "id": "5eb87cdbffd86e000604b32c"
  }),
  RocketInfo.fromJson({
    "fairings": {
      "reused": false,
      "recovery_attempt": false,
      "recovered": false,
      "ships": []
    },
    "links": {
      "patch": {
        "small": "https://images2.imgbox.com/95/39/sRqN7rsv_o.png",
        "large": "https://images2.imgbox.com/a3/99/qswRYzE8_o.png"
      },
      "reddit": {
        "campaign": null,
        "launch": null,
        "media": null,
        "recovery": null
      },
      "flickr": {"small": [], "original": []},
      "presskit": null,
      "webcast": "https://www.youtube.com/watch?v=dLQ2tZEH6G0",
      "youtube_id": "dLQ2tZEH6G0",
      "article": "https://en.wikipedia.org/wiki/Ratsat",
      "wikipedia": "https://en.wikipedia.org/wiki/Ratsat"
    },
    "static_fire_date_utc": "2008-09-20T00:00:00.000Z",
    "static_fire_date_unix": 1221868800,
    "net": false,
    "window": 0,
    "rocket": "5e9d0d95eda69955f709d1eb",
    "success": true,
    "failures": [],
    "details":
        "Ratsat was carried to orbit on the first successful orbital launch of any privately funded and developed, liquid-propelled carrier rocket, the SpaceX Falcon 1",
    "crew": [],
    "ships": [],
    "capsules": [],
    "payloads": ["5eb0e4b7b6c3bb0006eeb1e5"],
    "launchpad": "5e9e4502f5090995de566f86",
    "flight_number": 4,
    "name": "RatSat",
    "date_utc": "2008-09-28T23:15:00.000Z",
    "date_unix": 1222643700,
    "date_local": "2008-09-28T11:15:00+12:00",
    "date_precision": "hour",
    "upcoming": false,
    "cores": [
      {
        "core": "5e9e289ef3591855dc3b2626",
        "flight": 1,
        "gridfins": false,
        "legs": false,
        "reused": false,
        "landing_attempt": false,
        "landing_success": null,
        "landing_type": null,
        "landpad": null
      }
    ],
    "auto_update": true,
    "tbd": false,
    "launch_library_id": null,
    "id": "5eb87cdbffd86e000604b32d"
  }),
];
