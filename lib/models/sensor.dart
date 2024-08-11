import '/models/device_namespace.dart';

class Sensor {
  final String sensorId;
  final String tenantId;
  final String name;
  final int sensorMake;
  final DateTime createdAt;
  final String deviceId;
  final String deviceNamespaceId;
  final DeviceNamespace deviceNamespace;
  final List<dynamic>? modalities;
  final List<dynamic>? rules;

  Sensor({
    required this.sensorId,
    required this.tenantId,
    required this.name,
    required this.sensorMake,
    required this.createdAt,
    required this.deviceId,
    required this.deviceNamespaceId,
    required this.deviceNamespace,
    required this.modalities,
    required this.rules,
  });

  factory Sensor.fromJson(Map<String, dynamic> json) {
    return Sensor(
      sensorId: json['sensorId'],
      tenantId: json['tenantId'],
      name: json['name'],
      sensorMake: json['sensorMake'],
      createdAt: DateTime.parse(json['createdAt']),
      deviceId: json['deviceId'],
      deviceNamespaceId: json['deviceNamespaceId'],
      deviceNamespace: DeviceNamespace.fromJson(json['deviceNamespace']),
      modalities: json['modalities'] ?? [],
      rules: json['rules'] ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sensorId': sensorId,
      'tenantId': tenantId,
      'name': name,
      'sensorMake': sensorMake,
      'createdAt': createdAt.toIso8601String(),
      'deviceId': deviceId,
      'deviceNamespaceId': deviceNamespaceId,
      'deviceNamespace': deviceNamespace.toJson(),
      'modalities': modalities,
      'rules': rules,
    };
  }
}

class SensorData {
  final String id;
  final String partitionKey;
  final String mi;
  final List<double> d;
  final int ts;
  final DateTime receivedAt;

  SensorData({
    required this.id,
    required this.partitionKey,
    required this.mi,
    required this.d,
    required this.ts,
    required this.receivedAt,
  });

  // Factory constructor to create a SensorData instance from JSON
  factory SensorData.fromJson(Map<String, dynamic> json) {
    return SensorData(
      id: json['id'] as String,
      partitionKey: json['partitionKey'] as String,
      mi: json['MI'] as String,
      d: List<double>.from(json['D'].map((x) => x.toDouble())),
      ts: json['TS'] as int,
      receivedAt: DateTime.parse(json['receivedAt'] as String),
    );
  }

  // Method to convert SensorData instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'partitionKey': partitionKey,
      'MI': mi,
      'D': d,
      'TS': ts,
      'receivedAt': receivedAt.toIso8601String(),
    };
  }
}

