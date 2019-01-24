<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/menubar.jsp"%>
<head>
<title>[채용]${post.title }</title>
<style>
span.head {
	font-size: 23px;
	border-bottom: 2px green solid;
}
</style>
</head>
<c:if test="${post eq null}">
	<c:redirect url="/companyhome"/>
</c:if>
<c:import url="/company/frag_companytop">
	<c:param name="companyno" value="${companyno }" />
</c:import>
<div style="background-color: #e6e6e6;">
	<div class="row">
		<div class="col-xl-2"></div>
		<div class="col-xl-8">
			<div class="row" style="padding: 15px;">
				<!-- LEFT -->
				<div class="col-xl-8">
					<div style="padding-bottom: 15px;">
						<span
							style="background-color: white; padding: 7px; font-size: 14px; margin-right: 5px;">${post.jobcategory }</span>
						<span
							style="background-color: white; padding: 7px; font-size: 14px; margin-right: 5px;">${post.subjobcategory }</span>
						<span
							style="background-color: white; padding: 7px; font-size: 14px; margin-right: 5px;">${post.employtype }</span>
						<span
							style="background-color: white; padding: 7px; font-size: 14px; margin-right: 5px;">${post.location }</span>
					</div>
					<div
						style="background-color: #ffffff; margin-bottom: 15px; padding: 20px;"
						align="left">
						<span class="head">기업소개</span><br> ${post.companyintro }<br> <br> 
						<span class="head">주요업무</span><br> <pre style="white-space: pre-wrap;">${post.mainduty }</pre><br> <br> 
						<span class="head">지원자격</span><br> <pre style="white-space: pre-wrap;">${post.requirement }</pre><br> <br> 
						<span class="head">채용절차</span><br> <pre style="white-space: pre-wrap;">${post.process }</pre><br> <br>
						<span class="head">문의처</span><br>
						<div class="row" style="padding:5 15px;" >
						<div class="col-xl-3" style="padding:5px; height: 75px;"><div style="background-color: gray; color:white; width: 100%; height: 100%; padding:5px;"><span style="font-weight: bold; color:lightgreen">담당자</span><br>${post.personcharged }</div></div>
						<div class="col-xl-6" style="padding:5px; height: 75px;"><div style="background-color: gray; color:white; width: 100%; height: 100%; padding:5px;"><span style="font-weight: bold; color:lightgreen">담당자 이메일</span><br>${post.emailcharged }</div></div>
						<div class="col-xl-3" style="padding:5px; height: 75px;"><div style="background-color: gray; color:white; width: 100%; height: 100%; padding:5px;"><span style="font-weight: bold; color:lightgreen">전화번호</span><br>${post.phonecharged }</div></div>
						</div>
						<span class="head">상세정보</span><br>
						<div class="row" style="padding:0 15px;">
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">최종 학력</span>
								</div>
								<div class="row" style="margin-bottom: 5px;">${post.educationrecord }</div>
							</div>
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">급여</span>
								</div>
								<div class="row">${post.salary }</div>
							</div>
						</div>
						<div class="row" style="padding:5 15px;">
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">직급</span>
								</div>
								<div class="row" style="margin-bottom: 5px;">${post.position }</div>
							</div>
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">직책</span>
								</div>
								<div class="row">${post.duty }</div>
							</div>
						</div>
						<div class="row" style="padding:5 15px;">
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">경력</span>
								</div>
								<div class="row">${post.career }</div>
							</div>
						</div>
					</div>
					<div
						style="background-color: #ffffff; margin-bottom: 15px; padding: 5px;"
						align="center">
						<div style="text-align: left; padding-left:15px;"><span class="head">기업정보</span></div>
						<div class="row" style="margin: 15px;">
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">웹사이트</span>
								</div>
								<div class="row" style="margin-bottom: 5px;">${companyInfo.website }</div>
							</div>
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">본사</span>
								</div>
								<div class="row">${companyInfo.address }</div>
							</div>
						</div>
						<div class="row" style="margin: 15px;">
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">사원수</span>
								</div>
								<div class="row" style="margin-bottom: 5px;">${companyInfo.employeenum }명</div>
							</div>
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">설립일</span>
								</div>
								<div class="row">${companyInfo.founddate }</div>
							</div>
						</div>
						<div class="row" style="margin: 15px;">
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">기업형태</span>
								</div>
								<div class="row" style="margin-bottom: 5px;">${companyInfo.type }</div>
							</div>
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">매출액</span>
								</div>
								<div class="row">${companyInfo.sales }원</div>
							</div>
						</div>
						<div class="row" style="margin: 15px;">
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">산업군</span>
								</div>
								<div class="row" style="margin-bottom: 5px;">${companyInfo.industry }</div>
							</div>
							<div class="col-xl-6">
								<div class="row">
									<span style="font-weight: bold">대표</span>
								</div>
								<div class="row">${companyInfo.ceo }</div>
							</div>
						</div>
					</div>
				</div>
				<!-- RIGHT -->
				<div class="col-xl-4" align="center" style="padding-right: 0px;">
					<img src="${home }/imgs/AD5.png"
						style="width: 100%; min-width: 145px; max-width: 320px;">
				</div>
			</div>
			<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf"%>