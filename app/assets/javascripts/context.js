var di = {
  put: function(label, element){
    if(!this['context'])
      this['context'] = {};

    this['context'][label] = element;
  },
  get: function(label){
    return this['context'][label];
  }
};

di.put('horarios', []);
