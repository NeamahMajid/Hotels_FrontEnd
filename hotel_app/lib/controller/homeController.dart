import 'package:hotel_app/view/ScreenBottomNavigationBar/booknow.dart';
import 'package:hotel_app/view/ScreenBottomNavigationBar/explore.dart';
import 'package:hotel_app/view/ScreenBottomNavigationBar/save.dart';
import 'package:hotel_app/view/ScreenBottomNavigationBar/search.dart';

class Select{

  select(int _currentIndex){
    switch(_currentIndex){
      case 0:
        return   Explore();
        break ;
      case 1:
        return Search();
        break ;
      case 2 :
        return Save();
        break ;
      case 3:
        return BookNow();
        break ;

    }

  }
}