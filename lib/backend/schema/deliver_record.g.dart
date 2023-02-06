// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliver_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeliverRecord> _$deliverRecordSerializer =
    new _$DeliverRecordSerializer();

class _$DeliverRecordSerializer implements StructuredSerializer<DeliverRecord> {
  @override
  final Iterable<Type> types = const [DeliverRecord, _$DeliverRecord];
  @override
  final String wireName = 'DeliverRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DeliverRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name1;
    if (value != null) {
      result
        ..add('name1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone1;
    if (value != null) {
      result
        ..add('phone1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alamat1;
    if (value != null) {
      result
        ..add('alamat1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name2;
    if (value != null) {
      result
        ..add('name2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone2;
    if (value != null) {
      result
        ..add('phone2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alamat2;
    if (value != null) {
      result
        ..add('alamat2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  DeliverRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliverRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name1':
          result.name1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone1':
          result.phone1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alamat1':
          result.alamat1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name2':
          result.name2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone2':
          result.phone2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alamat2':
          result.alamat2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$DeliverRecord extends DeliverRecord {
  @override
  final String? name1;
  @override
  final String? phone1;
  @override
  final String? alamat1;
  @override
  final String? name2;
  @override
  final String? phone2;
  @override
  final String? alamat2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DeliverRecord([void Function(DeliverRecordBuilder)? updates]) =>
      (new DeliverRecordBuilder()..update(updates))._build();

  _$DeliverRecord._(
      {this.name1,
      this.phone1,
      this.alamat1,
      this.name2,
      this.phone2,
      this.alamat2,
      this.ffRef})
      : super._();

  @override
  DeliverRecord rebuild(void Function(DeliverRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliverRecordBuilder toBuilder() => new DeliverRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliverRecord &&
        name1 == other.name1 &&
        phone1 == other.phone1 &&
        alamat1 == other.alamat1 &&
        name2 == other.name2 &&
        phone2 == other.phone2 &&
        alamat2 == other.alamat2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name1.hashCode), phone1.hashCode),
                        alamat1.hashCode),
                    name2.hashCode),
                phone2.hashCode),
            alamat2.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliverRecord')
          ..add('name1', name1)
          ..add('phone1', phone1)
          ..add('alamat1', alamat1)
          ..add('name2', name2)
          ..add('phone2', phone2)
          ..add('alamat2', alamat2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DeliverRecordBuilder
    implements Builder<DeliverRecord, DeliverRecordBuilder> {
  _$DeliverRecord? _$v;

  String? _name1;
  String? get name1 => _$this._name1;
  set name1(String? name1) => _$this._name1 = name1;

  String? _phone1;
  String? get phone1 => _$this._phone1;
  set phone1(String? phone1) => _$this._phone1 = phone1;

  String? _alamat1;
  String? get alamat1 => _$this._alamat1;
  set alamat1(String? alamat1) => _$this._alamat1 = alamat1;

  String? _name2;
  String? get name2 => _$this._name2;
  set name2(String? name2) => _$this._name2 = name2;

  String? _phone2;
  String? get phone2 => _$this._phone2;
  set phone2(String? phone2) => _$this._phone2 = phone2;

  String? _alamat2;
  String? get alamat2 => _$this._alamat2;
  set alamat2(String? alamat2) => _$this._alamat2 = alamat2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DeliverRecordBuilder() {
    DeliverRecord._initializeBuilder(this);
  }

  DeliverRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name1 = $v.name1;
      _phone1 = $v.phone1;
      _alamat1 = $v.alamat1;
      _name2 = $v.name2;
      _phone2 = $v.phone2;
      _alamat2 = $v.alamat2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliverRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeliverRecord;
  }

  @override
  void update(void Function(DeliverRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliverRecord build() => _build();

  _$DeliverRecord _build() {
    final _$result = _$v ??
        new _$DeliverRecord._(
            name1: name1,
            phone1: phone1,
            alamat1: alamat1,
            name2: name2,
            phone2: phone2,
            alamat2: alamat2,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