List Sensordata_List = [
  {
    "id": "97b6c7a2-2b95-440a-9e57-662529b8a35d",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [20.67286180384127],
    "TS": 1723187929,
    "receivedAt": "2024-08-09T13:18:49.9929495+00:00"
  },
  {
    "id": "55e9947d-1960-4b4f-bc8e-3830a07547c9",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [29.14608625739366],
    "TS": 1723188529,
    "receivedAt": "2024-08-09T13:18:49.9931438+00:00"
  },
  {
    "id": "2dec5dbf-fb66-4065-ae84-37b41f72a071",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [22.762769273546553],
    "TS": 1723189129,
    "receivedAt": "2024-08-09T13:18:49.9931525+00:00"
  },
  {
    "id": "389feb68-a6c3-4abf-9a70-c90f39e0fb6b",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [22.511371236878528],
    "TS": 1723189729,
    "receivedAt": "2024-08-09T13:18:49.9931593+00:00"
  },
  {
    "id": "f70ac81e-16da-4dcd-a2e6-b3f86a71d93d",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [20.985514376116097],
    "TS": 1723190329,
    "receivedAt": "2024-08-09T13:18:49.9931676+00:00"
  },
  {
    "id": "07cd3647-c000-4c02-80a4-f29401056d7d",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [29.021433005425244],
    "TS": 1723190929,
    "receivedAt": "2024-08-09T13:18:49.9931734+00:00"
  },
  {
    "id": "c7afa79e-0ec1-4b40-a0c4-ab4c9cff5bc6",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [25.034624006062113],
    "TS": 1723191529,
    "receivedAt": "2024-08-09T13:18:49.9931789+00:00"
  },
  {
    "id": "6d92c70c-cd3e-444f-ad84-a7f7f8b52104",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [27.814698536224903],
    "TS": 1723192129,
    "receivedAt": "2024-08-09T13:18:49.9931849+00:00"
  },
  {
    "id": "5498e176-9469-4cff-8d9d-44dcb6615acd",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [27.63619443186258],
    "TS": 1723192729,
    "receivedAt": "2024-08-09T13:18:49.993191+00:00"
  },
  {
    "id": "95ab0773-d058-4eaf-ba1f-f8b10b0cd302",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [24.40601446434294],
    "TS": 1723193329,
    "receivedAt": "2024-08-09T13:18:49.9931964+00:00"
  },
  {
    "id": "c496afc7-d3bc-4c5e-a8a3-fd5f64b15eff",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [21.737618747424488],
    "TS": 1723193929,
    "receivedAt": "2024-08-09T13:18:49.9932019+00:00"
  },
  {
    "id": "b9951287-317d-4fd4-8d58-aa02eaa0a1a9",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [24.953477938981848],
    "TS": 1723194529,
    "receivedAt": "2024-08-09T13:18:49.9932077+00:00"
  },
  {
    "id": "8351132f-0b43-413e-9abf-12a32fc52505",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [27.762185003414466],
    "TS": 1723195129,
    "receivedAt": "2024-08-09T13:18:49.9932133+00:00"
  },
  {
    "id": "2a447525-bf36-4211-999d-6aeb72e8ad27",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [25.846774763383504],
    "TS": 1723195729,
    "receivedAt": "2024-08-09T13:18:49.9932188+00:00"
  },
  {
    "id": "98c6f122-6139-42e4-b227-84f5d2ec537e",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [24.227098082502494],
    "TS": 1723196329,
    "receivedAt": "2024-08-09T13:18:49.993226+00:00"
  },
  {
    "id": "d86196d7-184a-4ce5-83d8-caaf30fe9c6d",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [23.27551296465302],
    "TS": 1723196929,
    "receivedAt": "2024-08-09T13:18:49.9932319+00:00"
  },
  {
    "id": "773d8b9c-a9d5-46ca-8e1e-a996796a9464",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [26.76045426292824],
    "TS": 1723197529,
    "receivedAt": "2024-08-09T13:18:49.9932374+00:00"
  },
  {
    "id": "39e00109-e213-459d-833d-3b57c053d534",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [28.20721997374219],
    "TS": 1723198129,
    "receivedAt": "2024-08-09T13:18:49.9932428+00:00"
  },
  {
    "id": "4a561a3b-c7bc-4f10-9534-a368fe106579",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [29.357784175938377],
    "TS": 1723198729,
    "receivedAt": "2024-08-09T13:18:49.9932488+00:00"
  },
  {
    "id": "2071b877-df8a-4d19-8c1d-6c67f7e7e9df",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [23.80510750417427],
    "TS": 1723199329,
    "receivedAt": "2024-08-09T13:18:49.9932545+00:00"
  },
  {
    "id": "b5385bdd-cec0-49ed-b695-9477815897bf",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [20.73553989369336],
    "TS": 1723199929,
    "receivedAt": "2024-08-09T13:18:49.9932601+00:00"
  },
  {
    "id": "57d66978-5356-490d-9920-c64058e15e41",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [25.535892570485288],
    "TS": 1723200529,
    "receivedAt": "2024-08-09T13:18:49.9932656+00:00"
  },
  {
    "id": "2a20b5e1-64c7-41a2-b9ed-6b6a49aea8e7",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [27.83901080007418],
    "TS": 1723201129,
    "receivedAt": "2024-08-09T13:18:49.993271+00:00"
  },
  {
    "id": "52c013ea-dd10-41a8-beae-e5bd21373962",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [28.09793316097044],
    "TS": 1723201729,
    "receivedAt": "2024-08-09T13:18:49.9932786+00:00"
  },
  {
    "id": "0c4756fa-41a0-49ea-94f7-0bc48fd61fa3",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [20.742526582149846],
    "TS": 1723202329,
    "receivedAt": "2024-08-09T13:18:49.9932866+00:00"
  },
  {
    "id": "44ea3a6a-9081-47e4-8674-98be32635875",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [20.38735388299996],
    "TS": 1723202929,
    "receivedAt": "2024-08-09T13:18:49.9932922+00:00"
  },
  {
    "id": "9588ba11-4dfc-47c9-acd2-f119005c28d8",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [23.52605621963923],
    "TS": 1723203529,
    "receivedAt": "2024-08-09T13:18:49.9932977+00:00"
  },
  {
    "id": "7a085c14-c686-42bf-88b2-16d46574818e",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [20.038801775324245],
    "TS": 1723204129,
    "receivedAt": "2024-08-09T13:18:49.9933034+00:00"
  },
  {
    "id": "6bb63196-b269-4ac1-9d94-efcda8daabcc",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [21.437271526813042],
    "TS": 1723204729,
    "receivedAt": "2024-08-09T13:18:49.9933089+00:00"
  },
  {
    "id": "a713466e-1bb2-4921-8aeb-4ee80cba9859",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [23.788655227417465],
    "TS": 1723205329,
    "receivedAt": "2024-08-09T13:18:49.9933143+00:00"
  },
  {
    "id": "3faf0abd-7206-491a-a288-479a170063cb",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [21.955875868832624],
    "TS": 1723205929,
    "receivedAt": "2024-08-09T13:18:49.9933197+00:00"
  },
  {
    "id": "75f4617d-f830-46ff-8f38-a37e6f3d50dc",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [20.53493269214641],
    "TS": 1723206529,
    "receivedAt": "2024-08-09T13:18:49.9933254+00:00"
  },
  {
    "id": "b9609423-8fcd-4196-87cd-445f089aa27e",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [22.270718683708534],
    "TS": 1723207129,
    "receivedAt": "2024-08-09T13:18:49.9933309+00:00"
  },
  {
    "id": "642c733b-b722-4629-89a9-8267aff17fb8",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [25.31890292975452],
    "TS": 1723207729,
    "receivedAt": "2024-08-09T13:18:49.9976824+00:00"
  },
  {
    "id": "de4674f2-0739-4559-9482-beee388fc800",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [21.56726081527261],
    "TS": 1723208329,
    "receivedAt": "2024-08-09T13:18:49.9976912+00:00"
  },
  {
    "id": "c5544035-28e7-42ef-ab09-5bb9214551d5",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [28.0599711784055],
    "TS": 1723208929,
    "receivedAt": "2024-08-09T13:18:49.9976972+00:00"
  },
  {
    "id": "aa138ebc-f5fb-49c9-8d3d-e4f05275c1bb",
    "partitionKey": "Demo",
    "MI": "8c2e0431-114a-46c3-8ba1-f6806aa2671e",
    "D": [23.94748828498527],
    "TS": 1723209529,
    "receivedAt": "2024-08-09T13:18:49.9977026+00:00"
  }
];

