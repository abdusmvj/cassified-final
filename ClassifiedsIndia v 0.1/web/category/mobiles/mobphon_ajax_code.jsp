<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#title").attr("placeholder", "title for your Ad");
    });
</script>
<script>
    $(document).ready(function () {
        $("#price").attr("placeholder", "price");
    });
</script>
<script>
    $(document).ready(function () {
        $("#minexpr").attr("placeholder", "expected price");
    });
</script>
<script>
    $(document).ready(function () {
        $("#descrip").attr("placeholder", "description about your Ad");
    });
</script>

<script type="text/javascript">

    function GetXmlHttpObject() {
        var isIE7 = navigator.userAgent.toLowerCase().indexOf('msie 7') != -1;
        var isIE6 = navigator.userAgent.toLowerCase().indexOf('msie 6') != -1;
        var xmlHttp;
        if (isIE7) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if (isIE6) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else {
            xmlHttp = new XMLHttpRequest();
        }
        return xmlHttp;
    }

    function fetchMobiBrand() {
        //var brand = "nn";
        //alert(st);
        var ajaxRequest = new GetXmlHttpObject();
        ajaxRequest.open('POST', 'MobileBrandAjaxServlet?service=RetreiveBrandModelList', true);
        ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        ajaxRequest.onreadystatechange = function () {
            if (ajaxRequest.readyState == 4) {
                if (ajaxRequest.status == 200) {
                    var resultString = ajaxRequest.responseText;
                    if (resultString != '') {
                        var targetOptions = document.getElementsByName('mobibrand')[0].options;

                        if (targetOptions.length == 1 && targetOptions.value != "") {
                            targetOptions.length = 0;
                        }
                        document.getElementById('mobibrand').innerHTML = "";
                        var resultStringSplitArr = new Array();
                        resultStringSplitArr = resultString.split('#');
                        //alert(resultStringSplitArr);

                        for (var r = 0; r < resultStringSplitArr.length; r++) {
                            var resultStringArr = new Array();
                            resultStringArr = resultStringSplitArr[r].split('.');
                            //alert(resultStringArr);
                            for (var i = 0; i < resultStringArr.length - 1; i++) {

                                targetOptions[r + 1] = new Option(resultStringArr[i + 1], resultStringArr[i]);
                                //alert(resultStringArr[i]);
                                //alert(resultStringArr[i+1]);

                            }
                        }
                    }
                }
            }
        }
        //ajaxRequest.send("Category=" + brand);
ajaxRequest.send();
    }
</script>

<script type="text/javascript">

        function GetXmlHttpObject() {
            var isIE7 = navigator.userAgent.toLowerCase().indexOf('msie 7') != -1;
            var isIE6 = navigator.userAgent.toLowerCase().indexOf('msie 6') != -1;
            var xmlHttp;
            if (isIE7) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (isIE6) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else {
                xmlHttp = new XMLHttpRequest();
            }
            return xmlHttp;
        }

        function fetchMobiBrandList(brand) {
            var brand = brand.value;
             //alert(st);
            var ajaxRequest = new GetXmlHttpObject();
            ajaxRequest.open('POST', 'MobileBrandAjaxServlet?service=RetreiveModelList', true);
            ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            ajaxRequest.onreadystatechange = function () {
                if (ajaxRequest.readyState == 4) {
                    if (ajaxRequest.status == 200) {
                        var resultString = ajaxRequest.responseText;
                        if (resultString != '') {
                            var targetOptions = document.getElementsByName('mobimodel')[0].options;

                            if (targetOptions.length == 1 && targetOptions.value != "") {
                                targetOptions.length = 0;
                            }
                            document.getElementById('mobimodel').innerHTML = "";
                            var resultStringSplitArr = new Array();
                            resultStringSplitArr = resultString.split('#');
                              //alert(resultStringSplitArr);

                            for (var r = 0; r < resultStringSplitArr.length; r++) {
                                var resultStringArr = new Array();
                                resultStringArr = resultStringSplitArr[r].split('.');
                                  //alert(resultStringArr);
                                for (var i = 0; i < resultStringArr.length - 1; i++) {

                                    targetOptions[r + 1] = new Option(resultStringArr[i + 1], resultStringArr[i]);
                                     //alert(resultStringArr[i]);
                                     //alert(resultStringArr[i+1]);

                                }
                            }
                        }
                    }
                }
            }
            ajaxRequest.send("Category="+brand);

        }
    </script>
