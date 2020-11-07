package cmn.det
import java.lang.*;
import groovy.sql.Sql;



class CmnCommonTagLib {
    //static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    
     def dataSource
  
    
     def menutag={attrs,body->
//      request.cookies.each { println "${it.name} == ${it.value}" } 
        def usrId=request.getCookie('ajx_ui');     
        if(!usrId)
        usrId= session?.userId
        def menuHtml=""
            
      
        if(usrId)
        {
         def objUsr = CmnUsrMastr.get(usrId) 
         
      
        
        if(objUsr)
        {
        def sql = new Sql(dataSource)   
        def rows = sql.rows(""" CALL cmnroledtls(${objUsr?.id}) """)   
     
        def grpIds=[]
        def modlIds=[]
        rows.each()
        {
            obj->
               
                grpIds.add(obj[1])
        }
        grpIds=grpIds.unique().sort();
        
        rows.each()
        {
            obj->
                modlIds.add(obj[2])
        }
        modlIds=modlIds.unique().sort();
       
         
        
        modlIds.each()
        {
            modl->
              
                
              
              def objModl=CmnModlMastr.get(modl.toLong())
                if(objModl)
                {
                    
                                                 
               menuHtml=menuHtml+ '<li class="nav-item has-treeview" id="modl_'+objModl?.id+'" ><a class="nav-link" href="#"><i class="nav-icon far fa-circle text-danger"></i><p>'+objModl?.modlName+' <i class="right fas fa-angle-left"></i></p></a>'  
               menuHtml=menuHtml+'<ul class="nav nav-treeview">'
                grpIds.each()
                    {
                      grp->
                    
                      def objGrp=CmnMenuGrpMastr.get(grp.toLong())
                      
                      if(objGrp.modl.id==modl)
                      {
                          
                           
                              menuHtml=menuHtml+'<li id="grp_'+objGrp?.id+'" class="nav-item"><a class="nav-link" href="#"><i class="far fa-circle nav-icon text-yellow"></i><p>'+objGrp?.menuGrpName+'<i class="right fas fa-angle-left"></i></p></a>'  
                              menuHtml=menuHtml+'<ul class="nav nav-treeview">' 
                              
                                                                
                          rows.each()
                          {
                              obj->
                              if(obj[1]==grp && obj[2]==modl )
                              {                                                                                                 
                                 menuHtml=menuHtml+'<li class="nav-item" id="li_'+obj[0]+'" ><a  id="'+obj[0]+'" class="nav-link" onclick="" href="'+ obj[6]+'"><i class="far fa-dot-circle nav-icon"></i><p>'+obj[3]+'</p></a></li>' 
                              }
                              
                              
                          }                        
                             menuHtml=menuHtml+'</ul></li>'                                                                                    
                    
                      }
                                                
                    }
               
              menuHtml=menuHtml+'</ul></li>'    
            
        }
        }   
            
             sql.close();
        }  
        }
        out<<menuHtml
    }
    
    
    def randomColor(){
        def colorList = ["bg-red", "bg-green", "bg-light-blue", "bg-aqua","bg-yellow","bg-gray","bg-navy","bg-teal","bg-purple","bg-orange","bg-maroon","bg-olive"]
            colorList.size().times {
            Collections.shuffle colorList                        
        }
        return colorList.first()
    }
    
   
    
    
           
              
        
              
}
