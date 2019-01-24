<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div style="background-color: #e6e6e6; padding-bottom: 20px;">
	<div class=row>
		<div class="col-xl-2"></div>
		<div class="col-xl-8"
			style="background-color: white; padding: 30px; min-width: 1100px;">

			<div class="searchWrap" style="padding-left: 10px; width: 1030px;">
				<%@include file="/WEB-INF/views/searchview/searchWrap_location.jsp"%>
				<%@include file="/WEB-INF/views/searchview/searchWrap_jobcategory.jsp"%>
				<%@include file="/WEB-INF/views/searchview/searchWrap_career.jsp"%>
				<%@include file="/WEB-INF/views/searchview/searchWrap_type.jsp"%>
				<%@include file="/WEB-INF/views/searchview/searchWrap_date.jsp"%>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {	
		//경력 체크박스
		$('.career_ul input[type=checkbox]').click(function() {
			var careId = $(this).attr("id");
			if ($(this).is(":checked")) {
				if ($(this).attr("id") == 'any') {
					$('.career_ul input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).attr("id") == 'new') {
					$('.career_ul input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else {
					$('.career_ul input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				}

				//스타일
				$('.career_ul span').css("border", "none");
				$('.career_ul span').css("font-weight", "normal");
				$('.career_ul span').css("color", "black");

				//스타일
				$('span[id=' + careId + ']').css("border", "1px solid #0099ff");
				$('span[id=' + careId + ']').css("border-radius", "12px");
				$('span[id=' + careId + ']').css("font-weight", "bold");
				$('span[id=' + careId + ']').css("color", "#0099ff");
			} else {
				$(this).prop("checked", false);

				//스타일
				$('span[id=' + careId + ']').css("border", "none");
				$('span[id=' + careId + ']').css("font-weight", "normal");
				$('span[id=' + careId + ']').css("color", "black");
			}
		});

		//기간 체크박스
		$('.dday_li input[type=checkbox]').click(function() {
			var ddayId = $(this).attr("id");
			if ($(this).is(":checked")) {
				if ($(this).val() == 'null') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '1') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '3') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '7') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '30') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				}

				//스타일
				$('.dday_li span').css("border", "none");
				$('.dday_li span').css("font-weight", "normal");
				$('.dday_li span').css("color", "black");

				//스타일
				$('span[id=' + ddayId + ']').css("border", "1px solid #0099ff");
				$('span[id=' + ddayId + ']').css("border-radius", "12px");
				$('span[id=' + ddayId + ']').css("font-weight", "bold");
				$('span[id=' + ddayId + ']').css("color", "#0099ff");
			} else {
				$(this).prop("checked", false);

				//스타일
				$('span[id=' + ddayId + ']').css("border", "none");
				$('span[id=' + ddayId + ']').css("font-weight", "normal");
				$('span[id=' + ddayId + ']').css("color", "black");
			}
		});

		//지역
		$('input:checkbox[name="locationBox"]').change(function() {
			var locaId = $(this).attr("id");
			//지역 상세보기 열기
			if ($(this).is(":checked")) {
				$(this).prop("checked", true);

				//새로운 지역 클릭시 다른창 닫기
				$('input:checkbox[name="locationBox"]').each(function() {
					var locaId = $(this).attr("id");
					$('.addDiv').css("display", "none");
				});

				$("#sub" + locaId).css("display", "block");

				//스타일
				$('span[id=' + locaId + ']').css("border", "1px solid #0099ff");
				$('span[id=' + locaId + ']').css("border-radius", "12px");
				$('span[id=' + locaId + ']').css("font-weight", "bold");
				$('span[id=' + locaId + ']').css("color", "#0099ff");

			} else {
				$(this).prop("checked", false);
				$("#sub" + locaId).css("display", "none");

				//창을 닫을때 모든값 체크해제
				$('input:checkbox[name="sublocationBox"]').each(function() {
					var subId = $(this).attr("id");

					if ($(this).is(':checked')) {
						if (locaId.length == 11) {
							if (subId.substring(3, 4) == locaId.substring(8, 9)) {
								$('button[id=' + subId + ']').remove();
								$(this).prop("checked", false);
								$(this).parent().find("span").css("background", "#ffffff");
								$(this).parent().find("span").css("color", "black");
								$(this).parent().find("span").css("font-weight", "normal");
							}
						} else {
							if (subId.substring(3, 5) == locaId.substring(8, 10)) {
								$('button[id=' + subId + ']').remove();
								$(this).prop("checked", false);
								$(this).parent().find("span").css("background", "#ffffff");
								$(this).parent().find("span").css("color", "black");
								$(this).parent().find("span").css("font-weight", "normal");
							}
						}
					}

				});
				//스타일
				$('span[id=' + locaId + ']').css("border", "none");
				$('span[id=' + locaId + ']').css("font-weight", "normal");
				$('span[id=' + locaId + ']').css("color", "black");
			}
		});

		//지역 상세보기의 닫기버튼
		$(".closeloca").click(function() {
			var id = $(this).parent().attr("id");
			//창 닫기
			$("#" + id).css("display", "none");
		});

		//지역 상세보기 체크박스
		$('input:checkbox[name="sublocationBox"]').click(function() {
			var subId = $(this).attr("id");

			if ($(this).is(":checked")) {
				$(this).prop("checked", true);

				//전체버튼 일때
				if ($(this).parent().parent().find("li.all").find("input").val() == $(this).val()) {
					//전체를 제외한 다른 버튼 false
					$(this).parent().parent().find("li.sub").find("input").prop("checked", false);
					$(this).parent().parent().find("li.sub").find("span").css("background", "#ffffff");
					$(this).parent().parent().find("li.sub").find("span").css("color", "black");
					$(this).parent().parent().find("li.sub").find("span").css("font-weight", "normal");
					//전체버튼만 true
					$(this).prop("checked", true);
				} else {
					//전체버튼 false
					$(this).parent().parent().find("li.all").find("input").prop("checked", false);
					$(this).parent().parent().find("li.all").find("span").css("background", "#ffffff");
					$(this).parent().parent().find("li.all").find("span").css("color", "black");
					$(this).parent().parent().find("li.all").find("span").css("font-weight", "normal");
				}

				//스타일
				$('span[id=' + subId + ']').css("background", "#0099ff");
				$('span[id=' + subId + ']').css("border-radius", "12px");
				$('span[id=' + subId + ']').css("font-weight", "bold");
				$('span[id=' + subId + ']').css("color", "#ffffff");

			} else {
				$(this).prop("checked", false);

				//선택된 것이 없을 때 창 닫기
				var cla = $(this).parent().parent().attr("class");
				if ($('.' + cla + ' input[type=checkbox]:checked').length == 0) {
					$('input:checkbox[name=locationBox]').each(function() {
						var locaId = $(this).attr("id");

						if (locaId.substring(8, locaId.length) == cla.substring(6, cla.length)) {
							$("#sub" + locaId).css("display", "none");
							$(this).prop("checked", false);

							//스타일
							$('span[id=' + locaId + ']').css("border", "none");
							$('span[id=' + locaId + ']').css("font-weight", "normal");
							$('span[id=' + locaId + ']').css("color", "black");

							$('span[id=' + subId + ']').css("color", "black");
							$('span[id=' + subId + ']').css("background", "#ffffff");
							$('span[id=' + subId + ']').css("font-weight", "normal");
						}

					});

					$("#sub" + locaId).css("display", "none");
				}

				//스타일
				$('span[id=' + subId + ']').css("background", "#ffffff");
				$('span[id=' + subId + ']').css("color", "black");
				$('span[id=' + subId + ']').css("font-weight", "normal");
			}
		});
	});

	//직무분야 직무열기
	$('.job_li input[type=checkbox]').change(function() {
		var jobId = $(this).attr("id");

		if ($(this).is(":checked")) {
			$(this).prop("checked", true);

			$('input:checkbox[name="jobcategory"]').each(function() {
				$('.addDiv').css("display", "none");
			});

			$("#sub" + jobId).css("display", "block");

			//스타일
			$('span[id=' + jobId + ']').css("border", "1px solid #0099ff");
			$('span[id=' + jobId + ']').css("border-radius", "12px");
			$('span[id=' + jobId + ']').css("font-weight", "bold");
			$('span[id=' + jobId + ']').css("color", "#0099ff");
		} else {
			$("#sub" + jobId).css("display", "none");

			//창을 닫을때 모든값 체크해제
			$('input:checkbox[name="subjobcategory"]').each(function() {
				var subId = $(this).attr("id");

				if ($(this).is(':checked')) {
					if (subId.substring(1, 2) == jobId.substring(1, 2)) {
						$(this).prop("checked", false);
						$(this).parent().find("span").css("background", "#ffffff");
						$(this).parent().find("span").css("color", "black");
						$(this).parent().find("span").css("font-weight", "normal");
					}
				}
			});
			//스타일
			$('span[id=' + jobId + ']').css("border", "none");
			$('span[id=' + jobId + ']').css("font-weight", "normal");
			$('span[id=' + jobId + ']').css("color", "black");
		}
	});

	$('input:checkbox[name=subjobcategory]').click(function() {
		var subId = $(this).attr("id");
		if ($(this).is(":checked")) {
			$(this).prop("checked", true);

			//스타일
			$('span[id=' + subId + ']').css("background", "#0099ff");
			$('span[id=' + subId + ']').css("border-radius", "12px");
			$('span[id=' + subId + ']').css("font-weight", "bold");
			$('span[id=' + subId + ']').css("color", "#ffffff");
		} else {
			$(this).prop("checked", false);

			//선택된 것이 없을 때 창 닫기
			var cla = $(this).parent().parent().attr("class");
			if ($('.' + cla + ' input[type=checkbox]:checked').length == 0) {
				$('input:checkbox[name=jobcategory]').each(function() {
					var jobId = $(this).attr("id");
					if (jobId == cla.substring(6, cla.length)) {
						$("#sub" + jobId).css("display", "none");
						$(this).prop("checked", false);
						//스타일
						$('span[id=' + jobId + ']').css("border", "none");
						$('span[id=' + jobId + ']').css("font-weight", "normal");
						$('span[id=' + jobId + ']').css("color", "black");

						$('span[id=' + subId + ']').css("color", "black");
						$('span[id=' + subId + ']').css("background", "#ffffff");
						$('span[id=' + subId + ']').css("font-weight", "normal");
						$('span[id=' + subId + ']').css("border", "none");
					}

				});

			}
			//스타일
			$('span[id=' + subId + ']').css("border", "none");
			$('span[id=' + subId + ']').css("font-weight", "normal");
			$('span[id=' + subId + ']').css("color", "black");
			$('span[id=' + subId + ']').css("background", "#ffffff");
		}
	});

	$(".closejob").click(function() {
		var id = $(this).parent().attr("id");
		$("#" + id).css("display", "none");
	});

	$('.type_li input[type=checkbox]').click(function() {
		var typeId = $(this).attr("id");
		if ($(this).is(":checked")) {
			$(this).prop("checked", true);

			//스타일
			$('span[id=' + typeId + ']').css("border", "1px solid #0099ff");
			$('span[id=' + typeId + ']').css("border-radius", "12px");
			$('span[id=' + typeId + ']').css("font-weight", "bold");
			$('span[id=' + typeId + ']').css("color", "#0099ff");

		} else {
			$(this).prop("checked", false);

			//스타일
			$('span[id=' + typeId + ']').css("border", "none");
			$('span[id=' + typeId + ']').css("font-weight", "normal");
			$('span[id=' + typeId + ']').css("color", "black");
			$('span[id=' + typeId + ']').css("background", "#ffffff");
		}
	});
	//전체 div
	$('.searchWrap input[type=checkbox]').change(function() {
		//지역 검색
		var subLocationName = $('.location_dd input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		//경력 검색
		var career = $('.career_ul input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		var jobcate = $('.subjob_li input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");


		var type = $('.type_li input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		var dday = $('.dday_li input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		$.ajax({
			type : 'post',
			url : '${home}/searchResult',
			data : {
				subLocationName : subLocationName,
				jobcate : jobcate,
				career : career,
				type : type,
				dday : dday
			},
			success : function(result) {
				$("#resultPost").html(result);
			}
		});
	});
</script>
<style>
.searchWrap {
	-ms-user-select: none;
	-moz-user-select: -moz-none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}
</style>
