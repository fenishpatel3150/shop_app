
<h2 align = "center"> 1. Shoes App </h2>

Using Hero animations in a Flutter shoes app can enhance the user experience by providing smooth and visually appealing transitions. Here's a description of how to implement Hero animations in your shoes app:

### Implementing Hero Animations in a Flutter Shoes App

1. **Set Up Your Flutter Project**
   - Create a new Flutter project or open your existing shoes app project.

2. **Add Hero Widgets**
   - Wrap the image or widget you want to animate with the `Hero` widget.
   - Assign a unique `tag` to each Hero widget to link the source and destination.

3. **Source Screen (Shoes List)**
   ```dart
   import 'package:flutter/material.dart';

   class ShoesListScreen extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Shoes List'),
         ),
         body: GridView.builder(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           itemCount: shoesList.length,
           itemBuilder: (context, index) {
             final shoe = shoesList[index];
             return GestureDetector(
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => ShoeDetailScreen(shoe: shoe),
                   ),
                 );
               },
               child: Hero(
                 tag: shoe.id,
                 child: Image.network(shoe.imageUrl),
               ),
             );
           },
         ),
       );
     }
   }

   final shoesList = [
     Shoe(id: '1', imageUrl: 'https://example.com/shoe1.jpg'),
     Shoe(id: '2', imageUrl: 'https://example.com/shoe2.jpg'),
     // Add more shoes here
   ];

   class Shoe {
     final String id;
     final String imageUrl;

     Shoe({required this.id, required this.imageUrl});
   }
   ```

4. **Destination Screen (Shoe Detail)**
   ```dart
   import 'package:flutter/material.dart';

   class ShoeDetailScreen extends StatelessWidget {
     final Shoe shoe;

     ShoeDetailScreen({required this.shoe});

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Shoe Detail'),
         ),
         body: Center(
           child: Hero(
             tag: shoe.id,
             child: Image.network(shoe.imageUrl),
           ),
         ),
       );
     }
   }

   class Shoe {
     final String id;
     final String imageUrl;

     Shoe({required this.id, required this.imageUrl});
   }
   ```

5. **Navigate Between Screens**
   - Use `Navigator.push` to transition from the shoes list screen to the shoe detail screen.
   - The Hero animation will automatically create a smooth transition for the shared element.

### Summary

By wrapping your shoe images with the `Hero` widget and assigning a unique `tag`, you can create engaging and fluid transitions between the shoes list and detail screens. This enhances the user experience by providing a visual connection between the two screens, making your app more intuitive and enjoyable to use.





<img src = "https://github.com/user-attachments/assets/95628a7d-f2d2-4f39-918e-b93a92028d30" width=22% height=35%>
<img src = "https://github.com/user-attachments/assets/3737128f-30d7-4f31-a53e-c072b4843449" width=22% height=35%>
<img src = "https://github.com/user-attachments/assets/b783f2f1-2f91-423d-a4b7-c9f6f21510e4" width=22% height=35%>
<img src = "https://github.com/user-attachments/assets/44bbabb7-cc69-4220-ab73-cb15940bc709" width=22% height=35%>




https://github.com/user-attachments/assets/50710964-c107-4152-b271-c15472beba0f






