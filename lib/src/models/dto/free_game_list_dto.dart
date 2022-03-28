class FreeGameListDto {
  Data? data;

  FreeGameListDto({this.data});

  FreeGameListDto.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Catalog? catalog;

  Data({this.catalog});

  Data.fromJson(Map<String, dynamic> json) {
    catalog =
        json['Catalog'] != null ? new Catalog.fromJson(json['Catalog']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.catalog != null) {
      data['Catalog'] = this.catalog!.toJson();
    }
    return data;
  }
}

class Catalog {
  SearchStore? searchStore;

  Catalog({this.searchStore});

  Catalog.fromJson(Map<String, dynamic> json) {
    searchStore = json['searchStore'] != null
        ? new SearchStore.fromJson(json['searchStore'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.searchStore != null) {
      data['searchStore'] = this.searchStore!.toJson();
    }
    return data;
  }
}

class SearchStore {
  List<Elements>? elements;
  Paging? paging;

  SearchStore({this.elements, this.paging});

  SearchStore.fromJson(Map<String, dynamic> json) {
    if (json['elements'] != null) {
      elements = <Elements>[];
      json['elements'].forEach((v) {
        elements!.add(new Elements.fromJson(v));
      });
    }
    paging =
        json['paging'] != null ? new Paging.fromJson(json['paging']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.elements != null) {
      data['elements'] = this.elements!.map((v) => v.toJson()).toList();
    }
    if (this.paging != null) {
      data['paging'] = this.paging!.toJson();
    }
    return data;
  }
}

class Elements {
  String? title;
  String? id;
  String? namespace;
  String? description;
  String? effectiveDate;
  String? offerType;
  Null? expiryDate;
  String? status;
  bool? isCodeRedemptionOnly;
  List<KeyImages>? keyImages;
  Seller? seller;
  String? productSlug;
  String? urlSlug;
  Null? url;
  List<Items>? items;
  List<CustomAttributes>? customAttributes;
  List<Categories>? categories;
  List<Tags>? tags;
  CatalogNs? catalogNs;
  Price? price;
  Promotions? promotions;

  Elements(
      {this.title,
      this.id,
      this.namespace,
      this.description,
      this.effectiveDate,
      this.offerType,
      this.expiryDate,
      this.status,
      this.isCodeRedemptionOnly,
      this.keyImages,
      this.seller,
      this.productSlug,
      this.urlSlug,
      this.url,
      this.items,
      this.customAttributes,
      this.categories,
      this.tags,
      this.catalogNs,
      this.price,
      this.promotions});

