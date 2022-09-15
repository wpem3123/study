<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br/>
	<form>
		<input id="id" type="hidden" value="${users.id}"/>
		<div class="mb-3 mt-3">
			<input type="text" class="form-control" placeholder="Enter title" value="제목입니다">
		</div>
		<div class="mb-3">
		
			<textarea class="form-control" rows="8" >내용입니다</textarea>
			<input id="email" type="email" class="form-control" placeholder="Enter email" value="">
		</div>
		<button type="btnUpdate" type="button" class="btn btn-primary">수정완료</button>
	</form>
</div>

<script>
	${"#btnUpdate"}.click(()=>{
		let data = {
				password: $("#password").val(),
				email: $("#email").val()};
		
				   $.ajax("/users/1",{
				         type: "POST",
				         dataType: "json",
				         data: JSON.stringify(data),
				         headers : {
				               "Content-Type" : "application/json; charset=utf-8"
				         }
				      }).done((res)=>{
				         if(res.code == 1){
				            
				            location.href = "/";
				         }else{
				        	 elert("로그인 실패,아이디 패스워드를 확인하세요");
				         }
				      });
		};
	});
</script>

<%@ include file="../layout/footer.jsp"%>

