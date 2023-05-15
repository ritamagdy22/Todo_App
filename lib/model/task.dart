
/*
dataclass / model
 */

class Task{
  /*
  da kda hna al firebase al json tfhmo
   */

  String id;
  String title;
  String description;
  int date;
  bool ischeck;


  Task({this.id='', required this.title, required this.date,
  required this.description,  this.ischeck=false});

  /*
  function or name cconsrtuctor :
  bia5od al jason y7wlo le task
  kda al constructor da binadi 3ala al haga al gowa al constructor by
  using this.


  eh al json da ? : format le data bytrgm fl dart le map
  Map : 3andha key, value
         Key: string
         value : dynamic
  Dynamic ? haga mlhash type

  Law ana 3iza a5od haga ml fire bas ha5odha mn al named constructor
  w nadet 3al constrycot mn this
  3shan negbha mn al map
   */

Task.fromJson(Map<String,dynamic>json):this(
  /*
  asm al map oof al key bta3i
  al map de string w al value bta3ha dynamic
  tav ya3ni eh dynamic ?
  ya3ni mlhash no3  bas hia hna liha no3 anha string
  fa han3ml casting
   */

  id: json['id'] as String,
  title: json["title"]as String,
  description: json ["description"] as String,
  date:json["datetime"] as int,
  ischeck: json["ischeck"] as bool,

);

/*
To jason : de hat7aweli al data al 3andi le jason.
 */
      Map<String,dynamic> toJason(){
        /*
        al json bn3br 4anhd ba map (key,value)
        Key : String
        Value :
         */
   return{
     "id": id,
     "title": title,
     "description" : description,
     "datetime":date,
     "ischeck":ischeck
         };
    }
}