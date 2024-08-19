import 'package:face_app_flutter/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyFavouriteScreen extends StatefulWidget {
  const MyFavouriteScreen({super.key});

  @override
  State<MyFavouriteScreen> createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends State<MyFavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    //final favouriteProvider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Favourite'),),
      body: Column(
        children: [
          Expanded(
            child: Consumer<FavouriteProvider>(builder: (context, value, child){
              return ListView.builder(
                  itemCount: value.selectedItem.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      onTap: (){
                        value.removeItems(index);
                      },
                      title: Text('Item $index'),
                      trailing: value.selectedItem.contains(index) ? const Icon(Icons.favorite) : const Icon(Icons.favorite_outline),
                    );
                  });
            }),
          )
        ],
      ),
    );
  }
}