List Sensordata_List_two = [
  {
    "id": "bd03b6af-59b8-47f7-ae75-c40f0ff7125f",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1015.4360580610747],
    "TS": 1723187850,
    "receivedAt": "2024-08-09T13:17:30.0400216+00:00"
  },
  {
    "id": "e05adba8-37f7-47b3-8f0f-47c0116a718d",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1052.219520619287],
    "TS": 1723188450,
    "receivedAt": "2024-08-09T13:17:30.0489493+00:00"
  },
  {
    "id": "9dbf50e9-0765-4a9c-970c-b1ea7d2d0066",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1080.9374956808017],
    "TS": 1723189050,
    "receivedAt": "2024-08-09T13:17:30.0489677+00:00"
  },
  {
    "id": "fea7bb19-4819-4120-af84-17c4b8908842",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1025.4699029885373],
    "TS": 1723189650,
    "receivedAt": "2024-08-09T13:17:30.0489752+00:00"
  },
  {
    "id": "2c23603b-05b5-4530-a2ab-258decaddb3e",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1063.8243362493174],
    "TS": 1723190250,
    "receivedAt": "2024-08-09T13:17:30.0489842+00:00"
  },
  {
    "id": "1c3771a1-4d68-4c66-80d0-9e67c28ef38a",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1012.4504023740975],
    "TS": 1723190850,
    "receivedAt": "2024-08-09T13:17:30.0489898+00:00"
  },
  {
    "id": "d8cacf67-1e6f-43d3-b9f2-6ca4894bdc6e",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1005.9189672872268],
    "TS": 1723191450,
    "receivedAt": "2024-08-09T13:17:30.0489951+00:00"
  },
  {
    "id": "1a076181-305f-4206-88d1-f5527ca71191",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1078.7203470651523],
    "TS": 1723192050,
    "receivedAt": "2024-08-09T13:17:30.0490009+00:00"
  },
  {
    "id": "32e28404-77e8-48f5-a6ae-90730d352ac0",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1036.041833594395],
    "TS": 1723192650,
    "receivedAt": "2024-08-09T13:17:30.0490068+00:00"
  },
  {
    "id": "a06614c3-0183-400a-8a78-80dcd7644109",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1055.6904069769398],
    "TS": 1723193250,
    "receivedAt": "2024-08-09T13:17:30.0490121+00:00"
  },
  {
    "id": "e711ea44-6ee1-4ac0-8168-066f16b8c6ce",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1082.4361021312732],
    "TS": 1723193850,
    "receivedAt": "2024-08-09T13:17:30.0490175+00:00"
  },
  {
    "id": "fb17204c-fdd0-4f30-9b5c-80a86bb6d060",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1029.772419446596],
    "TS": 1723194450,
    "receivedAt": "2024-08-09T13:17:30.0490231+00:00"
  },
  {
    "id": "184c18cc-c3f8-4038-9281-45f3f36bed85",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1058.1648728287887],
    "TS": 1723195050,
    "receivedAt": "2024-08-09T13:17:30.0490285+00:00"
  },
  {
    "id": "ff8265e0-cdce-47e9-bd50-9d8ea09fb49f",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1052.460455113843],
    "TS": 1723195650,
    "receivedAt": "2024-08-09T13:17:30.0490351+00:00"
  },
  {
    "id": "5551deb9-fa9c-44bc-a1a4-e21863bc051f",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1093.6989334025286],
    "TS": 1723196250,
    "receivedAt": "2024-08-09T13:17:30.0490405+00:00"
  },
  {
    "id": "f68819ec-1922-4381-850e-c762d0e7841f",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1025.7729647248152],
    "TS": 1723196850,
    "receivedAt": "2024-08-09T13:17:30.0490463+00:00"
  },
  {
    "id": "fcf0ac7b-20ec-47e2-996b-18933fa2f04a",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1086.7857798819641],
    "TS": 1723197450,
    "receivedAt": "2024-08-09T13:17:30.0490517+00:00"
  },
  {
    "id": "d7110faf-c40d-4506-b19e-add056ad809e",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1041.8212084642084],
    "TS": 1723198050,
    "receivedAt": "2024-08-09T13:17:30.0490572+00:00"
  },
  {
    "id": "e9c34b9f-6461-4790-9744-c2d00df0945e",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1092.0869758662038],
    "TS": 1723198650,
    "receivedAt": "2024-08-09T13:17:30.0490632+00:00"
  },
  {
    "id": "fe86501f-7d65-41a4-a2d4-ce5eb74ad347",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1089.0749526302543],
    "TS": 1723199250,
    "receivedAt": "2024-08-09T13:17:30.049069+00:00"
  },
  {
    "id": "c3600595-2eef-4d8b-9fb7-119f3975cf0d",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1090.8002067857155],
    "TS": 1723199850,
    "receivedAt": "2024-08-09T13:17:30.0490744+00:00"
  },
  {
    "id": "848accf2-f096-42ce-853f-084e9c39ddd6",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1096.8460506107745],
    "TS": 1723200450,
    "receivedAt": "2024-08-09T13:17:30.0490798+00:00"
  },
  {
    "id": "b296d1e5-bbb8-4614-962d-3e6146e553ea",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1055.8353970939877],
    "TS": 1723201050,
    "receivedAt": "2024-08-09T13:17:30.0490865+00:00"
  },
  {
    "id": "30fd4b29-8cc5-4f04-bb36-2efceeb88886",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1007.8683096292896],
    "TS": 1723201650,
    "receivedAt": "2024-08-09T13:17:30.0490923+00:00"
  },
  {
    "id": "258e474f-c28b-4d74-9254-735d2b0e0c31",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1094.4361209698575],
    "TS": 1723202250,
    "receivedAt": "2024-08-09T13:17:30.0490976+00:00"
  },
  {
    "id": "fac06d0e-918a-43c6-a754-89520284c9b1",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1054.5017412559325],
    "TS": 1723202850,
    "receivedAt": "2024-08-09T13:17:30.0491029+00:00"
  },
  {
    "id": "1448ac7d-88a3-40d6-ae64-3cdbb5493691",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1078.3165272971237],
    "TS": 1723203450,
    "receivedAt": "2024-08-09T13:17:30.0491082+00:00"
  },
  {
    "id": "e7e6be74-1138-4b31-a1ab-dd84405bee0e",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1074.2478504664205],
    "TS": 1723204050,
    "receivedAt": "2024-08-09T13:17:30.0491138+00:00"
  },
  {
    "id": "9fb3be87-9776-47c4-ae79-95e91059d4cf",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1054.6357396685478],
    "TS": 1723204650,
    "receivedAt": "2024-08-09T13:17:30.0491191+00:00"
  },
  {
    "id": "932f38f1-f204-44d9-aba5-e741235ace54",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1057.1152463663552],
    "TS": 1723205250,
    "receivedAt": "2024-08-09T13:17:30.0491244+00:00"
  },
  {
    "id": "91132afb-c1e1-4643-8347-41b5edb24975",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1054.0173934238587],
    "TS": 1723205850,
    "receivedAt": "2024-08-09T13:17:30.0491297+00:00"
  },
  {
    "id": "5d3cef31-85f9-47c7-a7ca-2850f3f6f02f",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1059.7712102692456],
    "TS": 1723206450,
    "receivedAt": "2024-08-09T13:17:30.0491354+00:00"
  },
  {
    "id": "956246af-bc7e-4e49-92aa-a92b75c3bf1f",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1012.9185906653806],
    "TS": 1723207050,
    "receivedAt": "2024-08-09T13:17:30.0491407+00:00"
  },
  {
    "id": "8fab06aa-e9b6-4f15-a558-c3dceef1cb5d",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1042.3466628872172],
    "TS": 1723207650,
    "receivedAt": "2024-08-09T13:17:30.0491475+00:00"
  },
  {
    "id": "79bcefa7-5981-4816-85ff-0afd00ba5558",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1055.9439436575358],
    "TS": 1723208250,
    "receivedAt": "2024-08-09T13:17:30.0491531+00:00"
  },
  {
    "id": "0c840882-e52f-41d4-8ca0-38094a505572",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1024.4246925593052],
    "TS": 1723208850,
    "receivedAt": "2024-08-09T13:17:30.0491589+00:00"
  },
  {
    "id": "2f71fe07-d615-432f-ae5b-d08920c0c1a1",
    "partitionKey": "Demo",
    "MI": "9285a378-b8e0-45e4-a7d6-c710b0a7ff07",
    "D": [1049.774639941378],
    "TS": 1723209450,
    "receivedAt": "2024-08-09T13:17:30.0491642+00:00"
  }
];

//  {dashboardId: 1, name: Dashboard 1, layoutId: 1, layout: {layoutId: 1, name: Single Widget, numOfWidgets: 1, isDefault: true, dashboards: [null]}, widgets: [{widgetId: 1, name: line chart, type: 2, graphParameters: {}, dashboardId: 1, modalities: [{modalityId: 3debe2e0-8d5d-4f92-87b5-08dc5533dbcb, tenantId: tinkerblox, name: Demo_Sensor_01_Pressure, type: 1, sensorId: 103b7c99-4bbd-4dc7-ab00-24760a15d6ae, widgets: [null]}, {modalityId: bbd4f80d-50ca-4cd6-87b6-08dc5533dbcb, tenantId: tinkerblox, name: Demo_Sensor_01_Temperature, type: 0, sensorId: 103b7c99-4bbd-4dc7-ab00-24760a15d6ae, widgets: [null]}]}], devices: []}