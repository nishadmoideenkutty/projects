    <%@ page import="inv.det.InvItmMastr" %>

<html>
    <head>
        <meta name="layout" content="main2">
        
        
        <script>
            $(document).ready(function(){
         });
           
            </script>
            
    </head>
    <body>
         <!-- Single Product Area -->
        <section class="sg-product">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="sg-img">
                                    <!-- Tab panes -->
                                    <div class="tab-content">
    
                                    <g:each status="i" var="tmpPrdInvItmImg" in="${inv.det.InvItmImg.findAllByItm(inv.det.InvItmMastr.get(vItmFullDtlsInstance?.itmId))}">

                                        <g:if test="${tmpPrdInvItmImg?.statsFlg=='M'}">
                                           <div class="tab-pane fade show active" id="itmimg_${tmpPrdInvItmImg?.id}" role="tabpanel">
                                           <img src="${createLink(controller:'GenEcom', action:'itmImgShow',params:['id':tmpPrdInvItmImg.id.toInteger()])}" alt="" class="img-fluid">
                                           </div>
                                        </g:if>
                                        <g:else>
                                             <div class="tab-pane" id="itmimg_${tmpPrdInvItmImg?.id}" role="tabpanel">
                                             <img src="${createLink(controller:'GenEcom', action:'itmImgShow',params:['id':tmpPrdInvItmImg.id.toInteger()])}" alt="" class="img-fluid">
                                             </div>
                                        </g:else>
    
                                    </g:each>
    
                                       
    
                                        
                                    </div>
                                    <div class="nav d-flex justify-content-between">
    
                                    <g:each status="i" var="tmpPrdInvItmImg1" in="${inv.det.InvItmImg.findAllByItm(inv.det.InvItmMastr.get(vItmFullDtlsInstance?.itmId))}">

                                        <g:if test="${tmpPrdInvItmImg?.statsFlg=='M'}"> 
                                        <a class="nav-item nav-link active" data-toggle="tab" href="#itmimg_${tmpPrdInvItmImg1?.id}"><img src="${createLink(controller:'GenEcom', action:'itmImgShow',params:['id':tmpPrdInvItmImg1.id.toInteger()])}" alt=""></a>
                                        </g:if>
                                        <g:else>                                            
                                        <a class="nav-item nav-link" data-toggle="tab" href="#itmimg_${tmpPrdInvItmImg1?.id}"><img src="${createLink(controller:'GenEcom', action:'itmImgShow',params:['id':tmpPrdInvItmImg1.id.toInteger()])}" alt=""></a>
                                        </g:else>
    
                                    </g:each>                                             
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="sg-content">
                                    <div class="pro-tag">
                                        <ul class="list-unstyled list-inline">
                                            <li class="list-inline-item"><a href="#">${vItmFullDtlsInstance?.catgryName}</a></li>
                                            <li class="list-inline-item"><a href="#">${vItmFullDtlsInstance?.brandName}</a></li>
                                        </ul>
                                    </div>
                                     <div class="pro-name">
                                         <p>${vItmFullDtlsInstance?.itmName}</p>
                                     </div>
                                     <div class="pro-rating">
                                         <ul class="list-unstyled list-inline">
                                             <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                             <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                             <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                             <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                             <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
<!--                                             <li class="list-inline-item"><a href="#">( 09 Review )</a></li>-->
                                         </ul>
                                     </div>
                                     <div class="pro-price">
                                         <ul class="list-unstyled list-inline">
                                             <li class="list-inline-item">${vItmFullDtlsInstance?.opRate}</li>
                                             <li class="list-inline-item">${vItmFullDtlsInstance?.mrp}</li>
                                         </ul>
                                         <p>Availability : <span>In Stock</span> <label></label></p>
                                     </div>
                                     <div class="colo-siz">
<!--                                         <div class="color">
                                             <ul class="list-unstyled list-inline">
                                                 <li>Color :</li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="color-1" name="color" value="color-1">
                                                     <label for="color-1"><span><i class="fa fa-check"></i></span></label>
                                                 </li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="color-2" name="color" value="color-2">
                                                     <label for="color-2"><span><i class="fa fa-check"></i></span></label>
                                                 </li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="color-3" name="color" value="color-3">
                                                     <label for="color-3"><span><i class="fa fa-check"></i></span></label>
                                                 </li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="color-4" name="color" value="color-4">
                                                     <label for="color-4"><span><i class="fa fa-check"></i></span></label>
                                                 </li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="color-5" name="color" value="color-5">
                                                     <label for="color-5"><span><i class="fa fa-check"></i></span></label>
                                                 </li>
                                             </ul>
                                         </div>-->
