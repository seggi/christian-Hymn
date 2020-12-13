
import 'bible_scheduledb.dart';



class BibleSchedule {
  final String months;
  final String days;
  final String verses;

  BibleSchedule({this.months, this.days, this.verses});

  Map<String, dynamic> toMap(){
    return {
      'months': months,
      'days': days,
      'verses': verses,
    };
  }
}


class DbBibleSchedule {
  DateTime _datetime = DateTime.now();

  bool isLeapYear(int year) => 
          (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));

  retrieveLeap() {
    var leapcontent = leapDB;
    for(var content in leapcontent){
      var save = content;
      return save;
    }
  }

  retrieveNonLeap() {
    var nonleapcontent = nonleapDB;
    for(var content in nonleapcontent){
      var save = content;
      return save;
    }
  }
}

class YearChecker extends DbBibleSchedule{

  checkNonLeap() {
      var leapcontent = retrieveLeap();
      var nonleapcontent = retrieveNonLeap();
      //var nonleapcontent = await retrieveNonLeap();
       
      final pickYear = _datetime.year;
      final pickMonth = _datetime.month;
      final pickDay = _datetime.day;
      var collection = [];


       //Pick January data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extract 
         if(pickMonth == 1 ){
           var takecontent = leapcontent['Janvier'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Janvier');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);
               return collection;
             }
           }
          
         }
       }

      //  // Pick May data
      // if(isLeapYear(pickYear) == true){
      //     //we call the leapDB to extratect 
      //    if(pickMonth == 5 ){
      //      var takecontent = leapcontent['Mai'];
      //      for(var content in takecontent){
      //        if(content.containsKey(pickDay.toString())){
      //          collection.add('Mai');
      //          collection.add(pickDay.toString());
      //          collection.add(content[pickDay.toString()]);
      //          return collection;
      //        }
      //      }
          
      //    }
      //  }
    
      //Pick February data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extratect 
          if(pickMonth == 2 ){
            var takecontent = leapcontent['Février'];
            for(var content in takecontent){
              if(content.containsKey(pickDay.toString())){
                collection.add('Février');
                collection.add(pickDay.toString());
                collection.add(content[pickDay.toString()]);

                return collection;
              }
            }
          
          }
        }

         //Pick March data
        if(isLeapYear(pickYear) == true){
           //we call the leapDB to extratect 
          if(pickMonth == 3 ){
            var takecontent = leapcontent['Mars'];
            for(var content in takecontent){
              if(content.containsKey(pickDay.toString())){
                collection.add('Mars');
                collection.add(pickDay.toString());
                collection.add(content[pickDay.toString()]);

               return collection;
              }
            }
          
          }
        }

       // Pick Abril data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extratect 
         if(pickMonth == 4 ){
           var takecontent = leapcontent['Avril'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Avril');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

               return collection;
             }
           }
          
         }
       }

       // Pick May data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extratect 
         if(pickMonth == 5 ){
           var takecontent = leapcontent['Mai'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Mai');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

               return collection;
             }
           }
          
         }
       }

       // Pick June data
       if(isLeapYear(pickYear) == true){
         // we call the leapDB to extratect 
         if(pickMonth == 6 ){
           var takecontent = leapcontent['Juin'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Juin');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

               return collection;
             }
           }
          
         }
       }

       // Pick July data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extratect 
         if(pickMonth == 7 ){
           var takecontent = leapcontent['Juillet'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Juillet');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

      //Pick August data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extratect 
         if(pickMonth == 8 ){
           var takecontent = leapcontent['Août'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Août');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick Semptember data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extratect 
         if(pickMonth == 9 ){
           var takecontent = leapcontent['Septembre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Septembre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick October data
       if(isLeapYear(pickYear) == true){
         // we call the leapDB to extratect 
         if(pickMonth == 10 ){
           var takecontent = leapcontent['Octobre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Octobre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick November data
       if(isLeapYear(pickYear) == true){
         // we call the leapDB to extratect 
         if(pickMonth == 11 ){
           var takecontent = leapcontent['Novembre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Novembre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick December data
       if(isLeapYear(pickYear) == true){
          //we call the leapDB to extratect 
         if(pickMonth == 12 ){
           var takecontent = leapcontent['Decembre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Decembre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

               return collection;
             }
           }
          
         }
       }
      
  //////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////////////

  //Pick January data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extract 
         if(pickMonth == 1 ){
           var takecontent = nonleapcontent['Janvier'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Janvier');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);
               return collection;
             }
           }
          
         }
       }

      //  // Pick May data
      // if(isLeapYear(pickYear) == true){
      //     //we call the leapDB to extratect 
      //    if(pickMonth == 5 ){
      //      var takecontent = nonleapcontent['Mai'];
      //      for(var content in takecontent){
      //        if(content.containsKey(pickDay.toString())){
      //          collection.add('Mai');
      //          collection.add(pickDay.toString());
      //          collection.add(content[pickDay.toString()]);
      //          return collection;
      //        }
      //      }
          
      //    }
      //  }
    
      //Pick February data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extratect 
          if(pickMonth == 2 ){
            var takecontent = nonleapcontent['Février'];
            for(var content in takecontent){
              if(content.containsKey(pickDay.toString())){
                collection.add('Février');
                collection.add(pickDay.toString());
                collection.add(content[pickDay.toString()]);

                return collection;
              }
            }
          
          }
        }

         //Pick March data
        if(isLeapYear(pickYear) == false){
           //we call the leapDB to extratect 
          if(pickMonth == 3 ){
            var takecontent = nonleapcontent['Mars'];
            for(var content in takecontent){
              if(content.containsKey(pickDay.toString())){
                collection.add('Mars');
                collection.add(pickDay.toString());
                collection.add(content[pickDay.toString()]);

               return collection;
              }
            }
          
          }
        }

       // Pick Abril data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extratect 
         if(pickMonth == 4 ){
           var takecontent = nonleapcontent['Avril'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Avril');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

               return collection;
             }
           }
          
         }
       }

       // Pick May data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extratect 
         if(pickMonth == 5 ){
           var takecontent = nonleapcontent['Mai'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Mai');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

               return collection;
             }
           }
          
         }
       }

       // Pick June data
       if(isLeapYear(pickYear) == false){
         // we call the leapDB to extratect 
         if(pickMonth == 6 ){
           var takecontent = nonleapcontent['Juin'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Juin');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

               return collection;
             }
           }
          
         }
       }

       // Pick July data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extratect 
         if(pickMonth == 7 ){
           var takecontent = nonleapcontent['Juillet'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Juillet');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

      //Pick August data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extratect 
         if(pickMonth == 8 ){
           var takecontent = nonleapcontent['Août'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Août');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick Semptember data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extratect 
         if(pickMonth == 9 ){
           var takecontent = nonleapcontent['Septembre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Septembre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick October data
       if(isLeapYear(pickYear) == false){
         // we call the leapDB to extratect 
         if(pickMonth == 10 ){
           var takecontent = nonleapcontent['Octobre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Octobre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick November data
       if(isLeapYear(pickYear) == false){
         // we call the leapDB to extratect 
         if(pickMonth == 11 ){
           var takecontent = nonleapcontent['Novembre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Novembre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);

                return collection;
             }
           }
          
         }
       }

       // Pick December data
       if(isLeapYear(pickYear) == false){
          //we call the leapDB to extract 
         if(pickMonth == 12 ){
           var takecontent = nonleapcontent['Decembre'];
           for(var content in takecontent){
             if(content.containsKey(pickDay.toString())){
               collection.add('Decembre');
               collection.add(pickDay.toString());
               collection.add(content[pickDay.toString()]);
               return collection;
             }
           }
          
         }
       }
      
  }

}


main(List<String> args) {
 var checker = new YearChecker();
  print('Seggi ${checker.checkNonLeap()}');
}

//lib/pages/bible_schedule