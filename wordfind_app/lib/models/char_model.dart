class CharModel {
  String? currentValue='';
  int? currentIndex=0;
  String? correctValue="";
  bool hintShow=false;

  CharModel( {
     this.hintShow=false, this.correctValue, this.currentIndex,this.currentValue
});

  getCurrentValue(){
    if(correctValue!= null){
      return currentValue;
    }
    if(hintShow==true){
      return correctValue;
    }
  }
  clearValue(){
    currentIndex=null;
    currentValue=null;
  }
}