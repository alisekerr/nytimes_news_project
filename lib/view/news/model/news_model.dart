import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  final String? status;
  final String? copyright;
  final int? numResults;
  final List<Result>? results;

  NewsModel({
    this.status,
    this.copyright,
    this.numResults,
    this.results,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        status: json["status"],
        copyright: json["copyright"],
        numResults: json["num_results"],
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "copyright": copyright,
        "num_results": numResults,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  final String? uri;
  final String? url;
  final int? id;
  final int? assetId;
  final Source? source;
  final DateTime? publishedDate;
  final DateTime? updated;
  final String? section;
  final String? subsection;
  final String? nytdsection;
  final String? adxKeywords;
  final dynamic column;
  final String? byline;
  final ResultType? type;
  final String? title;
  final String? resultAbstract;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<Media>? media;
  final int? etaId;

  Result({
    this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.resultAbstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        uri: json["uri"],
        url: json["url"],
        id: json["id"],
        assetId: json["asset_id"],
        source: sourceValues.map[json["source"]]!,
        publishedDate: json["published_date"] == null
            ? null
            : DateTime.parse(json["published_date"]),
        updated:
            json["updated"] == null ? null : DateTime.parse(json["updated"]),
        section: json["section"],
        subsection: json["subsection"],
        nytdsection: json["nytdsection"],
        adxKeywords: json["adx_keywords"],
        column: json["column"],
        byline: json["byline"],
        type: resultTypeValues.map[json["type"]]!,
        title: json["title"],
        resultAbstract: json["abstract"],
        desFacet: json["des_facet"] == null
            ? []
            : List<String>.from(json["des_facet"]!.map((x) => x)),
        orgFacet: json["org_facet"] == null
            ? []
            : List<String>.from(json["org_facet"]!.map((x) => x)),
        perFacet: json["per_facet"] == null
            ? []
            : List<String>.from(json["per_facet"]!.map((x) => x)),
        geoFacet: json["geo_facet"] == null
            ? []
            : List<String>.from(json["geo_facet"]!.map((x) => x)),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
        etaId: json["eta_id"],
      );

  Map<String, dynamic> toJson() => {
        "uri": uri,
        "url": url,
        "id": id,
        "asset_id": assetId,
        "source": sourceValues.reverse[source],
        "published_date":
            "${publishedDate!.year.toString().padLeft(4, '0')}-${publishedDate!.month.toString().padLeft(2, '0')}-${publishedDate!.day.toString().padLeft(2, '0')}",
        "updated": updated?.toIso8601String(),
        "section": section,
        "subsection": subsection,
        "nytdsection": nytdsection,
        "adx_keywords": adxKeywords,
        "column": column,
        "byline": byline,
        "type": resultTypeValues.reverse[type],
        "title": title,
        "abstract": resultAbstract,
        "des_facet":
            desFacet == null ? [] : List<dynamic>.from(desFacet!.map((x) => x)),
        "org_facet":
            orgFacet == null ? [] : List<dynamic>.from(orgFacet!.map((x) => x)),
        "per_facet":
            perFacet == null ? [] : List<dynamic>.from(perFacet!.map((x) => x)),
        "geo_facet":
            geoFacet == null ? [] : List<dynamic>.from(geoFacet!.map((x) => x)),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
        "eta_id": etaId,
      };
}

class Media {
  final MediaType? type;
  final Subtype? subtype;
  final String? caption;
  final String? copyright;
  final int? approvedForSyndication;
  final List<MediaMetadatum>? mediaMetadata;

  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediaMetadata,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        type: mediaTypeValues.map[json["type"]]!,
        subtype: subtypeValues.map[json["subtype"]]!,
        caption: json["caption"],
        copyright: json["copyright"],
        approvedForSyndication: json["approved_for_syndication"],
        mediaMetadata: json["media-metadata"] == null
            ? []
            : List<MediaMetadatum>.from(
                json["media-metadata"]!.map((x) => MediaMetadatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": mediaTypeValues.reverse[type],
        "subtype": subtypeValues.reverse[subtype],
        "caption": caption,
        "copyright": copyright,
        "approved_for_syndication": approvedForSyndication,
        "media-metadata": mediaMetadata == null
            ? []
            : List<dynamic>.from(mediaMetadata!.map((x) => x.toJson())),
      };
}

class MediaMetadatum {
  final String? url;
  final Format? format;
  final int? height;
  final int? width;

  MediaMetadatum({
    this.url,
    this.format,
    this.height,
    this.width,
  });

  factory MediaMetadatum.fromJson(Map<String, dynamic> json) => MediaMetadatum(
        url: json["url"],
        format: formatValues.map[json["format"]]!,
        height: json["height"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "format": formatValues.reverse[format],
        "height": height,
        "width": width,
      };
}

enum Format {
  standardThumbnail,
  mediumThreeByTwo210,
  mediumThreeByTwo440,
}

final formatValues = EnumValues({
  "mediumThreeByTwo210": Format.mediumThreeByTwo210,
  "mediumThreeByTwo440": Format.mediumThreeByTwo440,
  "Standard Thumbnail": Format.standardThumbnail
});

enum Subtype { photo, empty }

final subtypeValues = EnumValues({"": Subtype.photo, "photo": Subtype.empty});

enum MediaType { image }

final mediaTypeValues = EnumValues({"image": MediaType.image});

enum Source { newyorkTimes }

final sourceValues = EnumValues({"New York Times": Source.newyorkTimes});

enum ResultType { article, interactive }

final resultTypeValues = EnumValues(
    {"Article": ResultType.article, "Interactive": ResultType.interactive});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
