import "package:flutter/material.dart";
import "package:myapp/models/recipebook/recipe.dart";
import "package:myapp/pages/pages_recipebook/recipe_page.dart";
import "package:myapp/services/recipebook/data_service.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _mealTypeFilter = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RecipBook"),
        centerTitle: true,
      ),
      body: SafeArea(child: _buildUI()),
    );
  }

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3518108319.
  Widget _buildUI() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            _recipeTypeButtons(),
            _recipesList(),
          ],
        ),
      ),
    );
  }

  Widget _recipeTypeButtons() {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.05,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    _mealTypeFilter = "snack";
                  });
                },
                child: const Text("Snack"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    _mealTypeFilter = "Breakfast";
                  });
                },
                child: const Text("Breakfast"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    _mealTypeFilter = "Lunch";
                  });
                },
                child: const Text("Lunch"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: FilledButton(
                onPressed: () {
                  setState(() {
                    _mealTypeFilter = "Dinner";
                  });
                },
                child: const Text("Dinner"),
              ),
            ),
          ],
        ));
  }

  Widget _buildButton(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }

  Widget _recipesList() {
    return Expanded(
      child: FutureBuilder(
        future: DataService().getRecipes(
          _mealTypeFilter,
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text("Unable to load data."),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              Recipe recipe = snapshot.data![index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RecipePage(recipe: recipe,);
                      }
                    ),
                  );
                },
                contentPadding: const EdgeInsets.only(top: 15.0),
                isThreeLine: true,
                subtitle: Text(
                  "${recipe.cuisine}\nDifficulty: ${recipe.difficulty}",
                ),
                leading: Image.network(recipe.image),
                title: Text(
                  recipe.name,
                ),
                trailing: Text(
                  "${recipe.rating.toString()}⭐",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
