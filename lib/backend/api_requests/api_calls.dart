import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCategoriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCategories',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1uLQO7xXgxfazHB1ibVi_zoNL1uaSPzFLkn4VYs8ZxLQ/values/A2:D',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyDWHMgCIEy3zaDJBOOgDy01PadTfIDE5Kg",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? custom(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class GetTimesheetListCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetTimesheetList',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1uLQO7xXgxfazHB1ibVi_zoNL1uaSPzFLkn4VYs8ZxLQ/values/OfferList!A2:F',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyDWHMgCIEy3zaDJBOOgDy01PadTfIDE5Kg",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? custom(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class PostdatatoofferformtestCall {
  static Future<ApiCallResponse> call({
    dynamic datarowJson,
  }) async {
    final datarow = _serializeJson(datarowJson);

    return ApiManager.instance.makeApiCall(
      callName: 'postdatatoofferformtest',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1uLQO7xXgxfazHB1ibVi_zoNL1uaSPzFLkn4VYs8ZxLQ/values/OfferList!A2:F:append?valueInputOption=RAW&key=AIzaSyDWHMgCIEy3zaDJBOOgDy01PadTfIDE5Kg',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'values': datarow,
        'majorDimension': "ROWS",
        'range': "OfferList!A2:F",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? custom(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
