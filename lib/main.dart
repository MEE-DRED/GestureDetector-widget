import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MealFeed(),
    );
  }
}

class MealFeed extends StatefulWidget {
  const MealFeed({super.key});

  @override
  State<MealFeed> createState() => _MealFeedState();
}

class _MealFeedState extends State<MealFeed> {
  String actionMessage = "Interact with the meal card";

  bool liked = false;
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DineWithMee Feed"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  liked = !liked;
                  actionMessage = liked
                      ? "You liked Jollof Rice ❤️"
                      : "Like removed";
                });
              },

              onDoubleTap: () {
                setState(() {
                  saved = !saved;
                  actionMessage = saved
                      ? "Meal saved for later 🔖"
                      : "Meal removed from saved";
                });
              },

              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Nutrition Information"),
                    content: const Text(
                      "Healthy Nigerian Jollof Rice\n\n"
                      "Calories: 420 kcal\n"
                      "Protein: 12g\n"
                      "Carbohydrates: 65g\n"
                      "Fat: 10g",
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Close"),
                      ),
                    ],
                  ),
                );
              },

              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Meal Image
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.network(
                        'https://www.allrecipes.com/thmb/EJn9SMTzr4QRkdiWdi3ZBgC0Clw=/0x512/filters:no_upscale():max_bytes(150000):strip_icc()/7499757JollofriceChefJohn4x3-d601da10d7e845d1ad4c8656a5b87ed4.jpg',
                        height: 220,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Healthy Nigerian Jollof Rice",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            "₦3,500 • High Protein • Dietitian Approved",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),

                          const SizedBox(height: 15),

                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    liked
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  const Text("Like"),
                                ],
                              ),

                              Column(
                                children: [
                                  Icon(
                                    saved
                                        ? Icons.bookmark
                                        : Icons.bookmark_border,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  const Text("Save"),
                                ],
                              ),

                              const Column(
                                children: [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.orange,
                                    size: 30,
                                  ),
                                  Text("Trending"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            Text(
              actionMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                      "How to Test GestureDetector",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("👆 Tap → Like Meal"),
                    Text("👆👆 Double Tap → Save Meal"),
                    Text("⏱️ Long Press → View Nutrition Info"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}