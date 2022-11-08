// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.49.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;

import 'package:meta/meta.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

part 'bridge_generated.freezed.dart';

abstract class EmbeddedMilli {
  /// Ensures an instance of milli (represented by just a directory) is initialized.
  Future<void> ensureInstanceInitialized(
      {required String instanceDir, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kEnsureInstanceInitializedConstMeta;

  /// Ensures a milli index is initialized.
  Future<void> ensureIndexInitialized(
      {required String instanceDir, required String indexName, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kEnsureIndexInitializedConstMeta;

  /// Adds the given list of documents to the specified milli index.
  /// Replaces documents that already exist in the index based on document ids.
  Future<void> addDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> jsonDocuments,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kAddDocumentsConstMeta;

  /// Deletes the documents with the given ids from the milli index.
  Future<void> deleteDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> documentIds,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDeleteDocumentsConstMeta;

  /// Replaces all documents in the index with the given documents
  Future<void> setDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> jsonDocuments,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetDocumentsConstMeta;

  /// Returns the document with the specified id from the index, if one exists
  Future<String?> getDocument(
      {required String instanceDir,
      required String indexName,
      required String documentId,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetDocumentConstMeta;

  /// Returns all documents stored in the index.
  Future<List<String>> getDocuments(
      {required String instanceDir, required String indexName, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetDocumentsConstMeta;

  /// Performs a search against the index and returns the documents found
  Future<List<String>> searchDocuments(
      {required String instanceDir,
      required String indexName,
      String? query,
      int? limit,
      required TermsMatchingStrategy matchingStrategy,
      List<SortAscDesc>? sortCriteria,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSearchDocumentsConstMeta;

  /// Gets the settings of the specified index
  Future<MeiliIndexSettings> getSettings(
      {required String instanceDir, required String indexName, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetSettingsConstMeta;

  /// Sets the settings of the specified index
  Future<void> setSettings(
      {required String instanceDir,
      required String indexName,
      required MeiliIndexSettings settings,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetSettingsConstMeta;
}

@freezed
class MeiliIndexSettings with _$MeiliIndexSettings {
  /// The settings of a milli index.
  const factory MeiliIndexSettings.raw({
    required List<String> searchableFields,
    required List<String> filterableFields,
    required List<String> sortableFields,
    required List<String> rankingRules,
    required List<String> stopWords,
  }) = MeiliIndexSettings_Raw;
}

@freezed
class SortAscDesc with _$SortAscDesc {
  const factory SortAscDesc.asc(
    String field0,
  ) = SortAscDesc_Asc;
  const factory SortAscDesc.desc(
    String field0,
  ) = SortAscDesc_Desc;
}

/// See https://docs.meilisearch.com/reference/api/search.html#matching-strategy
enum TermsMatchingStrategy {
  /// Remove last word first
  Last,

  /// Remove first word first
  First,

  /// Remove more frequent word first
  Frequency,

  /// Remove smallest word first
  Size,

  /// Only one of the word is mandatory
  Any,

  /// All words are mandatory
  All,
}

class EmbeddedMilliImpl implements EmbeddedMilli {
  final EmbeddedMilliPlatform _platform;
  factory EmbeddedMilliImpl(ExternalLibrary dylib) =>
      EmbeddedMilliImpl.raw(EmbeddedMilliPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory EmbeddedMilliImpl.wasm(FutureOr<WasmModule> module) =>
      EmbeddedMilliImpl(module as ExternalLibrary);
  EmbeddedMilliImpl.raw(this._platform);
  Future<void> ensureInstanceInitialized(
          {required String instanceDir, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_ensure_instance_initialized(
            port_, _platform.api2wire_String(instanceDir)),
        parseSuccessData: _wire2api_unit,
        constMeta: kEnsureInstanceInitializedConstMeta,
        argValues: [instanceDir],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kEnsureInstanceInitializedConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "ensure_instance_initialized",
        argNames: ["instanceDir"],
      );

  Future<void> ensureIndexInitialized(
          {required String instanceDir,
          required String indexName,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_ensure_index_initialized(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName)),
        parseSuccessData: _wire2api_unit,
        constMeta: kEnsureIndexInitializedConstMeta,
        argValues: [instanceDir, indexName],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kEnsureIndexInitializedConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "ensure_index_initialized",
        argNames: ["instanceDir", "indexName"],
      );

  Future<void> addDocuments(
          {required String instanceDir,
          required String indexName,
          required List<String> jsonDocuments,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_add_documents(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName),
            _platform.api2wire_StringList(jsonDocuments)),
        parseSuccessData: _wire2api_unit,
        constMeta: kAddDocumentsConstMeta,
        argValues: [instanceDir, indexName, jsonDocuments],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kAddDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "add_documents",
        argNames: ["instanceDir", "indexName", "jsonDocuments"],
      );

  Future<void> deleteDocuments(
          {required String instanceDir,
          required String indexName,
          required List<String> documentIds,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_delete_documents(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName),
            _platform.api2wire_StringList(documentIds)),
        parseSuccessData: _wire2api_unit,
        constMeta: kDeleteDocumentsConstMeta,
        argValues: [instanceDir, indexName, documentIds],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kDeleteDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "delete_documents",
        argNames: ["instanceDir", "indexName", "documentIds"],
      );

  Future<void> setDocuments(
          {required String instanceDir,
          required String indexName,
          required List<String> jsonDocuments,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_set_documents(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName),
            _platform.api2wire_StringList(jsonDocuments)),
        parseSuccessData: _wire2api_unit,
        constMeta: kSetDocumentsConstMeta,
        argValues: [instanceDir, indexName, jsonDocuments],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSetDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "set_documents",
        argNames: ["instanceDir", "indexName", "jsonDocuments"],
      );

  Future<String?> getDocument(
          {required String instanceDir,
          required String indexName,
          required String documentId,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_get_document(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName),
            _platform.api2wire_String(documentId)),
        parseSuccessData: _wire2api_opt_String,
        constMeta: kGetDocumentConstMeta,
        argValues: [instanceDir, indexName, documentId],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetDocumentConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_document",
        argNames: ["instanceDir", "indexName", "documentId"],
      );

  Future<List<String>> getDocuments(
          {required String instanceDir,
          required String indexName,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_get_documents(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName)),
        parseSuccessData: _wire2api_StringList,
        constMeta: kGetDocumentsConstMeta,
        argValues: [instanceDir, indexName],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_documents",
        argNames: ["instanceDir", "indexName"],
      );

  Future<List<String>> searchDocuments(
          {required String instanceDir,
          required String indexName,
          String? query,
          int? limit,
          required TermsMatchingStrategy matchingStrategy,
          List<SortAscDesc>? sortCriteria,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_search_documents(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName),
            _platform.api2wire_opt_String(query),
            _platform.api2wire_opt_box_autoadd_u32(limit),
            api2wire_terms_matching_strategy(matchingStrategy),
            _platform.api2wire_opt_list_sort_asc_desc(sortCriteria)),
        parseSuccessData: _wire2api_StringList,
        constMeta: kSearchDocumentsConstMeta,
        argValues: [
          instanceDir,
          indexName,
          query,
          limit,
          matchingStrategy,
          sortCriteria
        ],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSearchDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "search_documents",
        argNames: [
          "instanceDir",
          "indexName",
          "query",
          "limit",
          "matchingStrategy",
          "sortCriteria"
        ],
      );

  Future<MeiliIndexSettings> getSettings(
          {required String instanceDir,
          required String indexName,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_get_settings(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName)),
        parseSuccessData: _wire2api_meili_index_settings,
        constMeta: kGetSettingsConstMeta,
        argValues: [instanceDir, indexName],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetSettingsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_settings",
        argNames: ["instanceDir", "indexName"],
      );

  Future<void> setSettings(
          {required String instanceDir,
          required String indexName,
          required MeiliIndexSettings settings,
          dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_set_settings(
            port_,
            _platform.api2wire_String(instanceDir),
            _platform.api2wire_String(indexName),
            _platform.api2wire_box_autoadd_meili_index_settings(settings)),
        parseSuccessData: _wire2api_unit,
        constMeta: kSetSettingsConstMeta,
        argValues: [instanceDir, indexName, settings],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSetSettingsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "set_settings",
        argNames: ["instanceDir", "indexName", "settings"],
      );

// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  MeiliIndexSettings _wire2api_meili_index_settings(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return MeiliIndexSettings_Raw(
          searchableFields: _wire2api_StringList(raw[1]),
          filterableFields: _wire2api_StringList(raw[2]),
          sortableFields: _wire2api_StringList(raw[3]),
          rankingRules: _wire2api_StringList(raw[4]),
          stopWords: _wire2api_StringList(raw[5]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_terms_matching_strategy(TermsMatchingStrategy raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

class EmbeddedMilliPlatform extends FlutterRustBridgeBase<EmbeddedMilliWire> {
  EmbeddedMilliPlatform(ffi.DynamicLibrary dylib)
      : super(EmbeddedMilliWire(dylib));
// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList_0(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = api2wire_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_MeiliIndexSettings>
      api2wire_box_autoadd_meili_index_settings(MeiliIndexSettings raw) {
    final ptr = inner.new_box_autoadd_meili_index_settings_0();
    _api_fill_to_wire_meili_index_settings(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_box_autoadd_u32(int raw) {
    return inner.new_box_autoadd_u32_0(api2wire_u32(raw));
  }

  @protected
  ffi.Pointer<wire_list_sort_asc_desc> api2wire_list_sort_asc_desc(
      List<SortAscDesc> raw) {
    final ans = inner.new_list_sort_asc_desc_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_sort_asc_desc(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_opt_box_autoadd_u32(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_u32(raw);
  }

  @protected
  ffi.Pointer<wire_list_sort_asc_desc> api2wire_opt_list_sort_asc_desc(
      List<SortAscDesc>? raw) {
    return raw == null ? ffi.nullptr : api2wire_list_sort_asc_desc(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_meili_index_settings(
      MeiliIndexSettings apiObj, ffi.Pointer<wire_MeiliIndexSettings> wireObj) {
    _api_fill_to_wire_meili_index_settings(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_meili_index_settings(
      MeiliIndexSettings apiObj, wire_MeiliIndexSettings wireObj) {
    if (apiObj is MeiliIndexSettings_Raw) {
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_MeiliIndexSettings_Raw();
      wireObj.kind.ref.Raw.ref.searchable_fields =
          api2wire_StringList(apiObj.searchableFields);
      wireObj.kind.ref.Raw.ref.filterable_fields =
          api2wire_StringList(apiObj.filterableFields);
      wireObj.kind.ref.Raw.ref.sortable_fields =
          api2wire_StringList(apiObj.sortableFields);
      wireObj.kind.ref.Raw.ref.ranking_rules =
          api2wire_StringList(apiObj.rankingRules);
      wireObj.kind.ref.Raw.ref.stop_words =
          api2wire_StringList(apiObj.stopWords);
      return;
    }
  }

  void _api_fill_to_wire_sort_asc_desc(
      SortAscDesc apiObj, wire_SortAscDesc wireObj) {
    if (apiObj is SortAscDesc_Asc) {
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_SortAscDesc_Asc();
      wireObj.kind.ref.Asc.ref.field0 = api2wire_String(apiObj.field0);
      return;
    }
    if (apiObj is SortAscDesc_Desc) {
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_SortAscDesc_Desc();
      wireObj.kind.ref.Desc.ref.field0 = api2wire_String(apiObj.field0);
      return;
    }
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class EmbeddedMilliWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  EmbeddedMilliWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  EmbeddedMilliWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire_ensure_instance_initialized(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
  ) {
    return _wire_ensure_instance_initialized(
      port_,
      instance_dir,
    );
  }

  late final _wire_ensure_instance_initializedPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_ensure_instance_initialized');
  late final _wire_ensure_instance_initialized =
      _wire_ensure_instance_initializedPtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_ensure_index_initialized(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_ensure_index_initialized(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_ensure_index_initializedPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_ensure_index_initialized');
  late final _wire_ensure_index_initialized =
      _wire_ensure_index_initializedPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_add_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_StringList> json_documents,
  ) {
    return _wire_add_documents(
      port_,
      instance_dir,
      index_name,
      json_documents,
    );
  }

  late final _wire_add_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_StringList>)>>('wire_add_documents');
  late final _wire_add_documents = _wire_add_documentsPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_StringList>)>();

  void wire_delete_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_StringList> document_ids,
  ) {
    return _wire_delete_documents(
      port_,
      instance_dir,
      index_name,
      document_ids,
    );
  }

  late final _wire_delete_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_StringList>)>>('wire_delete_documents');
  late final _wire_delete_documents = _wire_delete_documentsPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_StringList>)>();

  void wire_set_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_StringList> json_documents,
  ) {
    return _wire_set_documents(
      port_,
      instance_dir,
      index_name,
      json_documents,
    );
  }

  late final _wire_set_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_StringList>)>>('wire_set_documents');
  late final _wire_set_documents = _wire_set_documentsPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_StringList>)>();

  void wire_get_document(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_uint_8_list> document_id,
  ) {
    return _wire_get_document(
      port_,
      instance_dir,
      index_name,
      document_id,
    );
  }

  late final _wire_get_documentPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_document');
  late final _wire_get_document = _wire_get_documentPtr.asFunction<
      void Function(int, ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_get_documents(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_get_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_documents');
  late final _wire_get_documents = _wire_get_documentsPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_search_documents(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_uint_8_list> query,
    ffi.Pointer<ffi.Uint32> limit,
    int matching_strategy,
    ffi.Pointer<wire_list_sort_asc_desc> sort_criteria,
  ) {
    return _wire_search_documents(
      port_,
      instance_dir,
      index_name,
      query,
      limit,
      matching_strategy,
      sort_criteria,
    );
  }

  late final _wire_search_documentsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<ffi.Uint32>,
              ffi.Int32,
              ffi.Pointer<wire_list_sort_asc_desc>)>>('wire_search_documents');
  late final _wire_search_documents = _wire_search_documentsPtr.asFunction<
      void Function(
          int,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<ffi.Uint32>,
          int,
          ffi.Pointer<wire_list_sort_asc_desc>)>();

  void wire_get_settings(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
  ) {
    return _wire_get_settings(
      port_,
      instance_dir,
      index_name,
    );
  }

  late final _wire_get_settingsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_settings');
  late final _wire_get_settings = _wire_get_settingsPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_set_settings(
    int port_,
    ffi.Pointer<wire_uint_8_list> instance_dir,
    ffi.Pointer<wire_uint_8_list> index_name,
    ffi.Pointer<wire_MeiliIndexSettings> settings,
  ) {
    return _wire_set_settings(
      port_,
      instance_dir,
      index_name,
      settings,
    );
  }

  late final _wire_set_settingsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_MeiliIndexSettings>)>>('wire_set_settings');
  late final _wire_set_settings = _wire_set_settingsPtr.asFunction<
      void Function(
          int,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_uint_8_list>,
          ffi.Pointer<wire_MeiliIndexSettings>)>();

  ffi.Pointer<wire_StringList> new_StringList_0(
    int len,
  ) {
    return _new_StringList_0(
      len,
    );
  }

  late final _new_StringList_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>(
      'new_StringList_0');
  late final _new_StringList_0 = _new_StringList_0Ptr
      .asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<wire_MeiliIndexSettings>
      new_box_autoadd_meili_index_settings_0() {
    return _new_box_autoadd_meili_index_settings_0();
  }

  late final _new_box_autoadd_meili_index_settings_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_MeiliIndexSettings> Function()>>(
      'new_box_autoadd_meili_index_settings_0');
  late final _new_box_autoadd_meili_index_settings_0 =
      _new_box_autoadd_meili_index_settings_0Ptr
          .asFunction<ffi.Pointer<wire_MeiliIndexSettings> Function()>();

  ffi.Pointer<ffi.Uint32> new_box_autoadd_u32_0(
    int value,
  ) {
    return _new_box_autoadd_u32_0(
      value,
    );
  }

  late final _new_box_autoadd_u32_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Uint32> Function(ffi.Uint32)>>(
          'new_box_autoadd_u32_0');
  late final _new_box_autoadd_u32_0 = _new_box_autoadd_u32_0Ptr
      .asFunction<ffi.Pointer<ffi.Uint32> Function(int)>();

  ffi.Pointer<wire_list_sort_asc_desc> new_list_sort_asc_desc_0(
    int len,
  ) {
    return _new_list_sort_asc_desc_0(
      len,
    );
  }

  late final _new_list_sort_asc_desc_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_sort_asc_desc> Function(
              ffi.Int32)>>('new_list_sort_asc_desc_0');
  late final _new_list_sort_asc_desc_0 = _new_list_sort_asc_desc_0Ptr
      .asFunction<ffi.Pointer<wire_list_sort_asc_desc> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<MeiliIndexSettingsKind> inflate_MeiliIndexSettings_Raw() {
    return _inflate_MeiliIndexSettings_Raw();
  }

  late final _inflate_MeiliIndexSettings_RawPtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<MeiliIndexSettingsKind> Function()>>(
      'inflate_MeiliIndexSettings_Raw');
  late final _inflate_MeiliIndexSettings_Raw =
      _inflate_MeiliIndexSettings_RawPtr
          .asFunction<ffi.Pointer<MeiliIndexSettingsKind> Function()>();

  ffi.Pointer<SortAscDescKind> inflate_SortAscDesc_Asc() {
    return _inflate_SortAscDesc_Asc();
  }

  late final _inflate_SortAscDesc_AscPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<SortAscDescKind> Function()>>(
          'inflate_SortAscDesc_Asc');
  late final _inflate_SortAscDesc_Asc = _inflate_SortAscDesc_AscPtr
      .asFunction<ffi.Pointer<SortAscDescKind> Function()>();

  ffi.Pointer<SortAscDescKind> inflate_SortAscDesc_Desc() {
    return _inflate_SortAscDesc_Desc();
  }

  late final _inflate_SortAscDesc_DescPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<SortAscDescKind> Function()>>(
          'inflate_SortAscDesc_Desc');
  late final _inflate_SortAscDesc_Desc = _inflate_SortAscDesc_DescPtr
      .asFunction<ffi.Pointer<SortAscDescKind> Function()>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

class wire_SortAscDesc_Asc extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class wire_SortAscDesc_Desc extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

class SortAscDescKind extends ffi.Union {
  external ffi.Pointer<wire_SortAscDesc_Asc> Asc;

  external ffi.Pointer<wire_SortAscDesc_Desc> Desc;
}

class wire_SortAscDesc extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<SortAscDescKind> kind;
}

class wire_list_sort_asc_desc extends ffi.Struct {
  external ffi.Pointer<wire_SortAscDesc> ptr;

  @ffi.Int32()
  external int len;
}

class wire_MeiliIndexSettings_Raw extends ffi.Struct {
  external ffi.Pointer<wire_StringList> searchable_fields;

  external ffi.Pointer<wire_StringList> filterable_fields;

  external ffi.Pointer<wire_StringList> sortable_fields;

  external ffi.Pointer<wire_StringList> ranking_rules;

  external ffi.Pointer<wire_StringList> stop_words;
}

class MeiliIndexSettingsKind extends ffi.Union {
  external ffi.Pointer<wire_MeiliIndexSettings_Raw> Raw;
}

class wire_MeiliIndexSettings extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<MeiliIndexSettingsKind> kind;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
