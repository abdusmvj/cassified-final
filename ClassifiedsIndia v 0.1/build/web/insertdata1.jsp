<html>
    <head>
        <style type="text/css">

dl {
  font:normal 12px/15px Arial;
  width: 350px;
}
dt {
  clear: both;
  float:left;
  width: 130px;
  padding: 4px 0 2px 0;
  text-align: left;
}
dd {
  float: left;
  width: 200px;
  margin: 0 0 8px 0;
  padding-left: 6px;
  position: relative;
}
.hint {
  display:none;
  position: absolute;
  right: -250px;
  width: 200px;
  margin-top: -4px;
  border: 1px solid #c93;
  padding: 10px 12px;
  background: #ffc url(pointer.GIF) -100px -100px no-repeat;
}
.hint.hint-pointer {
    position: absolute;
    left: -10px;
    top: 5px;
    width: 10px;
    height: 19px;
    background: url(pointer.GIF) left top no-repeat;
}
 </style>

 <script type="text/javascript">
 function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      oldonload();
      func();
    }
  }
}

function prepareInputsForHints() {
  var inputs = document.getElementsByTagName("input");
  for (var i=0; i<inputs.length; i++){
    inputs[i].onfocus = function () {
      this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
    }
    inputs[i].onblur = function () {
      this.parentNode.getElementsByTagName("span")[0].style.display = "none";
    }
  }
  var inputs = document.getElementsByTagName("input");
  for (var i=0; i<inputs.length; i++){
    inputs[i].onfocus = function () {
      this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
    }
    inputs[i].onblur = function () {
      this.parentNode.getElementsByTagName("span")[0].style.display = "none";
    }
  }
  var selects = document.getElementsByTagName("select");
  for (var k=0; k<selects.length; k++){
    selects[k].onfocus = function () {
      this.parentNode.getElementsByTagName("span")[0].style.display = "inline";
    }
    selects[k].onblur = function () {
      this.parentNode.getElementsByTagName("span")[0].style.display = "none";
    }
  }
}
addLoadEvent(prepareInputsForHints);
  </script>
  </head>



    


</html>