  Elements.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    namespace = json['namespace'];
    description = json['description'];
    effectiveDate = json['effectiveDate'];
    offerType = json['offerType'];
    expiryDate = json['expiryDate'];
    status = json['status'];
    isCodeRedemptionOnly = json['isCodeRedemptionOnly'];
    if (json['keyImages'] != null) {
      keyImages = <KeyImages>[];
      json['keyImages'].forEach((v) {
        keyImages!.add(new KeyImages.fromJson(v));
      });
    }
    seller =
        json['seller'] != null ? new Seller.fromJson(json['seller']) : null;
    productSlug = json['productSlug'];
    urlSlug = json['urlSlug'];
    url = json['url'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    if (json['customAttributes'] != null) {
      customAttributes = <CustomAttributes>[];
      json['customAttributes'].forEach((v) {
        customAttributes!.add(new CustomAttributes.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    catalogNs = json['catalogNs'] != null
        ? new CatalogNs.fromJson(json['catalogNs'])
        : null;
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    promotions = json['promotions'] != null
        ? new Promotions.fromJson(json['promotions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id'] = this.id;
    data['namespace'] = this.namespace;
    data['description'] = this.description;
    data['effectiveDate'] = this.effectiveDate;
    data['offerType'] = this.offerType;
    data['expiryDate'] = this.expiryDate;
    data['status'] = this.status;
    data['isCodeRedemptionOnly'] = this.isCodeRedemptionOnly;
    if (this.keyImages != null) {
      data['keyImages'] = this.keyImages!.map((v) => v.toJson()).toList();
    }
    if (this.seller != null) {
      data['seller'] = this.seller!.toJson();
    }
    data['productSlug'] = this.productSlug;
    data['urlSlug'] = this.urlSlug;
    data['url'] = this.url;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.customAttributes != null) {
      data['customAttributes'] =
          this.customAttributes!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    if (this.catalogNs != null) {
      data['catalogNs'] = this.catalogNs!.toJson();
    }
    if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
    if (this.promotions != null) {
      data['promotions'] = this.promotions!.toJson();
    }
    return data;
  }
}

class KeyImages {
  String? type;
  String? url;

  KeyImages({this.type, this.url});

  KeyImages.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}

class Seller {
  String? id;
  String? name;

  Seller({this.id, this.name});

  Seller.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Items {
  String? id;
  String? namespace;

  Items({this.id, this.namespace});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namespace = json['namespace'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['namespace'] = this.namespace;
    return data;
  }
}

class CustomAttributes {
  String? key;
  String? value;

  CustomAttributes({this.key, this.value});

  CustomAttributes.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    return data;
  }
}

class Categories {
  String? path;

  Categories({this.path});

  Categories.fromJson(Map<String, dynamic> json) {
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    return data;
  }
}

class Tags {
  String? id;

  Tags({this.id});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}

class CatalogNs {
  List<Mappings>? mappings;

  CatalogNs({this.mappings});

  CatalogNs.fromJson(Map<String, dynamic> json) {
    if (json['mappings'] != null) {
      mappings = <Mappings>[];
      json['mappings'].forEach((v) {
        mappings!.add(new Mappings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mappings != null) {
      data['mappings'] = this.mappings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Mappings {
  String? pageSlug;
  String? pageType;

  Mappings({this.pageSlug, this.pageType});

  Mappings.fromJson(Map<String, dynamic> json) {
    pageSlug = json['pageSlug'];
    pageType = json['pageType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageSlug'] = this.pageSlug;
    data['pageType'] = this.pageType;
    return data;
  }
}

class Price {
  TotalPrice? totalPrice;
  List<LineOffers>? lineOffers;

  Price({this.totalPrice, this.lineOffers});

  Price.fromJson(Map<String, dynamic> json) {
    totalPrice = json['totalPrice'] != null
        ? new TotalPrice.fromJson(json['totalPrice'])
        : null;
    if (json['lineOffers'] != null) {
      lineOffers = <LineOffers>[];
      json['lineOffers'].forEach((v) {
        lineOffers!.add(new LineOffers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.totalPrice != null) {
      data['totalPrice'] = this.totalPrice!.toJson();
    }
    if (this.lineOffers != null) {
      data['lineOffers'] = this.lineOffers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TotalPrice {
  int? discountPrice;
  int? originalPrice;
  int? voucherDiscount;
  int? discount;
  String? currencyCode;
  CurrencyInfo? currencyInfo;
  FmtPrice? fmtPrice;

  TotalPrice(
      {this.discountPrice,
      this.originalPrice,
      this.voucherDiscount,
      this.discount,
      this.currencyCode,
      this.currencyInfo,
      this.fmtPrice});

  TotalPrice.fromJson(Map<String, dynamic> json) {
    discountPrice = json['discountPrice'];
    originalPrice = json['originalPrice'];
    voucherDiscount = json['voucherDiscount'];
    discount = json['discount'];
    currencyCode = json['currencyCode'];
    currencyInfo = json['currencyInfo'] != null
        ? new CurrencyInfo.fromJson(json['currencyInfo'])
        : null;
    fmtPrice = json['fmtPrice'] != null
        ? new FmtPrice.fromJson(json['fmtPrice'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['discountPrice'] = this.discountPrice;
    data['originalPrice'] = this.originalPrice;
    data['voucherDiscount'] = this.voucherDiscount;
    data['discount'] = this.discount;
    data['currencyCode'] = this.currencyCode;
    if (this.currencyInfo != null) {
      data['currencyInfo'] = this.currencyInfo!.toJson();
    }
    if (this.fmtPrice != null) {
      data['fmtPrice'] = this.fmtPrice!.toJson();
    }
    return data;
  }
}

class CurrencyInfo {
  int? decimals;

  CurrencyInfo({this.decimals});

  CurrencyInfo.fromJson(Map<String, dynamic> json) {
    decimals = json['decimals'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['decimals'] = this.decimals;
    return data;
  }
}

class FmtPrice {
  String? originalPrice;
  String? discountPrice;
  String? intermediatePrice;

  FmtPrice({this.originalPrice, this.discountPrice, this.intermediatePrice});

  FmtPrice.fromJson(Map<String, dynamic> json) {
    originalPrice = json['originalPrice'];
    discountPrice = json['discountPrice'];
    intermediatePrice = json['intermediatePrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['originalPrice'] = this.originalPrice;
    data['discountPrice'] = this.discountPrice;
    data['intermediatePrice'] = this.intermediatePrice;
    return data;
  }
}

class LineOffers {
  List<AppliedRules>? appliedRules;

  LineOffers({this.appliedRules});

  LineOffers.fromJson(Map<String, dynamic> json) {
    if (json['appliedRules'] != null) {
      appliedRules = <AppliedRules>[];
      json['appliedRules'].forEach((v) {
        appliedRules!.add(new AppliedRules.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.appliedRules != null) {
      data['appliedRules'] = this.appliedRules!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AppliedRules {
  String? id;
  String? endDate;
  DiscountSetting? discountSetting;

  AppliedRules({this.id, this.endDate, this.discountSetting});

  AppliedRules.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    endDate = json['endDate'];
    discountSetting = json['discountSetting'] != null
        ? new DiscountSetting.fromJson(json['discountSetting'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['endDate'] = this.endDate;
    if (this.discountSetting != null) {
      data['discountSetting'] = this.discountSetting!.toJson();
    }
    return data;
  }
}


class Promotions {
  List<PromotionalOffers>? promotionalOffers;

  Promotions({this.promotionalOffers});

  Promotions.fromJson(Map<String, dynamic> json) {
    if (json['promotionalOffers'] != null) {
      promotionalOffers = <PromotionalOffers>[];
      json['promotionalOffers'].forEach((v) {
        promotionalOffers!.add(new PromotionalOffers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.promotionalOffers != null) {
      data['promotionalOffers'] =
          this.promotionalOffers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PromotionalOffers {
  List<PromotionalOffersItem>? promotionalOffers;

  PromotionalOffers({this.promotionalOffers});

  PromotionalOffers.fromJson(Map<String, dynamic> json) {
    if (json['promotionalOffers'] != null) {
      promotionalOffers = <PromotionalOffersItem>[];
      json['promotionalOffers'].forEach((v) {
        promotionalOffers!.add(new PromotionalOffersItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.promotionalOffers != null) {
      data['promotionalOffers'] =
          this.promotionalOffers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PromotionalOffersItem {
  String? startDate;
  String? endDate;
  DiscountSetting? discountSetting;

  PromotionalOffersItem({this.startDate, this.endDate, this.discountSetting});

  PromotionalOffersItem.fromJson(Map<String, dynamic> json) {
    startDate = json['startDate'];
    endDate = json['endDate'];
    discountSetting = json['discountSetting'] != null
        ? new DiscountSetting.fromJson(json['discountSetting'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    if (this.discountSetting != null) {
      data['discountSetting'] = this.discountSetting!.toJson();
    }
    return data;
  }
}

class DiscountSetting {
  String? discountType;
  int? discountPercentage;

  DiscountSetting({this.discountType, this.discountPercentage});

  DiscountSetting.fromJson(Map<String, dynamic> json) {
    discountType = json['discountType'];
    discountPercentage = json['discountPercentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['discountType'] = this.discountType;
    data['discountPercentage'] = this.discountPercentage;
    return data;
  }
}

class Paging {
  int? count;
  int? total;

  Paging({this.count, this.total});

  Paging.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['total'] = this.total;
    return data;
  }
}
