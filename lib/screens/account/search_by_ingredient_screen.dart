import 'dart:convert';

import 'package:cooking/models/Ingredient.dart';
import 'package:flutter/material.dart';

class SearchByIngredientScreen extends StatefulWidget {
  const SearchByIngredientScreen({super.key});

  @override
  State<SearchByIngredientScreen> createState() =>
      _SearchByIngredientScreenState();
}

class _SearchByIngredientScreenState extends State<SearchByIngredientScreen> {
  List<IngredientModel> _ingredients = [];
  List<IngredientModel> _cart = [];

  _loadData() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/data/ingredients.json");
    final jsonResult = jsonDecode(data);
    setState(() {
      _ingredients = (jsonResult.cast<Map<String, dynamic>>() as List)
          .map((ingredient) => IngredientModel.fromJson(ingredient))
          .toList();
    });
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Icon(
                  Icons.shopping_basket,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Rechercher par ingrédient",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Sélectionnez des ingrédients pour trouver des recettes",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[300],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    builder: (builder) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[300],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Entrez une recette à rechercher",
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                            child: ListView.builder(
                              itemCount: _ingredients.length,
                              itemBuilder: (context, index) => ListTile(
                                onTap: () => setState(() {
                                  if (!_cart.contains(_ingredients[index])) {
                                    _cart.add(_ingredients[index]);
                                    Navigator.pop(context);
                                    return;
                                  }
                                }),
                                title: Text(_ingredients[index].label!),
                              ),
                            ),
                          ),
                        ]),
                      );
                    });
              },
              child: const Text("Ajouter un ingrédient au panier"),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: _cart.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(children: [
                  Image.asset(
                    "assets/images/meal.png",
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      _cart[index].label!,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _cart.remove(_cart[index]);
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
