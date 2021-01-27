import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymovies/src/data/models/movie_response.dart';
import 'package:mymovies/src/ui/screens/home/home_page.dart';
import 'package:mymovies/src/ui/screens/movie_details.dart';

class Routes{
 static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case HomePage.home: 
          return MaterialPageRoute(builder: (context){
            return HomePage();

          });
              case MovieDetailsPage.movieDetails:
        final Movie movie = settings.arguments;
        return MaterialPageRoute(builder: (_) {
          return MovieDetailsPage(movie);
        });
        break;

      default: return MaterialPageRoute(builder: (context){
            return Center(child: Text("Not defined route for ${settings.name}"),);

          });
    }
    

  }
}