<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main2">
        
        
        <script>
            $(document).ready(function(){
            
            
                
                getProduct()
            
            });
           
            </script>
    </head>
    <body>
        <!-- Category Area -->
        <section class="category">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="category-box">
                            <div class="sec-title">
                                <h6>Categories</h6>
                            </div>
                            
                            
                            
                            <div class="card">
                                
                                        <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                    
                                            <div class="card-header">
                                                <a href="${createLink(controller:'genEcom', action:'category',params:["typData":tmpInvCatgryMastr?.catgryName])}">
                                                    <span>${tmpInvCatgryMastr?.catgryName}</span>
                                                   
                                                </a>
                                            </div>    

                                     </g:each>
                                </div>
                              
                            <!-- accordion -->
                           
                        </div>
                        <div class="cat-brand">
                            <div class="sec-title">
                                <h6>Brands</h6>
                            </div>
                            <div class="brand-box">
                                <ul class="list-unstyled">
                                    
                                      <g:each status="i" var="tmpinvBarndMastr" in="${inv.det.InvBarndMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                     
                                         <li><a href="${createLink(controller:'genEcom', action:'category',params:["typData":tmpinvBarndMastr?.brandName])}"><label for="${tmpinvBarndMastr?.brandName}">${tmpinvBarndMastr?.brandName}</label> </a></li>
                                   
                                     </g:each>
                                         
                                    
                                </ul>
                            </div>
                        </div>
<!--                        <div class="price-range">
                            <div class="sec-title">
                                <h6>Price</h6>
                            </div>
                            <div class="price-filter">
    							<div id="slider-range"></div>
    							<input type="text" id="amount" readonly>
                                <button type="button" name="button">Filter</button>
						    </div>
                        </div>-->
<!--                        <div class="color">
                            <div class="sec-title">
                                <h6>Color</h6>
                            </div>
                            <ul class="list-unstyled color-box">
                                <li><input type="checkbox" id="red" name="name"><label for="red"><span style="background: red;"></span>Red</label></li>
                                <li><input type="checkbox" id="green" name="name"><label for="green"><span style="background: green;"></span>Green</label></li>
                                <li><input type="checkbox" id="blue" name="name"><label for="blue"><span style="background: blue;"></span>Blue</label></li>
                                <li><input type="checkbox" id="gold" name="name"><label for="gold"><span style="background: gold;"></span>Golden</label></li>
                                <li><input type="checkbox" id="brown" name="name"><label for="brown"><span style="background: brown;"></span>Brown</label></li>
                                <li><input type="checkbox" id="black" name="name"><label for="black"><span style="background: black;"></span>Black</label></li>
                            </ul>
                        </div>-->
                        <div class="pro-tag">
                            <div class="sec-title">
                                <h6>Product Tag</h6>
                            </div>
                            <div class="tag-box">
                                
                                     <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                     <a href="${createLink(controller:'genEcom', action:'category' ,params:["typData":tmpInvCatgryMastr?.catgryName])}">${tmpInvCatgryMastr?.catgryName}</a>                                           
                                     </g:each>
                            </div>
                        </div>
                        <div class="add-box">
                            <a href="#"><img src="images/s-banner2.jpg" alt="" class="img-fluid"></a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        
                        <div id="prodctDiv">
                         <g:render template="/genEcom/product"/>
                         </div>
                        
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
