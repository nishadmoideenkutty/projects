package cmn.det


import grails.transaction.Transactional


import org.hibernate.*
import javax.servlet.http.Cookie;
import com.htl.cmn.det.*;
import java.net.InetAddress;
import java.net.*;
import javax.script.*

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsWebRequest
import org.codehaus.groovy.grails.web.util.WebUtils


@Transactional
class GenCallService {

        def executorService 
      
 
    def serviceMethod() {

    }
    
    def getEmpIdGivenUsrId(def usrId)
    {
        def lst;
        String strQuery="SELECT emp_mastr_id,emp_name FROM v_usr_emp_data where usr_id=${usrId}"      
        CmnUsrMastr.withSession
        { session ->
            def query=session.createSQLQuery(strQuery)
            lst=query.list();

        }   
        println lst
        if(lst)
        return lst[0][0];
       
    }
    def tranCategoryLst(def mainCd)
    {
        def objCmnTranMaster = CmnTranMaster.findByDelFlgAndTranCd("N","${mainCd}")
        def lst=[];
        if(objCmnTranMaster?.tranCatId)
        {
            
            def values = objCmnTranMaster?.tranCatId.split(',')
          
            values.each(){
                obj->
                if(obj)
                {
                def objCat=CmnTranCatgryMastr.get(obj.toLong())
               
                lst << objCat
                }
                
            }
            
            
        }                
        def result=  lst?.collect {        
                     [ 
                        id:it.id,
                        typName:it.typName,  
                        typCd:it.typCd,                        
                        ]
                    } 
        
        return result
    }
    
    def tranCategoryRtnLst(def mainCd)
    {
        def lst;
        String strQuery="CALL tranCatgryRtnType('${mainCd}')"      
        CmnUsrMastr.withSession
        { session ->
            def query=session.createSQLQuery(strQuery)
            lst=query.list();

        }   
        def result=  lst?.collect {        
                     [ 
                        id:it[0],
                        typRtnName:it[1],  
                        typRtnCd:it[2],                        
                        ]
                    } 
        
        return result
    }
    
    def tranNumCatgryShow(def tranCatId,def branchId)
    {
//        println "tranCatId :: "+tranCatId
//         println "branchId :: "+branchId
         try{
        //def objInvTranCatgryMastr= com.htl.inv.det.InvTranCatgryMastr.get(tranCatId)
       //println "objInvTranCatgryMastr :: "+objInvTranCatgryMastr
        def strQry = "SELECT tran_id,no_prefix FROM cmn_tran_num_gen_mastr where tran_id='${tranCatId}' and del_flg='N' and stats_flg='A'"
        def lst
        CmnUsrMastr.withSession
        { session ->
            def query=session.createSQLQuery(strQry)
            lst=query.list();

        }
        def tranNo=tranNumGenerationShow(lst[0][1],branchId) 
         return tranNo
         }
         catch(Exception e)
         {
             println "ERROR --->> "+e
         }
    }
    
     def tranNumCatgrySave(def tranCatId,def branchId)
    {
//        println "tranCatId :: "+tranCatId
//         println "branchId :: "+branchId
           try{
//        def objInvTranCatgryMastr= com.htl.inv.det.InvTranCatgryMastr.get(tranCatId)
//        println "objInvTranCatgryMastr :: "+objInvTranCatgryMastr
        def strQry = "SELECT tran_id,no_prefix FROM cmn_tran_num_gen_mastr where tran_id='${tranCatId}' and del_flg='N' and stats_flg='A'"
        def lst
        CmnUsrMastr.withSession
        { session ->
            def query=session.createSQLQuery(strQry)
            lst=query.list();

        }
        def tranNo=tranNumGenerationSave(lst[0][1],branchId) 
         return tranNo
         
            }
         catch(Exception e)
         {
             println "ERROR --->> "+e
         }
    }
    
    def tranNumGenerationShow(def tranCd,def branch)
    {
								
        def lst;       
         if(!branch || branch == null || branch== "null")
         branch=""
         
        String strQuery="select funGenCodeNumGenShow('${tranCd}','${branch}') as a"
        println strQuery
        CmnUsrMastr.withSession
        { session ->
            def query=session.createSQLQuery(strQuery)
            lst=query.list();

        }
       
        return lst[0]
    }
    
    
    def tranNumGenerationSave(def tranCd,def branch)
    {
								
        def lst;       
        if(!branch || branch == null || branch== "null")
        branch=""
         
        String strQuery="select funGenCodeNumGenSave('${tranCd}','${branch}') as a"
         println strQuery
        CmnUsrMastr.withSession
        { session ->
            def query=session.createSQLQuery(strQuery)
            lst=query.list();

        }
//        println"lst--"+lst
        return lst[0]
    }
    
    
    
}