<!--                                         <div class="size">
                                             <ul class="list-unstyled list-inline">
                                                 <li>Size :</li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="size-1" name="size" value="size-1">
                                                     <label for="size-1">S</label>
                                                 </li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="size-2" name="size" value="size-2">
                                                     <label for="size-2">M</label>
                                                 </li>
                                                 <li class="list-inline-item">
                                                     <input type="radio" id="size-3" name="size" value="size-3">
                                                     <label for="size-3">L</label>
                                                 </li>
                                             </ul>
                                         </div>-->
                                         <div class="qty-box">
                                             <ul class="list-unstyled list-inline">
                                                 <li class="list-inline-item">Qty :</li>
                                                 <li class="list-inline-item quantity buttons_added">
                                                     <input type="button" value="-" class="minus">
                                                     <input type="number" step="1" min="1" max="10" value="1" class="qty text" size="4" readonly>
                                                     <input type="button" value="+" class="plus">
                                                 </li>
                                             </ul>
                                         </div>
                                         <div class="pro-btns">
                                              <a href="#" class="cart">Add To Cart</a>
                                              <a href="#" class="fav-com" data-toggle="tooltip" data-placement="top" title="Wishlist"><img src="${resource(dir: 'images', file: 'it-fav.png')}" alt=""></a>
                                              <a href="#" class="fav-com"  data-toggle="tooltip" data-placement="top" title="Compare"><img src="${resource(dir: 'images', file: 'it-comp.png')}" alt=""></a>
                                         </div>
                                     </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="sg-tab">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#pro-det">Product Details</a></li>
<!--                                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#rev">Reviews (03)</a></li>-->
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="pro-det" role="tabpanel">
                                            <p>${vItmFullDtlsInstance?.remark}.</p>
                                        </div>
<!--                                        <div class="tab-pane fade" id="rev" role="tabpanel">
                                            <div class="review-box d-flex">
                                                <div class="rv-img">
                                                    <img src="images/testimonial-1.jpg" alt="">
                                                </div>
                                                <div class="rv-content">
                                                    <h6>Michel Kolins <span>(Feb 10, 2020)</span></h6>
                                                    <ul class="list-unstyled list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    </ul>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos a deleniti dolorem architecto quae eligendi voluptatem omnis beatae at aut eveniet repellendus voluptas.</p>
                                                </div>
                                            </div>
                                            <div class="review-box d-flex">
                                                <div class="rv-img">
                                                    <img src="images/testimonial-2.jpg" alt="">
                                                </div>
                                                <div class="rv-content">
                                                    <h6>Jenus Doe <span>(Feb 10, 2020)</span></h6>
                                                    <ul class="list-unstyled list-inline">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    </ul>
                                                    <p>Consectetur adipisicing elit. Dignissimos a deleniti dolorem architecto quae eligendi voluptatem omnis beatae at aut eveniet repellendus voluptas.</p>
                                                </div>
                                            </div>
                                            <div class="review-form">
                                                <h6>Add Your Review</h6>
                                                <form action="#">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="star-rating">
                                                                <label>Your Rating*</label>
                                                                <span class="fa fa-star-o" data-rating="1"></span>
                                                                <span class="fa fa-star-o" data-rating="2"></span>
                                                                <span class="fa fa-star-o" data-rating="3"></span>
                                                                <span class="fa fa-star-o" data-rating="4"></span>
                                                                <span class="fa fa-star-o" data-rating="5"></span>
                                                                <input type="hidden" name="whatever1" class="rating-value" value="0">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>Your Name*</label>
                                                            <input type="text" name="name" required="">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label>Your Email*</label>
                                                            <input type="text" name="email" required="">
                                                        </div>
                                                        <div class="col-md-12">
                                                            <label>Your Review*</label>
                                                            <textarea required=""></textarea>
                                                            <button type="submit">Add Review</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="sim-pro">
                                    <div class="sec-title">
                                        <h5>Similar Product</h5>
                                    </div>
                                    <div class="sim-slider owl-carousel">
    
    
                                        <g:each status="i" var="tmpSimilar" in="${inv.det.VItmFullDtls.findAllByCatgryNameLike(vItmFullDtlsInstance?.catgryName)}">
  
                                        <div class="sim-item">
                                            <div class="sim-img">
                                                <img class="main-img img-fluid" src="${createLink(controller:'GenEcom', action:'itmImg',params:['id':tmpSimilar.itmId.toInteger()])}" alt="">
                                                <img class="sec-img img-fluid" src="${createLink(controller:'GenEcom', action:'itmImg',params:['id':tmpSimilar.itmId.toInteger()])}" alt="">
