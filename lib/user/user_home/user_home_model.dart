
import 'dart:convert';

List<AllCategories> AllCategoriesFromJson(String str) => List<AllCategories>.from(json.decode(str).map((x) => AllCategories.fromJson(x)));

String AllCategoriesToJson(List<AllCategories> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllCategories {
    int id;
    int cafeId;
    String genre;


    AllCategories({
        required this.id,
        required this.cafeId,
        required this.genre,

    });

    factory AllCategories.fromJson(Map<String, dynamic> json) => AllCategories(
        id: json["id"],
        cafeId: json["cafe_id"],
        genre: json["genre"],

    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "cafe_id": cafeId,
        "genre": genre,

    };
}

List<Cafes> CafesFromJson(String str) => List<Cafes>.from(json.decode(str).map((x) => Cafes.fromJson(x)));

String CafesToJson(List<Cafes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cafes {
    int id;
    String name;
    

    Cafes({
        required this.id,
        required this.name,
        
    });

    factory Cafes.fromJson(Map<String, dynamic> json) => Cafes(
        id: json["id"],
        name: json["name"],
        
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        
    };
}
