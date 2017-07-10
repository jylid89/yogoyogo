<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% String mem_state = (String)session.getAttribute("mem_state");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/YogoYogo/css/register/register.css" />
<script type="text/javascript">
	$(function(){
		
		$("#passComfirm").click(function(){
			
			if($("#mem_pass").val() == null){
				alert("패스워드를 입력하여 주세요.");
				return;
			}else{
				
			
			
			$.ajax({
				url : "passCheck.do",
				type : "post",
				data : {"mem_pass" : $("#mem_pass").val()},
				success : function(data) {
						
						if(data == "0"){
							alert("비밀번호를 확인해주세요");
							return;
						}else{
							alert("확인 되셨습니다.");
							if($("#memState").val() == "사업자"){
								$("#passCheckForm").attr("action" , "selectCeoMember.do").submit();
							}else{
								$("#passCheckForm").attr("action" , "selectMember.do").submit();
							}
						}	
					}
				});
			}
		});
			
		
	});

</script>
</head>
<body>
	<div class="container">
	<div class="row">
    <div class="col-md-8">
    <br/><br/><br/>
        <h1 class="entry-title"><span>비밀번호 확인</span> </h1>
        <h4>비밀번호를 한번더 입력하여 주세요.</h4>
        <br/>
        <hr>
            <form class="form-horizontal" method="post"  id="passCheckForm">        
	
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 : <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
              <input type="password" class="form-control" name="mem_pass" id="mem_pass"  value="">
          </div>
          <div class="passCheck1"></div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input type="button" value="확인" class="btn btn-primary" id="passComfirm">
            <input type="hidden" value="<%=mem_state%>" name="mem_state" id="memState"/>
            <br/><br/><br/><br/><br/>
          </div>
        </div>
    
      </form>
    </div>
</div>
</div>

</body>
</html>