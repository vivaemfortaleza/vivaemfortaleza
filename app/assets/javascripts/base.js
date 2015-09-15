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

// nested, nested-form
$(document).ready(function(){

  var removeAction = function(){
    this.closest(".nested").remove();
  }

  var nestedButtonClick = function(){
    var form = this.closest('.nested-form');
    var nested = form.clonnedNested.clone();

    $(form).find('.nested-remove-button').click(removeAction);
    $(form).find('.nested-remove-button').show();
    $(form).find('.nested-add-button').hide();

    $(form).append(nested);
    $(nested).find('.nested-remove-button').click(removeAction);
    $(nested).find('.nested-add-button').click(nestedButtonClick);
  };

  $('.nested-form .nested-remove-button').hide();

  $('.nested-form .nested-add-button').each(function(){
    $(this).click(nestedButtonClick);
    this.closest('.nested-form').clonnedNested = $(this.closest(".nested")).clone();
  });

});
