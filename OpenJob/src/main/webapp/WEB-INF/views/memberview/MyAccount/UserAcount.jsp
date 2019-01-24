<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    




<html>


<head>


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script data-turbolinks-track="true" src="https://jpassets.jobplanet.co.kr/assets/desktop_ko-c460c7b04b7a74de21da92c911d4cc9e3d889f312e1a211e184076212d22c3a1.js"></script>
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-bf2fe9f55ada3b96ff93fe40c25b3970fb9fc3bd2fc5ad76639215282b43c0b3.css" media="all" rel="stylesheet" />
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-a2b99e9e6b29f675dfbb4cdf82ed1c871b26870560b4ce4ce50c79a304bcc493.css" media="all" rel="stylesheet" />

<style>
div.w3-container {
  width: 350px;
  height: 150px;
  margin: 30px auto;
}
</style>


</head>








<body >

<div style="font-size: 16;"><%@include file="/WEB-INF/views/common/menubar.jsp" %></div>




<form>

<!-- myPageInfo { -->
<div id="myPageInfoWrap" style=" height: 100px; margin-top: 57px;">
    <div id="myPageInfo">
        <span class="ico_me_l"></span>
        <div class="my_info">
            <h1 class="my_name notranslate" style="font-size: 28; margin-top: 10px;">${userAcount.email}</h1>
        </div>
    </div>
</div>
<!-- } myPageInfo -->



<!-- myPageMenu { -->
<div id="myPageMenuWrap">
    <div id="myPageMenu">
        <div class="mypagemenu_wrap">
            <div class="table_row_div">
                <!-- 내 정보 -->
                
                <a href="${home }/UserAcount" class="tab_box_a mypage_info_list myPageMyInformationMyAccount" style="background-color: #48c454;">
                    <span  class="info tit" style="font-size:15px; font-weight:bold; color: white;">
                        계정
                    </span>
                </a>
                
                <!-- //내 정보 -->

				
                <!-- 팔로잉 -->
                <a href="${home }/Favorites" class="tab_box_a mypage_info_list myPageMyFollowing">
                    <span  class="following tit" style="font-size:15px;">
                        관심정보
                    </span>
                </a>
                <!-- //팔로잉 -->
				
				

                <!-- 저장 된 채용 정보 -->
                  <a href="${home }/SaveJobs" class="tab_box_a mypage_info_list myPageMyJob">
                    <span class="job tit" style="font-size:15px;">
                        저장된 채용
                    </span>
                  </a>
                <!--// 저장 된 채용 정보 -->


            </div>
        </div>
    </div>
</div>
<!-- } myPageMenu -->





<div id="contents_wrap">
    <div id="contents" class="jpcont_col2_c">
        
        <div id="sideContents" class="jpcont_lft">
            <div class="jpcont_wrap">
    <div id="myPageMyInformationMenu" class="mypage_menu">
        <nav id="profile-left-menu">
            <h2>계정</h2>
            <ul>
                <li class="active">
                    <a href="${home }/UserAcount">
                        <span class="txt">나의 계정</span>
                        <span class="num notranslate"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${home }/PaswordChange">
                        <span class="txt">비밀번호 변경</span>
                        <span class="num notranslate"></span>
                    </a>
                </li>
               
               
                <li class="">
                  <a href="${home }/MemberOut">
                    <span class="txt">회원탈퇴</span>
                    <span class="num notranslate"></span>
                  </a>
                </li>
				
            </ul>
        </nav>
    </div>
</div>

</div>
        
        
        

        <div id="mainContents" class="jpcont_rgt">
            <div class="jpcont_wrap">
  <div class="layout_my_account myaccountcon">
    <div class="section_group">
    <div>&nbsp</div>
      <h3 class="" style="font-size: 22; margin-left: 25; margin-top: 10; font-weight: bold;">나의 계정</h3>
	  <hr style="border-top: 1px solid #b9b9b9;">
	  
        <div class="my_information_group" style="height: 280px">
          
            <h3 style="font-size: 18; margin-bottom: 25"> 기본정보</h3>
           
            
            
            
<div class="w3-container" align="center" style="margin-left: 120; margin-top: 50px;">
<table class="w3-table-all" style="width: 400px; height: 170px;">

	<tr>
		<td style="font-size: 15; font-weight: bold;">회원번호</td>
		<td style="font-size: 15; ">${userAcount.memberno}</td>
	</tr>
	
	<tr>
		<td style="font-size: 15; font-weight: bold;">성별</td>
		<td style="font-size: 15; ">${userAcount.gender}</td>
	</tr>
	
	<tr>
		<td style="font-size: 15; font-weight: bold;">나이</td>
		<td style="font-size: 15; ">${userAcount.age }</td>
	</tr>
	
	<tr>
		<td style="font-size: 15; font-weight: bold;">경력</td>
		<td style="font-size: 15; ">${userAcount.career }</td>
	</tr>
	
</table>
</div>
            
 
</div>



</div>



</div>     
</div>        
</div> 






      
</div>
</div>

</form>

</body>




</html>