import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'maps_record.g.dart';

abstract class MapsRecord implements Built<MapsRecord, MapsRecordBuilder> {
  static Serializer<MapsRecord> get serializer => _$mapsRecordSerializer;

  String? get cityname;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MapsRecordBuilder builder) =>
      builder..cityname = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('maps');

  static Stream<MapsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MapsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MapsRecord._();
  factory MapsRecord([void Function(MapsRecordBuilder) updates]) = _$MapsRecord;

  static MapsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMapsRecordData({
  String? cityname,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    MapsRecord.serializer,
    MapsRecord(
      (m) => m
        ..cityname = cityname
        ..location = location,
    ),
  );

  return firestoreData;
}
