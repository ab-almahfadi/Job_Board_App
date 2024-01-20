// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestformStruct extends BaseStruct {
  TestformStruct({
    String? rowID,
    String? offerType,
    String? offerimage,
    String? offerDescription,
  })  : _rowID = rowID,
        _offerType = offerType,
        _offerimage = offerimage,
        _offerDescription = offerDescription;

  // "rowID" field.
  String? _rowID;
  String get rowID => _rowID ?? '';
  set rowID(String? val) => _rowID = val;
  bool hasRowID() => _rowID != null;

  // "offerType" field.
  String? _offerType;
  String get offerType => _offerType ?? '';
  set offerType(String? val) => _offerType = val;
  bool hasOfferType() => _offerType != null;

  // "offerimage" field.
  String? _offerimage;
  String get offerimage => _offerimage ?? '';
  set offerimage(String? val) => _offerimage = val;
  bool hasOfferimage() => _offerimage != null;

  // "offerDescription" field.
  String? _offerDescription;
  String get offerDescription => _offerDescription ?? '';
  set offerDescription(String? val) => _offerDescription = val;
  bool hasOfferDescription() => _offerDescription != null;

  static TestformStruct fromMap(Map<String, dynamic> data) => TestformStruct(
        rowID: data['rowID'] as String?,
        offerType: data['offerType'] as String?,
        offerimage: data['offerimage'] as String?,
        offerDescription: data['offerDescription'] as String?,
      );

  static TestformStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestformStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'rowID': _rowID,
        'offerType': _offerType,
        'offerimage': _offerimage,
        'offerDescription': _offerDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rowID': serializeParam(
          _rowID,
          ParamType.String,
        ),
        'offerType': serializeParam(
          _offerType,
          ParamType.String,
        ),
        'offerimage': serializeParam(
          _offerimage,
          ParamType.String,
        ),
        'offerDescription': serializeParam(
          _offerDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static TestformStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestformStruct(
        rowID: deserializeParam(
          data['rowID'],
          ParamType.String,
          false,
        ),
        offerType: deserializeParam(
          data['offerType'],
          ParamType.String,
          false,
        ),
        offerimage: deserializeParam(
          data['offerimage'],
          ParamType.String,
          false,
        ),
        offerDescription: deserializeParam(
          data['offerDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TestformStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestformStruct &&
        rowID == other.rowID &&
        offerType == other.offerType &&
        offerimage == other.offerimage &&
        offerDescription == other.offerDescription;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([rowID, offerType, offerimage, offerDescription]);
}

TestformStruct createTestformStruct({
  String? rowID,
  String? offerType,
  String? offerimage,
  String? offerDescription,
}) =>
    TestformStruct(
      rowID: rowID,
      offerType: offerType,
      offerimage: offerimage,
      offerDescription: offerDescription,
    );
