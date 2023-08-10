//京东小类别
class SubCategoryItem {
  final int id;
  final String imageUrl;
  final String title;
  final int parentId;

  SubCategoryItem(this.imageUrl, this.title,{required this.id,  required this.parentId});

  static SubCategoryItem fromJson(dynamic json) {
    return SubCategoryItem(json["scpic"], json["subcname"], id: json["subcid"], parentId: json['parent_id']);
  }
}

//京东类别
class CategoryItem {
  final int id;
  final String imageUrl;
  final String title;
  final List<SubCategoryItem> subCategories;

  CategoryItem(this.id, this.imageUrl, this.title, this.subCategories);

  static CategoryItem fromJson(dynamic json) {
    return CategoryItem(
      json["J_cid"],
      json['cpic'],
      json['cname'],
      (json['subcategories'] as List<dynamic>)
          .map((e) => SubCategoryItem.fromJson(e))
          .toList(),
    );
  }
}
