/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function number(e) {
	var i;
	document.all ? i = e.keyCode : i = e.which;    
       
        if (i == 0)
           {              
               $(this).next().focus();
               return true;
           }
      
	return (i >= 48 && i <= 57 || i == 8 );
}

function numberDecimal(e,a) {
	var i;
	document.all ? i = e.keyCode : i = e.which;    
        
        var str=a.value
        if(i==46)
            {
                
                  if(str.indexOf(".")>=0)
                      {
                          return false;
                      }
                
            }
            if(i==45)
            {
                
                  if(str.indexOf("-")>=0)
                      {
                          return false;
                      }
                
            }
      
        if (i == 0)
           {              
               $(this).next().focus();
               return true;
           }
      
	return (i >= 48 && i <= 57 || i == 8 || i==46 || i==45 || i==189);
}
 function alphaNumeric(e)
 {

	var k;
        document.all ? k = e.keyCode : k = e.which;         
         if (k == 0)
           {              
               $(this).next().focus();
               return true;
           }
          

	return ((k > 64 && k < 91) || (k > 96 && k < 123) || k==32||  k==8 || (k >= 48 &&  k<= 57));
 }
 
 

function alpha(e) {
      
      
	var k;
        document.all ? k = e.keyCode : k = e.which;         
         if (k == 0)
           {              
               $(this).next().focus();
               return true;
           }
          

	return ((k > 64 && k < 91) || (k > 96 && k < 123) || k==32||  k==8);
}

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}

function isWebsite(web)
{
    var re = /^(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/;
    return re.test(web); 
}

function intNum(e) {
	var i;
	document.all ? i = e.keyCode : i = e.which;    
        
        if (i == 0)
           {              
               $(this).next().focus();
               return true;
           }
      
	return (i >= 48 && i <= 57 || i == 8 || i==0 );
}

function opertr(e) {
      
      
        var i;
	document.all ? i = e.keyCode : i = e.which;      
        if (i == 0)
           {              
               $(this).next().focus();
               return true;
           }
           
	return (i == 40 || i == 41 || i == 42 || i== 43 || i == 45 || i == 47 || i == 8 || i >= 48 && i <= 57 || i== 46);
}

function upper(e) {                                 
	e.val( e.toUpperCase());
}


 function extractId(e)
    {
            var curId=e
            var n = curId.lastIndexOf("_");       
            var res = curId.substring(n+1,curId.length); 
            return res;
    }




