import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'deliver_record.g.dart';

abstract class DeliverRecord
    implements Built<DeliverRecord, DeliverRecordBuilder> {
  static Serializer<DeliverRecord> get serializer => _$deliverRecordSerializer;

  String? get name1;

  String? get phone1;

  String? get alamat1;

  String? get name2;

  String? get phone2;

  String? get alamat2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DeliverRecordBuilder builder) => builder
    ..name1 = ''
    ..phone1 = ''
    ..alamat1 = ''
    ..name2 = ''
    ..phone2 = ''
    ..alamat2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deliver');

  static Stream<DeliverRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DeliverRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DeliverRecord._();
  factory DeliverRecord([void Function(DeliverRecordBuilder) updates]) =
      _$DeliverRecord;

  static DeliverRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDeliverRecordData({
  String? name1,
  String? phone1,
  String? alamat1,
  String? name2,
  String? phone2,
  String? alamat2,
}) {
  final firestoreData = serializers.toFirestore(
    DeliverRecord.serializer,
    DeliverRecord(
      (d) => d
        ..name1 = name1
        ..phone1 = phone1
        ..alamat1 = alamat1
        ..name2 = name2
        ..phone2 = phone2
        ..alamat2 = alamat2,
    ),
  );

  return firestoreData;
}
