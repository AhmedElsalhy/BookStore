class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'])
          : null,
      saleInfo:
          json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'])
          : null,
      searchInfo: json['searchInfo'] != null
          ? SearchInfo.fromJson(json['searchInfo'])
          : null,
    );
  }
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifier>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors:
          json['authors'] != null ? List<String>.from(json['authors']) : null,
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: json['industryIdentifiers'] != null
          ? (json['industryIdentifiers'] as List)
              .map((e) => IndustryIdentifier.fromJson(e))
              .toList()
          : null,
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: json['categories'] != null
          ? List<String>.from(json['categories'])
          : null,
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }
}

class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'],
      identifier: json['identifier'],
    );
  }
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'],
      image: json['image'],
    );
  }
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'],
      containsImageBubbles: json['containsImageBubbles'],
    );
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  Price? listPrice;
  Price? retailPrice;
  String? buyLink;
  List<Offer>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      listPrice: Price.fromJson(json['listPrice']),
      retailPrice: Price.fromJson(json['retailPrice']),
      buyLink: json['buyLink'],
      offers: json['offers'] != null
          ? (json['offers'] as List).map((e) => Offer.fromJson(e)).toList()
          : null,
    );
  }
}

class Price {
  double? amount;
  String? currencyCode;

  Price({
    this.amount,
    this.currencyCode,
  });

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }
}

class Offer {
  int? finskyOfferType;
  Price? listPrice;
  Price? retailPrice;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      finskyOfferType: json['finskyOfferType'],
      listPrice: Price.fromJson(json['listPrice']),
      retailPrice: Price.fromJson(json['retailPrice']),
    );
  }
}

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'],
      viewability: json['viewability'],
      embeddable: json['embeddable'],
      publicDomain: json['publicDomain'],
      textToSpeechPermission: json['textToSpeechPermission'],
      epub: json['epub'] != null ? Epub.fromJson(json['epub']) : null,
      pdf: json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null,
      webReaderLink: json['webReaderLink'],
      accessViewStatus: json['accessViewStatus'],
      quoteSharingAllowed: json['quoteSharingAllowed'],
    );
  }
}

class Epub {
  bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'],
    );
  }
}

class Pdf {
  bool? isAvailable;

  Pdf({
    this.isAvailable,
  });

  factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
      isAvailable: json['isAvailable'],
    );
  }
}

class SearchInfo {
  String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(
      textSnippet: json['textSnippet'],
    );
  }
}
