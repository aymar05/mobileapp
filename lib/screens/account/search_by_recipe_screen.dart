import 'package:flutter/material.dart';

class SearchByRecipeScreen extends StatefulWidget {
  const SearchByRecipeScreen({super.key});

  @override
  State<SearchByRecipeScreen> createState() => _SearchScreenByIngredientState();
}

class _SearchScreenByIngredientState extends State<SearchByRecipeScreen> {
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
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Rechercher une recette",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Vous pouvez rechercher une recette par son nom",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[300],
            ),
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Rechercher"),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
