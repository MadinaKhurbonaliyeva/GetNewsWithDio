class GetAllMoviesResponse {
  List<Docs>? docs;
  int? total;
  int? limit;
  int? page;
  int? pages;

  GetAllMoviesResponse(
      {this.docs, this.total, this.limit, this.page, this.pages});

  GetAllMoviesResponse.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {

      docs = <Docs>[];
      json['docs'].forEach((v) {
        docs!.add(Docs.fromJson(v));
      });
    }
    total = json['total'];
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (docs != null) {
      data['docs'] = docs!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['limit'] = limit;
    data['page'] = page;
    data['pages'] = pages;
    return data;
  }
}

class Docs {
  int? id;
  ExternalId? externalId;
  String? name;
  String? alternativeName;
  String? enName;
  List<Names>? names;
  String? type;
  int? typeNumber;
  int? year;
  String? description;
  String? shortDescription;
  String? slogan;
  String? status;
  Rating? rating;
  Votes? votes;
  int? movieLength;
  String? ratingMpaa;
  int? ageRating;
  Logo? logo;
  Poster? poster;
  Poster? backdrop;
  Videos? videos;
  List<Genres>? genres;
  List<Persons>? persons;
  ReviewInfo? reviewInfo;
  List<SeasonsInfo>? seasonsInfo;
  Budget? budget;
  Fees? fees;
  Premiere? premiere;
  List<SimilarMovies>? similarMovies;
  Watchability? watchability;
  List<ReleaseYears>? releaseYears;
  int? top10;
  int? top250;
  bool? ticketsOnSale;
  int? totalSeriesLength;
  int? seriesLength;
  bool? isSeries;
  List<Audience>? audience;
  List<Facts>? facts;
  ImagesInfo? imagesInfo;
  List<ProductionCompanies>? productionCompanies;

  Docs(
      {this.id,
      this.externalId,
      this.name,
      this.alternativeName,
      this.enName,
      this.names,
      this.type,
      this.typeNumber,
      this.year,
      this.description,
      this.shortDescription,
      this.slogan,
      this.status,
      this.rating,
      this.votes,
      this.movieLength,
      this.ratingMpaa,
      this.ageRating,
      this.logo,
      this.poster,
      this.backdrop,
      this.videos,
      this.genres,
      this.persons,
      this.reviewInfo,
      this.seasonsInfo,
      this.budget,
      this.fees,
      this.premiere,
      this.similarMovies,
      this.watchability,
      this.releaseYears,
      this.top10,
      this.top250,
      this.ticketsOnSale,
      this.totalSeriesLength,
      this.seriesLength,
      this.isSeries,
      this.audience,
      this.facts,
      this.imagesInfo,
      this.productionCompanies});

