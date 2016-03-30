<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<head>
    <script type="text/javascript">

function GetXmlHttpObject() {
    var isIE7 = navigator.userAgent.toLowerCase().indexOf('msie 7') != -1;
    var isIE6 = navigator.userAgent.toLowerCase().indexOf('msie 6') != -1;
    var xmlHttp;
	if (isIE7){
		 xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	else if(isIE6){
		 xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	else{
		 xmlHttp = new XMLHttpRequest();
	}
  return xmlHttp;
}

function fetchSubCategoryList(category){

        var cat = category.value;
       // alert(cat);
        var ajaxRequest = new GetXmlHttpObject();
	ajaxRequest.open('POST','AjaxServlet?service=RetreiveSubCategoryList',true);
	ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	ajaxRequest.onreadystatechange = function(){
            if (ajaxRequest.readyState == 4) {
               if (ajaxRequest.status == 200) {
                   var resultString =ajaxRequest.responseText;
                    if(resultString != ''){
                       var targetOptions =document.getElementsByName('classifiedSubCategory')[0].options;

	               if (targetOptions.length==1 && targetOptions.value!=""){
		               targetOptions.length = 0;
	              }
                       document.getElementById('classifiedSubCategory').innerHTML = "";
                       var resultStringSplitArr = new Array();
                       resultStringSplitArr = resultString.split('-');
                     //  alert(resultStringSplitArr);

                       for( var r = 0; r<resultStringSplitArr.length; r++){
                                   var resultStringArr = new Array();
                                       resultStringArr = resultStringSplitArr[r].split(',');
                                     //  alert(resultStringArr);
                                       for( var i = 0; i<resultStringArr.length-1; i++){

                                        targetOptions[r + 1] = new Option(resultStringArr[i+1], resultStringArr[i]);
                                       // alert(resultStringArr[i]);
                                       // alert(resultStringArr[i+1]);

                                      }
                       }
                   }
               }
            }
	}
	ajaxRequest.send("Category="+cat);

 }
</script>
</head>


        <html:form action="postcategory">
            <table align="center">
                <tr>
                    <td>Category:<font color='red'>* </font></td>
                    <td><html:select property="category" styleId="" onchange="fetchSubCategoryList(this)" >
                        <html:option value="">-: Select Option :- </html:option>
                        <html:option value="1" > Education</html:option>
                        <html:option value="2" > Computer</html:option>
                        <html:option value="3" > Business</html:option>
                        <html:option value="4" > Services</html:option>
                        <html:option value="5" > Matrimony</html:option>
                        <html:option value="6" > Property</html:option>
                        <html:option value="7" > Cultural</html:option>
                        <html:option value="8" > Office Assistant</html:option>

                    </html:select>
                        </td>
                </tr>
                <tr>
                    <td>Sub Category:<font color='red'>* </font></td>
                    <td><html:text property="subcategory" styleId="" /></td>
                </tr>

                <tr>
                    <td></td>
                    <td><html:submit/></td>
                </tr>

            </table>

        </html:form>