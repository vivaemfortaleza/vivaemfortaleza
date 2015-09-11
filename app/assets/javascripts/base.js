// Core adjustments

/********************************************************/
/*********************** JSON ***************************/
/********************************************************/
/********************************************************/

JSON.equals = function(arg1,arg2){
  return JSON.stringify(arg1) === JSON.stringify(arg2);
}

/********************************************************/
/*********************** Array **************************/
/********************************************************/
/********************************************************/
Array.prototype.checkIf = function(predicate){
  for(var a in this){
    if(predicate(this[a]))
      return true;
  }
  return false;
}

/********************************************************/
/*********************** jQuery *************************/
/********************************************************/
/********************************************************/

// nested, nested-form, nested-table
$('.nested-form').each(function(index){
  this.nestedForm = this.clone();
});