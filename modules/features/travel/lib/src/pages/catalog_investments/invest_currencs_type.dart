enum InvestCurrencyType {
  uzs,
  usd;

  String get value => name.toUpperCase();

 static  InvestCurrencyType  type(String field){
   switch (field) {
     case "uzs":
       return InvestCurrencyType.uzs;
     case "usd":
       return InvestCurrencyType.usd;
     default:
       return InvestCurrencyType.uzs;
   }

 }


}

enum SortType { popular, ask, desk }


extension SortTypeMapper on SortType {
  Map<String, String>? get query {
    switch (this) {
      case SortType.ask:
        return {"sortby": "price", "order": "asc"};
      case SortType.desk:
        return {"sortby": "price", "order": "desc"};
      case SortType.popular:
        return {"sortby": "popular"};
    }
  }
}