  Docs.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    externalId = json['externalId'] != null
        ? ExternalId.fromJson(json['externalId'])
        : null;
    name = json['name'];
    alternativeName = json['alternativeName'];
    enName = json['enName'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(Names.fromJson(v));
      });
    }
    type = json['type'];
    typeNumber = json['typeNumber'];
    year = json['year'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    slogan = json['slogan'];
    // status = json['status'];
    // rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    print('adj laskdsdfirst first ssdsd ${videos?.trailers?.length}');
    // votes = json['votes'] != null ? Votes.fromJson(json['votes']) : null;
    // movieLength = json['movieLength'];
    // ratingMpaa = json['ratingMpaa'];
    // ageRating = json['ageRating'];
    // logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
    // poster = json['poster'] != null ? Poster.fromJson(json['poster']) : null;
    // backdrop =
    //     json['backdrop'] != null ? Poster.fromJson(json['backdrop']) : null;
    // videos = json['videos'] != null ? Videos.fromJson(json['videos']) : null;
    print('adj laskdsdfirst first vids ${videos?.trailers?.length}');

    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(Genres.fromJson(v));
      });
    }
    if (json['persons'] != null) {
      persons = <Persons>[];
      json['persons'].forEach((v) {
        persons!.add(Persons.fromJson(v));
      });
    }
    reviewInfo = json['reviewInfo'] != null
        ? ReviewInfo.fromJson(json['reviewInfo'])
        : null;
    if (json['seasonsInfo'] != null) {
      seasonsInfo = <SeasonsInfo>[];
      json['seasonsInfo'].forEach((v) {
        seasonsInfo!.add(SeasonsInfo.fromJson(v));
      });
    }
    budget = json['budget'] != null ? Budget.fromJson(json['budget']) : null;
    fees = json['fees'] != null ? Fees.fromJson(json['fees']) : null;
    premiere =
        json['premiere'] != null ? Premiere.fromJson(json['premiere']) : null;
    if (json['similarMovies'] != null) {
      similarMovies = <SimilarMovies>[];
      json['similarMovies'].forEach((v) {
        similarMovies!.add(SimilarMovies.fromJson(v));
      });
    }
    watchability = json['watchability'] != null
        ? Watchability.fromJson(json['watchability'])
        : null;
    if (json['releaseYears'] != null) {
      releaseYears = <ReleaseYears>[];
      json['releaseYears'].forEach((v) {
        releaseYears!.add(ReleaseYears.fromJson(v));
      });
    }
    top10 = json['top10'];
    top250 = json['top250'];
    ticketsOnSale = json['ticketsOnSale'];
    totalSeriesLength = json['totalSeriesLength'];
    seriesLength = json['seriesLength'];
    isSeries = json['isSeries'];
    if (json['audience'] != null) {
      audience = <Audience>[];
      json['audience'].forEach((v) {
        audience!.add(Audience.fromJson(v));
      });
    }
    if (json['facts'] != null) {
      facts = <Facts>[];
      json['facts'].forEach((v) {
        facts!.add(Facts.fromJson(v));
      });
    }
    imagesInfo = json['imagesInfo'] != null
        ? ImagesInfo.fromJson(json['imagesInfo'])
        : null;
    if (json['productionCompanies'] != null) {
      productionCompanies = <ProductionCompanies>[];
      json['productionCompanies'].forEach((v) {
        productionCompanies!.add(ProductionCompanies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (externalId != null) {
      data['externalId'] = externalId!.toJson();
    }
    data['name'] = name;
    data['alternativeName'] = alternativeName;
    data['enName'] = enName;
    if (names != null) {
      data['names'] = names!.map((v) => v.toJson()).toList();
    }
    data['type'] = type;
    data['typeNumber'] = typeNumber;
    data['year'] = year;
    data['description'] = description;
    data['shortDescription'] = shortDescription;
    data['slogan'] = slogan;
    data['status'] = status;
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    if (votes != null) {
      data['votes'] = votes!.toJson();
    }
    data['movieLength'] = movieLength;
    data['ratingMpaa'] = ratingMpaa;
    data['ageRating'] = ageRating;
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    if (poster != null) {
      data['poster'] = poster!.toJson();
    }
    if (backdrop != null) {
      data['backdrop'] = backdrop!.toJson();
    }
    if (videos != null) {
      data['videos'] = videos!.toJson();
    }
    if (genres != null) {
      data['genres'] = genres!.map((v) => v.toJson()).toList();
    }
    if (persons != null) {
      data['persons'] = persons!.map((v) => v.toJson()).toList();
    }
    if (reviewInfo != null) {
      data['reviewInfo'] = reviewInfo!.toJson();
    }
    if (seasonsInfo != null) {
      data['seasonsInfo'] = seasonsInfo!.map((v) => v.toJson()).toList();
    }
    if (budget != null) {
      data['budget'] = budget!.toJson();
    }
    if (fees != null) {
      data['fees'] = fees!.toJson();
    }
    if (premiere != null) {
      data['premiere'] = premiere!.toJson();
    }
    if (similarMovies != null) {
      data['similarMovies'] = similarMovies!.map((v) => v.toJson()).toList();
    }
    if (watchability != null) {
      data['watchability'] = watchability!.toJson();
    }
    if (releaseYears != null) {
      data['releaseYears'] = releaseYears!.map((v) => v.toJson()).toList();
    }
    data['top10'] = top10;
    data['top250'] = top250;
    data['ticketsOnSale'] = ticketsOnSale;
    data['totalSeriesLength'] = totalSeriesLength;
    data['seriesLength'] = seriesLength;
    data['isSeries'] = isSeries;
    if (audience != null) {
      data['audience'] = audience!.map((v) => v.toJson()).toList();
    }
    if (facts != null) {
      data['facts'] = facts!.map((v) => v.toJson()).toList();
    }
    if (imagesInfo != null) {
      data['imagesInfo'] = imagesInfo!.toJson();
    }
    if (productionCompanies != null) {
      data['productionCompanies'] =
          productionCompanies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExternalId {
  String? kpHD;
  String? imdb;
  int? tmdb;

  ExternalId({this.kpHD, this.imdb, this.tmdb});

  ExternalId.fromJson(Map<String, dynamic> json) {
    kpHD = json['kpHD'];
    imdb = json['imdb'];
    tmdb = json['tmdb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kpHD'] = kpHD;
    data['imdb'] = imdb;
    data['tmdb'] = tmdb;
    return data;
  }
}

class Names {
  String? name;
  String? language;
  String? type;

  Names({this.name, this.language, this.type});

  Names.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['language'] = language;
    data['type'] = type;
    return data;
  }
}

class Rating {
  double? kp;
  double? imdb;
  double? tmdb;
  int? filmCritics;
  double? russianFilmCritics;
  double? await;

  Rating(
      {this.kp,
      this.imdb,
      this.tmdb,
      this.filmCritics,
      this.russianFilmCritics,
      this.await});

  Rating.fromJson(Map<String, dynamic> json) {
    kp = json['kp'];
    imdb = json['imdb'];
    tmdb = json['tmdb'];
    filmCritics = json['filmCritics'];
    russianFilmCritics = json['russianFilmCritics'];
    await = json['await'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kp'] = kp;
    data['imdb'] = imdb;
    data['tmdb'] = tmdb;
    data['filmCritics'] = filmCritics;
    data['russianFilmCritics'] = russianFilmCritics;
    data['await'] = await;
    return data;
  }
}

class Votes {
  String? kp;
  String? imdb;
  int? tmdb;
  int? filmCritics;
  int? russianFilmCritics;
  int? await;

  Votes(
      {this.kp,
      this.imdb,
      this.tmdb,
      this.filmCritics,
      this.russianFilmCritics,
      this.await});

  Votes.fromJson(Map<String, dynamic> json) {
    kp = json['kp'];
    imdb = json['imdb'];
    tmdb = json['tmdb'];
    filmCritics = json['filmCritics'];
    russianFilmCritics = json['russianFilmCritics'];
    await = json['await'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kp'] = kp;
    data['imdb'] = imdb;
    data['tmdb'] = tmdb;
    data['filmCritics'] = filmCritics;
    data['russianFilmCritics'] = russianFilmCritics;
    data['await'] = await;
    return data;
  }
}

class Logo {
  String? url;

  Logo({this.url});

  Logo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class Poster {
  String? url;
  String? previewUrl;

  Poster({this.url, this.previewUrl});

  Poster.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    previewUrl = json['previewUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['previewUrl'] = previewUrl;
    return data;
  }
}

class Videos {
  List<Trailers>? trailers;

  Videos({
    this.trailers,
  });

  Videos.fromJson(Map<String, dynamic> json) {

    if (json['trailers'] != null) {
      trailers = <Trailers>[];
      json['trailers'].forEach((v) {
        trailers!.add(Trailers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (trailers != null) {
      data['trailers'] = trailers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Trailers {
  String? url;
  String? name;
  String? site;
  String? type;
  int? size;

  Trailers({this.url, this.name, this.site, this.type, this.size});

  Trailers.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    site = json['site'];
    type = json['type'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['name'] = name;
    data['site'] = site;
    data['type'] = type;
    data['size'] = size;
    return data;
  }
}

class Genres {
  String? name;

  Genres({this.name});

  Genres.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Persons {
  int? id;
  String? photo;
  String? name;
  String? enName;
  String? description;
  String? profession;
  String? enProfession;

  Persons(
      {this.id,
      this.photo,
      this.name,
      this.enName,
      this.description,
      this.profession,
      this.enProfession});

  Persons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photo = json['photo'];
    name = json['name'];
    enName = json['enName'];
    description = json['description'];
    profession = json['profession'];
    enProfession = json['enProfession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['photo'] = photo;
    data['name'] = name;
    data['enName'] = enName;
    data['description'] = description;
    data['profession'] = profession;
    data['enProfession'] = enProfession;
    return data;
  }
}

class ReviewInfo {
  int? count;
  int? positiveCount;
  String? percentage;

  ReviewInfo({this.count, this.positiveCount, this.percentage});

  ReviewInfo.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    positiveCount = json['positiveCount'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['positiveCount'] = positiveCount;
    data['percentage'] = percentage;
    return data;
  }
}

class SeasonsInfo {
  int? number;
  int? episodesCount;

  SeasonsInfo({this.number, this.episodesCount});

  SeasonsInfo.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    episodesCount = json['episodesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    data['episodesCount'] = episodesCount;
    return data;
  }
}

class Budget {
  int? value;
  String? currency;

  Budget({this.value, this.currency});

  Budget.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['currency'] = currency;
    return data;
  }
}

class Fees {
  Budget? world;
  Budget? russia;
  Budget? usa;

  Fees({this.world, this.russia, this.usa});

  Fees.fromJson(Map<String, dynamic> json) {
    world = json['world'] != null ? Budget.fromJson(json['world']) : null;
    russia = json['russia'] != null ? Budget.fromJson(json['russia']) : null;
    usa = json['usa'] != null ? Budget.fromJson(json['usa']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (world != null) {
      data['world'] = world!.toJson();
    }
    if (russia != null) {
      data['russia'] = russia!.toJson();
    }
    if (usa != null) {
      data['usa'] = usa!.toJson();
    }
    return data;
  }
}

class Premiere {
  String? country;
  String? world;
  String? russia;
  String? digital;
  String? cinema;
  String? bluray;
  String? dvd;

  Premiere(
      {this.country,
      this.world,
      this.russia,
      this.digital,
      this.cinema,
      this.bluray,
      this.dvd});

  Premiere.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    world = json['world'];
    russia = json['russia'];
    digital = json['digital'];
    cinema = json['cinema'];
    bluray = json['bluray'];
    dvd = json['dvd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country'] = country;
    data['world'] = world;
    data['russia'] = russia;
    data['digital'] = digital;
    data['cinema'] = cinema;
    data['bluray'] = bluray;
    data['dvd'] = dvd;
    return data;
  }
}

class SimilarMovies {
  int? id;
  String? name;
  String? enName;
  String? alternativeName;
  String? type;
  Poster? poster;

  SimilarMovies(
      {this.id,
      this.name,
      this.enName,
      this.alternativeName,
      this.type,
      this.poster});

  SimilarMovies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    enName = json['enName'];
    alternativeName = json['alternativeName'];
    type = json['type'];
    poster = json['poster'] != null ? Poster.fromJson(json['poster']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['enName'] = enName;
    data['alternativeName'] = alternativeName;
    data['type'] = type;
    if (poster != null) {
      data['poster'] = poster!.toJson();
    }
    return data;
  }
}

class Watchability {
  List<Items>? items;

  Watchability({this.items});

  Watchability.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? name;
  Logo? logo;
  String? url;

  Items({this.name, this.logo, this.url});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    data['url'] = url;
    return data;
  }
}

class ReleaseYears {
  int? start;
  int? end;

  ReleaseYears({this.start, this.end});

  ReleaseYears.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}

class Audience {
  int? count;
  String? country;

  Audience({this.count, this.country});

  Audience.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['country'] = country;
    return data;
  }
}

class Facts {
  String? value;
  String? type;
  bool? spoiler;

  Facts({this.value, this.type, this.spoiler});

  Facts.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    type = json['type'];
    spoiler = json['spoiler'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['type'] = type;
    data['spoiler'] = spoiler;
    return data;
  }
}

class ImagesInfo {
  int? postersCount;
  int? backdropsCount;
  int? framesCount;

  ImagesInfo({this.postersCount, this.backdropsCount, this.framesCount});

  ImagesInfo.fromJson(Map<String, dynamic> json) {
    postersCount = json['postersCount'];
    backdropsCount = json['backdropsCount'];
    framesCount = json['framesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postersCount'] = postersCount;
    data['backdropsCount'] = backdropsCount;
    data['framesCount'] = framesCount;
    return data;
  }
}

class ProductionCompanies {
  String? name;
  String? url;
  String? previewUrl;

  ProductionCompanies({this.name, this.url, this.previewUrl});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    previewUrl = json['previewUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['previewUrl'] = previewUrl;
    return data;
  }
}
