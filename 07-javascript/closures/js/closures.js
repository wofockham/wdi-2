
// Passing functions IN
var bros = "groucho harpo chico zeppo gummo".split(' ');

var each = function (array, fun) {
  for (var i = 0; i < array.length; i++) {
    fun( array[i] );
  }
};

each(bros, function (brother) {
  console.log(brother + ' Marx');
});

var tens = [10, 20, 30, 40];
each(tens, function (i) {
  console.log( i * i )
});

// Passing functions out
var add_n = function (n) {
  return function (x) {
    console.log('n still has a value', n)
    return x + n
  };
};

var add10 = add_n(10);
var add101 = add_n(101);

var li = function (content) {
  return "<li>" + content + "</li>";
};

var ul = function (content) {
  return "<ul>" + content + "</ul>";
};

var p = function (content) {
  return "<p>" + content + "</p>";
}

var tagger = function (tag) {
  return function (content) {
    return "<" + tag + ">" + content + "</" + tag + ">";
  }
}

var p = tagger('p');
var ul = tagger('ul');
var li = tagger('li');