<!--                                                <div class="layer-box">
                                                    <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="${resource(dir: 'images', file: 'it-comp.png')}" alt=""></a>
                                                    <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="${resource(dir: 'images', file: 'it-fav.png')}" alt=""></a>
                                                </div>-->
                                            </div>
                                            <div class="sim-heading">
                                                <p><a href="#">${tmpSimilar?.itmName}</a></p>
                                            </div>
                                            <div class="img-content d-flex justify-content-between">
                                                <div>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">${tmpSimilar?.opRate}</li>
                                                        <li class="list-inline-item">${tmpSimilar?.itmName}</li>
                                                    </ul>
                                                </div>
                                                <div>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="${resource(dir: 'images', file: 'it-cart.png')}" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
    
    
                                        
                                        </g:each>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="category-box">
                            <div class="sec-title">
                                <h6>Categories</h6>
                            </div>
                            <!-- accordion -->
                             <div class="card">
                                
                                        <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                    
                                            <div class="card-header">
                                                <a href="${createLink(controller:'genEcom', action:'category',params:["typData":tmpInvCatgryMastr?.catgryName])}">
                                                    <span>${tmpInvCatgryMastr?.catgryName}</span>
                                                   
                                                </a>
                                            </div>    

                                     </g:each>
                                </div>
                              
                        </div>
<!--                        <div class="ht-offer">
                            <div class="sec-title">
                                <h6>Hot Offer</h6>
                            </div>
                            <div class="ht-body owl-carousel">
                                <div class="ht-item">
                                    <div class="ht-img">
                                        <a href="#"><img src="images/tab-15.png" alt="" class="img-fluid"></a>
                                        <span>- 59%</span>
                                        <ul class="list-unstyled list-inline counter-box">
                                            <li class="list-inline-item">185 <p>Days</p></li>
                                            <li class="list-inline-item">11 <p>Hrs</p></li>
                                            <li class="list-inline-item">39 <p>Mins</p></li>
                                            <li class="list-inline-item">51 <p>Sec</p></li>
                                        </ul>
                                    </div>
                                    <div class="ht-content">
                                        <p><a href="#">Items Title Name Enter Here</a></p>
                                        <ul class="list-unstyled list-inline fav">
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                        </ul>
                                        <ul class="list-unstyled list-inline price">
                                            <li class="list-inline-item">$120.00</li>
                                            <li class="list-inline-item">$150.00</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="ht-item">
                                    <div class="ht-img">
                                        <a href="#"><img src="images/tab-14.png" alt="" class="img-fluid"></a>
                                        <span>- 59%</span>
                                        <ul class="list-unstyled list-inline counter-box">
                                            <li class="list-inline-item">185 <p>Days</p></li>
                                            <li class="list-inline-item">11 <p>Hrs</p></li>
                                            <li class="list-inline-item">39 <p>Mins</p></li>
                                            <li class="list-inline-item">51 <p>Sec</p></li>
                                        </ul>
                                    </div>
                                    <div class="ht-content">
                                        <p><a href="#">Items Title Name Enter Here</a></p>
                                        <ul class="list-unstyled list-inline fav">
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                        </ul>
                                        <ul class="list-unstyled list-inline price">
                                            <li class="list-inline-item">$120.00</li>
                                            <li class="list-inline-item">$150.00</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <div class="add-box">
                            <a href="#"><img src="images/s-banner1.jpg" alt="" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
