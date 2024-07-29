// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'frb_generated.dart';
import 'lib.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'api.freezed.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `assert_receiver_is_total_eq`, `assert_receiver_is_total_eq`, `clone`, `clone`, `eq`, `eq`, `fmt`, `fmt`
// These functions are ignored (category: IgnoreBecauseNotAllowedOwner): `to_document`, `to_string`

/// Ensures an instance of milli (represented by just a directory) is initialized
///
/// `tmp_dir`, if specified, is the directory used to store all temporary files
/// (see https://github.com/GregoryConrad/mimir/issues/170)
Future<void> ensureInstanceInitialized(
        {required String instanceDir, String? tmpDir}) =>
    RustLib.instance.api.crateApiEnsureInstanceInitialized(
        instanceDir: instanceDir, tmpDir: tmpDir);

/// Ensures a milli index is initialized
Future<void> ensureIndexInitialized(
        {required String instanceDir, required String indexName}) =>
    RustLib.instance.api.crateApiEnsureIndexInitialized(
        instanceDir: instanceDir, indexName: indexName);

/// Adds the given list of documents to the specified milli index
///
/// Replaces documents that already exist in the index based on document ids.
Future<void> addDocuments(
        {required String instanceDir,
        required String indexName,
        required List<String> documents}) =>
    RustLib.instance.api.crateApiAddDocuments(
        instanceDir: instanceDir, indexName: indexName, documents: documents);

/// Deletes the documents with the given ids from the milli index
Future<void> deleteDocuments(
        {required String instanceDir,
        required String indexName,
        required List<String> documentIds}) =>
    RustLib.instance.api.crateApiDeleteDocuments(
        instanceDir: instanceDir,
        indexName: indexName,
        documentIds: documentIds);

/// Deletes all the documents from the milli index
Future<void> deleteAllDocuments(
        {required String instanceDir, required String indexName}) =>
    RustLib.instance.api.crateApiDeleteAllDocuments(
        instanceDir: instanceDir, indexName: indexName);

/// Replaces all documents with the given documents
Future<void> setDocuments(
        {required String instanceDir,
        required String indexName,
        required List<String> documents}) =>
    RustLib.instance.api.crateApiSetDocuments(
        instanceDir: instanceDir, indexName: indexName, documents: documents);

/// Returns the document with the specified id from the index, if one exists
Future<String?> getDocument(
        {required String instanceDir,
        required String indexName,
        required String documentId}) =>
    RustLib.instance.api.crateApiGetDocument(
        instanceDir: instanceDir, indexName: indexName, documentId: documentId);

/// Returns all documents stored in the index.
Future<List<String>> getAllDocuments(
        {required String instanceDir, required String indexName}) =>
    RustLib.instance.api.crateApiGetAllDocuments(
        instanceDir: instanceDir, indexName: indexName);

/// Performs a search against the index and returns the documents found
Future<List<String>> searchDocuments(
        {required String instanceDir,
        required String indexName,
        String? query,
        int? limit,
        int? offset,
        List<SortBy>? sortCriteria,
        Filter? filter,
        TermsMatchingStrategy? matchingStrategy}) =>
    RustLib.instance.api.crateApiSearchDocuments(
        instanceDir: instanceDir,
        indexName: indexName,
        query: query,
        limit: limit,
        offset: offset,
        sortCriteria: sortCriteria,
        filter: filter,
        matchingStrategy: matchingStrategy);

Future<BigInt> numberOfDocuments(
        {required String instanceDir, required String indexName}) =>
    RustLib.instance.api.crateApiNumberOfDocuments(
        instanceDir: instanceDir, indexName: indexName);

/// Gets the settings of the specified index
Future<MimirIndexSettings> getSettings(
        {required String instanceDir, required String indexName}) =>
    RustLib.instance.api
        .crateApiGetSettings(instanceDir: instanceDir, indexName: indexName);

/// Sets the settings of the specified index
Future<void> setSettings(
        {required String instanceDir,
        required String indexName,
        required MimirIndexSettings settings}) =>
    RustLib.instance.api.crateApiSetSettings(
        instanceDir: instanceDir, indexName: indexName, settings: settings);

abstract class DocumentExt {
  String toString();
}

abstract class StringExt {
  Future<MapStringValue> toDocument();
}

@freezed
sealed class Filter with _$Filter {
  const Filter._();

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

  /// Creates a [Filter] for the "IS NULL" operator.
  const factory Filter.isNull({
    required String field,
  }) = Filter_IsNull;

  /// Creates a [Filter] for the "IS EMPTY" operator.
  const factory Filter.isEmpty({
    required String field,
  }) = Filter_IsEmpty;
}

/// The settings of a mimir index
@freezed
class MimirIndexSettings with _$MimirIndexSettings {
  const factory MimirIndexSettings({
    String? primaryKey,
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
sealed class SortBy with _$SortBy {
  const SortBy._();

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
  last,

  /// All words are mandatory
  all,
  ;
}