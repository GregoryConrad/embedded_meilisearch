// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.io.dart'
    if (dart.library.html) 'bridge_generated.web.dart';

part 'bridge_generated.freezed.dart';

abstract class EmbeddedMilli {
  /// Ensures an instance of milli (represented by just a directory) is initialized
  Future<void> ensureInstanceInitialized(
      {required String instaceDir, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kEnsureInstanceInitializedConstMeta;

  /// Ensures a milli index is initialized
  Future<void> ensureIndexInitialized(
      {required String instanceDir, required String indexName, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kEnsureIndexInitializedConstMeta;

  /// Adds the given list of documents to the specified milli index
  ///
  /// Replaces documents that already exist in the index based on document ids.
  Future<void> addDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> documents,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kAddDocumentsConstMeta;

  /// Deletes the documents with the given ids from the milli index
  Future<void> deleteDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> documentIds,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDeleteDocumentsConstMeta;

  /// Deletes all the documents from the milli index
  Future<void> deleteAllDocuments(
      {required String instanceDir, required String indexName, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDeleteAllDocumentsConstMeta;

  /// Replaces all documents with the given documents
  Future<void> setDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> documents,
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
  Future<List<String>> getAllDocuments(
      {required String instanceDir, required String indexName, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetAllDocumentsConstMeta;

  /// Performs a search against the index and returns the documents found
  Future<List<String>> searchDocuments(
      {required String instanceDir,
      required String indexName,
      String? query,
      int? limit,
      List<SortBy>? sortCriteria,
      Filter? filter,
      TermsMatchingStrategy? matchingStrategy,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSearchDocumentsConstMeta;

  /// Gets the settings of the specified index
  Future<MimirIndexSettings> getSettings(
      {required String instanceDir, required String indexName, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetSettingsConstMeta;

  /// Sets the settings of the specified index
  Future<void> setSettings(
      {required String instanceDir,
      required String indexName,
      required MimirIndexSettings settings,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetSettingsConstMeta;
}

@freezed
class Filter with _$Filter {
  /// Creates an "or" [Filter] of the given sub-filters.
  const factory Filter.or(
    List<Filter> field0,
  ) = Filter_Or;

  /// Creates an "and" [Filter] of the given sub-filters.
  const factory Filter.and(
    List<Filter> field0,
  ) = Filter_And;

  /// Creates a "not" [Filter] of the given sub-filter.
  const factory Filter.not(
    Filter field0,
  ) = Filter_Not;

  /// Creates a [Filter] that specifies the given field exists.
  const factory Filter.exists({
    required String field,
  }) = Filter_Exists;

  /// Creates a [Filter] for the "IN" operator.
  const factory Filter.inValues({
    required String field,
    required List<String> values,
  }) = Filter_InValues;

  /// Creates a [Filter] for the ">" operator.
  const factory Filter.greaterThan({
    required String field,
    required String value,
  }) = Filter_GreaterThan;

  /// Creates a [Filter] for the ">=" operator.
  const factory Filter.greaterThanOrEqual({
    required String field,
    required String value,
  }) = Filter_GreaterThanOrEqual;

  /// Creates a [Filter] for the "==" operator.
  const factory Filter.equal({
    required String field,
    required String value,
  }) = Filter_Equal;

  /// Creates a [Filter] for the "!=" operator.
  const factory Filter.notEqual({
    required String field,
    required String value,
  }) = Filter_NotEqual;

  /// Creates a [Filter] for the "<" operator.
  const factory Filter.lessThan({
    required String field,
    required String value,
  }) = Filter_LessThan;

  /// Creates a [Filter] for the "<=" operator.
  const factory Filter.lessThanOrEqual({
    required String field,
    required String value,
  }) = Filter_LessThanOrEqual;

  /// Creates a [Filter] for the "BETWEEN" operator.
  const factory Filter.between({
    required String field,
    required String from,
    required String to,
  }) = Filter_Between;
}

/// The settings of a mimir index
@freezed
class MimirIndexSettings with _$MimirIndexSettings {
  const factory MimirIndexSettings({
    List<String>? searchableFields,
    required List<String> filterableFields,
    required List<String> sortableFields,
    required List<String> rankingRules,
    required List<String> stopWords,
    required List<Synonyms> synonyms,
    required bool typosEnabled,
    required int minWordSizeForOneTypo,
    required int minWordSizeForTwoTypos,
    required List<String> disallowTyposOnWords,
    required List<String> disallowTyposOnFields,
  }) = _MimirIndexSettings;
}

@freezed
class SortBy with _$SortBy {
  /// Sort by the given field in ascending order
  const factory SortBy.asc(
    String field0,
  ) = SortBy_Asc;

  /// Sort by the given field in descending order
  const factory SortBy.desc(
    String field0,
  ) = SortBy_Desc;
}

/// Represents the synonyms of a given word
@freezed
class Synonyms with _$Synonyms {
  const factory Synonyms({
    required String word,
    required List<String> synonyms,
  }) = _Synonyms;
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
      {required String instaceDir, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instaceDir);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_ensure_instance_initialized(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kEnsureInstanceInitializedConstMeta,
      argValues: [instaceDir],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kEnsureInstanceInitializedConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "ensure_instance_initialized",
        argNames: ["instaceDir"],
      );

  Future<void> ensureIndexInitialized(
      {required String instanceDir, required String indexName, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_ensure_index_initialized(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kEnsureIndexInitializedConstMeta,
      argValues: [instanceDir, indexName],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kEnsureIndexInitializedConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "ensure_index_initialized",
        argNames: ["instanceDir", "indexName"],
      );

  Future<void> addDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> documents,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    var arg2 = _platform.api2wire_StringList(documents);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_add_documents(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kAddDocumentsConstMeta,
      argValues: [instanceDir, indexName, documents],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kAddDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "add_documents",
        argNames: ["instanceDir", "indexName", "documents"],
      );

  Future<void> deleteDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> documentIds,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    var arg2 = _platform.api2wire_StringList(documentIds);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_delete_documents(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kDeleteDocumentsConstMeta,
      argValues: [instanceDir, indexName, documentIds],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDeleteDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "delete_documents",
        argNames: ["instanceDir", "indexName", "documentIds"],
      );

  Future<void> deleteAllDocuments(
      {required String instanceDir, required String indexName, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_delete_all_documents(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kDeleteAllDocumentsConstMeta,
      argValues: [instanceDir, indexName],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDeleteAllDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "delete_all_documents",
        argNames: ["instanceDir", "indexName"],
      );

  Future<void> setDocuments(
      {required String instanceDir,
      required String indexName,
      required List<String> documents,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    var arg2 = _platform.api2wire_StringList(documents);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_set_documents(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kSetDocumentsConstMeta,
      argValues: [instanceDir, indexName, documents],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSetDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "set_documents",
        argNames: ["instanceDir", "indexName", "documents"],
      );

  Future<String?> getDocument(
      {required String instanceDir,
      required String indexName,
      required String documentId,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    var arg2 = _platform.api2wire_String(documentId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_document(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_opt_String,
      constMeta: kGetDocumentConstMeta,
      argValues: [instanceDir, indexName, documentId],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetDocumentConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_document",
        argNames: ["instanceDir", "indexName", "documentId"],
      );

  Future<List<String>> getAllDocuments(
      {required String instanceDir, required String indexName, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_all_documents(port_, arg0, arg1),
      parseSuccessData: _wire2api_StringList,
      constMeta: kGetAllDocumentsConstMeta,
      argValues: [instanceDir, indexName],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetAllDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_all_documents",
        argNames: ["instanceDir", "indexName"],
      );

  Future<List<String>> searchDocuments(
      {required String instanceDir,
      required String indexName,
      String? query,
      int? limit,
      List<SortBy>? sortCriteria,
      Filter? filter,
      TermsMatchingStrategy? matchingStrategy,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    var arg2 = _platform.api2wire_opt_String(query);
    var arg3 = _platform.api2wire_opt_box_autoadd_u32(limit);
    var arg4 = _platform.api2wire_opt_list_sort_by(sortCriteria);
    var arg5 = _platform.api2wire_opt_box_autoadd_filter(filter);
    var arg6 = _platform
        .api2wire_opt_box_autoadd_terms_matching_strategy(matchingStrategy);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_search_documents(
          port_, arg0, arg1, arg2, arg3, arg4, arg5, arg6),
      parseSuccessData: _wire2api_StringList,
      constMeta: kSearchDocumentsConstMeta,
      argValues: [
        instanceDir,
        indexName,
        query,
        limit,
        sortCriteria,
        filter,
        matchingStrategy
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSearchDocumentsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "search_documents",
        argNames: [
          "instanceDir",
          "indexName",
          "query",
          "limit",
          "sortCriteria",
          "filter",
          "matchingStrategy"
        ],
      );

  Future<MimirIndexSettings> getSettings(
      {required String instanceDir, required String indexName, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_settings(port_, arg0, arg1),
      parseSuccessData: _wire2api_mimir_index_settings,
      constMeta: kGetSettingsConstMeta,
      argValues: [instanceDir, indexName],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetSettingsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_settings",
        argNames: ["instanceDir", "indexName"],
      );

  Future<void> setSettings(
      {required String instanceDir,
      required String indexName,
      required MimirIndexSettings settings,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceDir);
    var arg1 = _platform.api2wire_String(indexName);
    var arg2 = _platform.api2wire_box_autoadd_mimir_index_settings(settings);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_set_settings(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kSetSettingsConstMeta,
      argValues: [instanceDir, indexName, settings],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSetSettingsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "set_settings",
        argNames: ["instanceDir", "indexName", "settings"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  List<Synonyms> _wire2api_list_synonyms(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_synonyms).toList();
  }

  MimirIndexSettings _wire2api_mimir_index_settings(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 11)
      throw Exception('unexpected arr length: expect 11 but see ${arr.length}');
    return MimirIndexSettings(
      searchableFields: _wire2api_opt_StringList(arr[0]),
      filterableFields: _wire2api_StringList(arr[1]),
      sortableFields: _wire2api_StringList(arr[2]),
      rankingRules: _wire2api_StringList(arr[3]),
      stopWords: _wire2api_StringList(arr[4]),
      synonyms: _wire2api_list_synonyms(arr[5]),
      typosEnabled: _wire2api_bool(arr[6]),
      minWordSizeForOneTypo: _wire2api_u8(arr[7]),
      minWordSizeForTwoTypos: _wire2api_u8(arr[8]),
      disallowTyposOnWords: _wire2api_StringList(arr[9]),
      disallowTyposOnFields: _wire2api_StringList(arr[10]),
    );
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  List<String>? _wire2api_opt_StringList(dynamic raw) {
    return raw == null ? null : _wire2api_StringList(raw);
  }

  Synonyms _wire2api_synonyms(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Synonyms(
      word: _wire2api_String(arr[0]),
      synonyms: _wire2api_StringList(arr[1]),
    );
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
bool api2wire_bool(bool raw) {
  return raw;
}

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

// Section: finalizer
