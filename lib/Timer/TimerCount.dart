import 'package:scoped_model/scoped_model.dart';



class TimerCountModel extends Model {
  int _count=0;
  bool _timePicker = false;

  get count=>_count;
  get timePick=>_timePicker;

  set timePick(bool time){
    if(time == null){
      throw new ArgumentError();
    }

    _timePicker = time;
    notifyListeners();
  }

  void increment(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }
  }
