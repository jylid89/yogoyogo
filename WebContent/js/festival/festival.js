	$(function() {

		$.ajax({
			url : "eveconfirmCheck.do",
			type : "post",
			data : {
				"event_num" : $("#event_num").val(),
				"truck_num" : $("#truck_num").val()
			},
			success : function(data) {
				if (data == "0") {
					$("#btn_confirm").show();
					$("#btn_cancel").hide();
				} else {
					$("#btn_confirm").hide();
					$("#btn_cancel").show();
				}
			}
		})

		//신청하기 버튼 클릭시
		$("#btn_confirm").click(function() {
			var result = confirm(' 신청하시겠습니까?');
			if (result) {
				$("#festiForm").attr("action", "eventConfirmInsert.do").submit();
			}
		});

		//신청취소 버튼 클릭시
		$("#btn_cancel")
				.click(
						function() {
							var result = confirm('신청을 취소하시겠습니까? (승인이 된 후에는 취소가 불가 합니다.)');
							if (result) {
								$.ajax({
									url : "eveconfirmCancel.do",
									type : "post",
									data : {
										"event_num" : $("#event_num").val(),
										"truck_num" : $("#truck_num").val()
									},
									success : function(data) {
										if (data != "대기중") {
											alert("승인이 완료되어 취소가 불가 합니다.");
											return;
										} else {
											$("#festiForm").attr("action","eveConfirmDelete.do").submit();
										}
									}
								})
							}

						});
		$("#deleteBtn").click(function(){
			
			var result = confirm("삭제 하시겠습니까?");
			
			if(result){
				$("#festiForm").attr("action","festivalDelete.do").submit();
			}
		});
	});
