import 'package:news_app/Models/CategoryModel.dart';

List<CategoryModel> getCategoryModel() {
  List<CategoryModel> categoryList = new List<CategoryModel>();
  CategoryModel category1 = new CategoryModel();
  category1.categoryName = "Bussiness";
  category1.url =
      "https://images.unsplash.com/photo-1538582709238-0a503bd5ae04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  categoryList.add(category1);

  CategoryModel category2 = new CategoryModel();
  category2.categoryName = "Entertainment";
  category2.url =
      "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80";
  categoryList.add(category2);

  CategoryModel category3 = new CategoryModel();
  category3.categoryName = "General";
  category3.url =
      "https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80";
  categoryList.add(category3);

  CategoryModel category4 = new CategoryModel();
  category4.categoryName = "Health";
  category4.url =
      "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80";
  categoryList.add(category4);

  CategoryModel category5 = new CategoryModel();
  category5.categoryName = "Science";
  category5.url =
      "https://images.unsplash.com/photo-1576319155264-99536e0be1ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80";
  categoryList.add(category5);

  CategoryModel category6 = new CategoryModel();
  category6.categoryName = "Sport";
  category6.url =
      "https://images.unsplash.com/photo-1552667466-07770ae110d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  categoryList.add(category6);

  CategoryModel category7 = new CategoryModel();
  category7.categoryName = "Technology";
  category7.url =
      "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80";
  categoryList.add(category7);

  return categoryList;
}
