// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapsRecord> _$mapsRecordSerializer = new _$MapsRecordSerializer();

class _$MapsRecordSerializer implements StructuredSerializer<MapsRecord> {
  @override
  final Iterable<Type> types = const [MapsRecord, _$MapsRecord];
  @override
  final String wireName = 'MapsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MapsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cityname;
    if (value != null) {
      result
        ..add('cityname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MapsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cityname':
          result.cityname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MapsRecord extends MapsRecord {
  @override
  final String? cityname;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MapsRecord([void Function(MapsRecordBuilder)? updates]) =>
      (new MapsRecordBuilder()..update(updates))._build();

  _$MapsRecord._({this.cityname, this.location, this.ffRef}) : super._();

  @override
  MapsRecord rebuild(void Function(MapsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapsRecordBuilder toBuilder() => new MapsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapsRecord &&
        cityname == other.cityname &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, cityname.hashCode), location.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapsRecord')
          ..add('cityname', cityname)
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MapsRecordBuilder implements Builder<MapsRecord, MapsRecordBuilder> {
  _$MapsRecord? _$v;

  String? _cityname;
  String? get cityname => _$this._cityname;
  set cityname(String? cityname) => _$this._cityname = cityname;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MapsRecordBuilder() {
    MapsRecord._initializeBuilder(this);
  }

  MapsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cityname = $v.cityname;
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapsRecord;
  }

  @override
  void update(void Function(MapsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapsRecord build() => _build();

  _$MapsRecord _build() {
    final _$result = _$v ??
        new _$MapsRecord._(
            cityname: cityname, location: location, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
