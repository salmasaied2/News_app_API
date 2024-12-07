import 'package:flutter/material.dart';
import 'package:news_app/widgets/first_category.dart';
import 'package:news_app/models/category_model.dart';
class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const  [
     CategoryModel(CategoryName: 'Business' , image:'assets/BUSINESS.webp' ),
     CategoryModel(CategoryName: 'entertainment' , image:'assets/entertaiment.avif' ),
     CategoryModel(CategoryName: 'health' , image:'assets/health.avif' ),
     CategoryModel(CategoryName: 'science' , image:'assets/science.avif' ),
     CategoryModel(CategoryName: 'sports' , image:'assets/sports.jfif' ),
     CategoryModel(CategoryName: 'technology' , image:'assets/technology.jpeg' ),
     CategoryModel(CategoryName: 'general' , image:'assets/general.avif' ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context,index)
          {
            return  Category1(
              category: categories[index],
            );
          }
      ),
    );
  }
}
