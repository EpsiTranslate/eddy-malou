'use strict';

var dictionary = require('./dictionary');

function replaceTextOnPage(obj){
  getAllTextNodes().forEach(function(node){
    for (var x in obj) {
      node.nodeValue = node.nodeValue.replace(new RegExp(quote(x), 'g'), obj[x]);
    }
  });
  function getAllTextNodes(){
    var result = [];
    (function scanSubTree(node){
      if(node.childNodes.length)
        for(var i = 0; i < node.childNodes.length; i++)
          scanSubTree(node.childNodes[i]);
      else if(node.nodeType == Node.TEXT_NODE)
        result.push(node);
    })(document);
    return result;
  }
  function quote(str){
    return (str+'').replace(/([.?*+^$[\]\\(){}|-])/g, "\\$1");
  }
}

replaceTextOnPage(dictionary);
