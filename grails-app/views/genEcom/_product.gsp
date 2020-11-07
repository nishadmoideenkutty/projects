<script src="${assetPath(src: 'pagination.js')}"></script>

<script>

    
     $(document).ready(function(){
            
             $("#typData").val("")
             $("#typData1").val("")
               loadItmSingle();
            
            


            });
            


</script>

<div class="product-box" >
                            <div class="cat-box d-flex justify-content-between">
                                <!-- Nav tabs -->
                                <div class="view">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#grid"><i class="fa fa-th-large"></i></a>
                                        </li>
<!--                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#list"><i class="fa fa-th-list"></i></a>
                                        </li>-->
                                    </ul>
                                </div>
                                <div class="sortby">
                                    <span>Sort By</span>
                                    <select class="sort-box">
                                        <option>Name</option>
                                        <option>Position</option>                                       
                                        <option>Price</option>
                                        <option>Rating</option>
                                    </select>
                                </div>
                                <div class="show-item">
                                    <span>Show</span>
                                    <select class="show-box">
                                        <option>12</option>
                                        <option>24</option>
                                        <option>36</option>
                                    </select>
                                </div>
                               
                                
                            </div>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="grid" role="tabpanel">
                                    <div class="row">
                                        
                                        
                                        <g:each status="i" var="tmpVItmFullDtls" in="${result}">
                                          
                                                
                                        <div class="col-lg-4 col-md-6">
                                            <div class="tab-item singleCls" id="itms_${tmpVItmFullDtls?.itmId}" >
                                                <div class="tab-img">
                                                    <img class="main-img img-fluid" src="${createLink(controller:'GenEcom', action:'itmImg',params:['id':tmpVItmFullDtls.itmId.toInteger()])}" alt="" >
                                                    <img class="sec-img img-fluid" src="${createLink(controller:'GenEcom', action:'itmImg',params:['id':tmpVItmFullDtls.itmId.toInteger()])}" alt="" >
                                                    <div class="layer-box">
                                                        <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="${resource(dir: 'images', file: 'it-comp.png')}" alt=""></a>
                                                    <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="${resource(dir: 'images', file: 'it-fav.png')}" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="tab-heading">
                                                    <p><a href="#">${tmpVItmFullDtls?.itmName}</a></p>
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
                                                            <li class="list-inline-item">${tmpVItmFullDtls?.opRate}</li>
                                                            <li class="list-inline-item">${tmpVItmFullDtls?.mrp}</li>
                                                        </ul>
                                                    </div>
                                                    <div>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="${resource(dir: 'images', file: 'it-cart.png')}" alt=""></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       
                                        
                                        
                                        </g:each>
                                        
                                        
                                        
                                       
                                    </div>
                                </div>
                               
                            </div>
                            
                            
                            
<!--                                     <div id="pageinate">
                                     
                                     
                                     
                                     </div>-->
<!-- <nav aria-label="..." class="text-center">

</nav>-->
<!--                            <div class="pagination-box text-center">
                                <ul class="list-unstyled list-inline">
                                    <li class="list-inline-item"><a href="#">1</a></li>
                                    <li class="list-inline-item"><a href="#">2</a></li>
                                    <li class="active list-inline-item"><a href="#">3</a></li>
                                    <li class="list-inline-item"><a href="#">4</a></li>
                                    <li class="list-inline-item"><a href="#">...</a></li>
                                    <li class="list-inline-item"><a href="#">12</a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                                </ul>
                            </div>-->
                                     
                                     
                                     <nav aria-label="Page navigation example">
                                            <ul class="pagination">
                                              <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Previous" onclick="minusPage()" onkeypress="minusPage()">
                                                  <span aria-hidden="true">&laquo;</span>
                                                  <span class="sr-only">Previous</span>
                                                </a>
                                              </li>
                                              <li class="page-item"><a class="page-link" href="#" id="pageId">${pag?pag:1}</a></li>
                                                                                         
                                              <li class="page-item">
                                                  <a class="page-link" href="#" aria-label="Next" onclick="plusPage()" onkeypress="plusPage()">
                                                  <span aria-hidden="true">&raquo;</span>
                                                  <span class="sr-only">Next</span>
                                                </a>
                                              </li>
                                            </ul>
                                  </nav>
                        </div>
                        
                        <script>
                            
                            function plusPage()
                            {
                             
                               var tot= parseInt(${itmCount}/12)
                              var no= parseInt( $("#pageId").text() )
                            
                              if(tot<=0)
                              {
                               $("#pageId").empty()
                               $("#pageId").text(no)
                              }else{
                              no++;  
                              $("#pageId").empty()
                              $("#pageId").text(no)
                                getProduct()
                             
                              }
                             
                            }
                            function minusPage()
                            {
                           
                              var no= parseInt( $("#pageId").text() )
                              no--;  
                              if(no<=0)
                              {
                               $("#pageId").empty()
                               $("#pageId").text(1)
                              }
                              else{
                              $("#pageId").empty()
                              $("#pageId").text(no)
                               getProduct()
                              }
                              
                            }
                        </script>
                        