<script type="text/javascript">

    function GetXmlHttpObject() {
        var isIE7 = navigator.userAgent.toLowerCase().indexOf('msie 7') != -1;
        var isIE6 = navigator.userAgent.toLowerCase().indexOf('msie 6') != -1;
        var xmlHttp;
        if (isIE7) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if (isIE6) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else {
            xmlHttp = new XMLHttpRequest();
        }
        return xmlHttp;
    }

    function fetchMobiSimNoList() {
        //var brand = "nn";
        //alert(st);
        var ajaxRequest = new GetXmlHttpObject();
        ajaxRequest.open('POST', 'MobiSimNoServlet?service=RetreiveModelList', true);
        ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        ajaxRequest.onreadystatechange = function () {
            if (ajaxRequest.readyState == 4) {
                if (ajaxRequest.status == 200) {
                    var resultString = ajaxRequest.responseText;
                    if (resultString != '') {
                        var targetOptions = document.getElementsByName('mobisimNo')[0].options;

                        if (targetOptions.length == 1 && targetOptions.value != "") {
                            targetOptions.length = 0;
                        }
                        document.getElementById('mobisimNo').innerHTML = "";
                        var resultStringSplitArr = new Array();
                        resultStringSplitArr = resultString.split('#');
                        //alert(resultStringSplitArr);

                        for (var r = 0; r < resultStringSplitArr.length; r++) {
                            var resultStringArr = new Array();
                            resultStringArr = resultStringSplitArr[r].split('.');
                            //alert(resultStringArr);
                            for (var i = 0; i < resultStringArr.length - 1; i++) {

                                targetOptions[r + 1] = new Option(resultStringArr[i + 1], resultStringArr[i]);
                                //alert(resultStringArr[i]);
                                //alert(resultStringArr[i+1]);

                            }
                        }
                    }
                }
            }
        }
        //ajaxRequest.send("Category=" + brand);
ajaxRequest.send();
    }
</script>

<script type="text/javascript">

    function GetXmlHttpObject() {
        var isIE7 = navigator.userAgent.toLowerCase().indexOf('msie 7') != -1;
        var isIE6 = navigator.userAgent.toLowerCase().indexOf('msie 6') != -1;
        var xmlHttp;
        if (isIE7) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if (isIE6) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else {
            xmlHttp = new XMLHttpRequest();
        }
        return xmlHttp;
    }

    function fetchMobiOSList() {
        //var brand = "nn";
        //alert(st);
        var ajaxRequest = new GetXmlHttpObject();
        ajaxRequest.open('POST', 'MobiOSServlet?service=RetreiveModelList', true);
        ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        ajaxRequest.onreadystatechange = function () {
            if (ajaxRequest.readyState == 4) {
                if (ajaxRequest.status == 200) {
                    var resultString = ajaxRequest.responseText;
                    if (resultString != '') {
                        var targetOptions = document.getElementsByName('mobiOS')[0].options;

                        if (targetOptions.length == 1 && targetOptions.value != "") {
                            targetOptions.length = 0;
                        }
                        document.getElementById('mobiOS').innerHTML = "";
                        var resultStringSplitArr = new Array();
                        resultStringSplitArr = resultString.split('#');
                        //alert(resultStringSplitArr);

                        for (var r = 0; r < resultStringSplitArr.length; r++) {
                            var resultStringArr = new Array();
                            resultStringArr = resultStringSplitArr[r].split('.');
                            //alert(resultStringArr);
                            for (var i = 0; i < resultStringArr.length - 1; i++) {

                                targetOptions[r + 1] = new Option(resultStringArr[i + 1], resultStringArr[i]);
                                //alert(resultStringArr[i]);
                                //alert(resultStringArr[i+1]);

                            }
                        }
                    }
                }
            }
        }
        //ajaxRequest.send("Category=" + brand);
ajaxRequest.send();
    }
</script>