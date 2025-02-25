<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!-- TODO åäººè³è¨ -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>個人資訊</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/images/favicon.png">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<style>
.btn-transparent {
	border: 1px solid #ccc;
	background-color: transparent;
	color: #333;
	padding: 5px 10px;
	font-size: 14px;
	border-radius: 5px;
	cursor: pointer;
}

.btn-transparent:hover {
	background-color: rgba(0, 0, 0, 0.1);
}

.rounded-circle {
	border-radius: 50% !important;
	width: 90px;
	height: 90px;
	object-fit: cover;
}

.container {
	max-width: 95%;
	display: flex;
	align-items: center;
	justify-content: center;
	/*             height: 100vh; */
	position: relative;
}

.content-box {
	width: 95%;
	max-width: 95%;
	background: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	position: relative;
}

.back-button {
	position: absolute;
	top: 10px;
	left: 10px;
}

select.form-control {
	height: calc(2.25rem + 2px); /* 與 input 標籤相同的高度 */
	padding: 0.375rem 0.75rem; /* 與 input 標籤相同的內邊距 */
}
</style>
</head>

<body>


	<!--*******************
        Preloader start
    ********************-->
	<div id="preloader">
		<div class="sk-three-bounce">
			<div class="sk-child sk-bounce1"></div>
			<div class="sk-child sk-bounce2"></div>
			<div class="sk-child sk-bounce3"></div>
		</div>
	</div>
	<!--*******************
        Preloader end
    ********************-->


	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<!--**********************************
            Nav header start
        ***********************************-->
		<div class="nav-header">
			<a href="index.html" class="brand-logo"> <img class="logo-abbr"
				src="./images/logo.png" alt=""> <img class="logo-compact"
				src="./images/logo-text.png" alt=""> <img class="brand-title"
				src="./images/logo-text.png" alt="">
			</a>

			<div class="nav-control">
				<div class="hamburger">
					<span class="line"></span><span class="line"></span><span
						class="line"></span>
				</div>
			</div>
		</div>
		<!--**********************************
            Nav header end
        ***********************************-->

		<!--**********************************
            Header start
        ***********************************-->
		<div class="header">
			<div class="header-content">
				<nav class="navbar navbar-expand">
					<div class="collapse navbar-collapse justify-content-between">
						<div class="header-left">
							<div class="search_bar dropdown">
								<span class="search_icon p-3 c-pointer" data-toggle="dropdown">
									<i class="mdi mdi-magnify"></i>
								</span>
								<div class="dropdown-menu p-0 m-0">
									<form>
										<input class="form-control" type="search" placeholder="Search"
											aria-label="Search">
									</form>
								</div>
							</div>
						</div>

						<ul class="navbar-nav header-right">
							<li class="nav-item dropdown notification_dropdown"><a
								class="nav-link" href="#" role="button" data-toggle="dropdown">
									<i class="mdi mdi-bell"></i>
									<div class="pulse-css"></div>
							</a>
								<div class="dropdown-menu dropdown-menu-right">
									<ul class="list-unstyled">
										<li class="media dropdown-item"><span class="success"><i
												class="ti-user"></i></span>
											<div class="media-body">
												<a href="#">
													<p>
														<strong>Martin</strong> has added a <strong>customer</strong>
														Successfully
													</p>
												</a>
											</div> <span class="notify-time">3:20 am</span></li>
										<li class="media dropdown-item"><span class="primary"><i
												class="ti-shopping-cart"></i></span>
											<div class="media-body">
												<a href="#">
													<p>
														<strong>Jennifer</strong> purchased Light Dashboard 2.0.
													</p>
												</a>
											</div> <span class="notify-time">3:20 am</span></li>
										<li class="media dropdown-item"><span class="danger"><i
												class="ti-bookmark"></i></span>
											<div class="media-body">
												<a href="#">
													<p>
														<strong>Robin</strong> marked a <strong>ticket</strong> as
														unsolved.
													</p>
												</a>
											</div> <span class="notify-time">3:20 am</span></li>
										<li class="media dropdown-item"><span class="primary"><i
												class="ti-heart"></i></span>
											<div class="media-body">
												<a href="#">
													<p>
														<strong>David</strong> purchased Light Dashboard 1.0.
													</p>
												</a>
											</div> <span class="notify-time">3:20 am</span></li>
										<li class="media dropdown-item"><span class="success"><i
												class="ti-image"></i></span>
											<div class="media-body">
												<a href="#">
													<p>
														<strong> James.</strong> has added a<strong>customer</strong>
														Successfully
													</p>
												</a>
											</div> <span class="notify-time">3:20 am</span></li>
									</ul>
									<a class="all-notification" href="#">See all notifications
										<i class="ti-arrow-right"></i>
									</a>
								</div></li>
							<li class="nav-item dropdown header-profile"><a
								class="nav-link" href="#" role="button" data-toggle="dropdown">
									<i class="mdi mdi-account"></i>
							</a>
								<div class="dropdown-menu dropdown-menu-right">
									<a href="./app-profile.html" class="dropdown-item"> <i
										class="icon-user"></i> <span class="ml-2">Profile </span>
									</a> <a href="./email-inbox.html" class="dropdown-item"> <i
										class="icon-envelope-open"></i> <span class="ml-2">Inbox
									</span>
									</a> <a href="./page-login.html" class="dropdown-item"> <i
										class="icon-key"></i> <span class="ml-2">Logout </span>
									</a>
								</div></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->
		<div class="quixnav">
			<div class="quixnav-scroll">
				<ul class="metismenu" id="menu">
					<li class="nav-label first">Main Menu</li>
					<!-- <li><a href="index.html"><i class="icon icon-single-04"></i><span class="nav-text">Dashboard</span></a>
                    </li> -->
					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-single-04"></i><span
							class="nav-text">Dashboard</span></a>
						<ul aria-expanded="false">
							<li><a href="./index.html">Dashboard 1</a></li>
							<li><a href="./index2.html">Dashboard 2</a></li>
						</ul></li>

					<li class="nav-label">Apps</li>
					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-app-store"></i><span
							class="nav-text">Apps</span></a>
						<ul aria-expanded="false">
							<li><a href="./app-profile.html">Profile</a></li>
							<li><a class="has-arrow" href="javascript:void()"
								aria-expanded="false">Email</a>
								<ul aria-expanded="false">
									<li><a href="./email-compose.html">Compose</a></li>
									<li><a href="./email-inbox.html">Inbox</a></li>
									<li><a href="./email-read.html">Read</a></li>
								</ul></li>
							<li><a href="./app-calender.html">Calendar</a></li>
						</ul></li>
					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-chart-bar-33"></i><span
							class="nav-text">Charts</span></a>
						<ul aria-expanded="false">
							<li><a href="./chart-flot.html">Flot</a></li>
							<li><a href="./chart-morris.html">Morris</a></li>
							<li><a href="./chart-chartjs.html">Chartjs</a></li>
							<li><a href="./chart-chartist.html">Chartist</a></li>
							<li><a href="./chart-sparkline.html">Sparkline</a></li>
							<li><a href="./chart-peity.html">Peity</a></li>
						</ul></li>
					<li class="nav-label">Components</li>
					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-world-2"></i><span
							class="nav-text">Bootstrap</span></a>
						<ul aria-expanded="false">
							<li><a href="./ui-accordion.html">Accordion</a></li>
							<li><a href="./ui-alert.html">Alert</a></li>
							<li><a href="./ui-badge.html">Badge</a></li>
							<li><a href="./ui-button.html">Button</a></li>
							<li><a href="./ui-modal.html">Modal</a></li>
							<li><a href="./ui-button-group.html">Button Group</a></li>
							<li><a href="./ui-list-group.html">List Group</a></li>
							<li><a href="./ui-media-object.html">Media Object</a></li>
							<li><a href="./ui-card.html">Cards</a></li>
							<li><a href="./ui-carousel.html">Carousel</a></li>
							<li><a href="./ui-dropdown.html">Dropdown</a></li>
							<li><a href="./ui-popover.html">Popover</a></li>
							<li><a href="./ui-progressbar.html">Progressbar</a></li>
							<li><a href="./ui-tab.html">Tab</a></li>
							<li><a href="./ui-typography.html">Typography</a></li>
							<li><a href="./ui-pagination.html">Pagination</a></li>
							<li><a href="./ui-grid.html">Grid</a></li>

						</ul></li>

					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-plug"></i><span
							class="nav-text">Plugins</span></a>
						<ul aria-expanded="false">
							<li><a href="./uc-select2.html">Select 2</a></li>
							<li><a href="./uc-nestable.html">Nestedable</a></li>
							<li><a href="./uc-noui-slider.html">Noui Slider</a></li>
							<li><a href="./uc-sweetalert.html">Sweet Alert</a></li>
							<li><a href="./uc-toastr.html">Toastr</a></li>
							<li><a href="./map-jqvmap.html">Jqv Map</a></li>
						</ul></li>
					<li><a href="widget-basic.html" aria-expanded="false"><i
							class="icon icon-globe-2"></i><span class="nav-text">Widget</span></a></li>
					<li class="nav-label">Forms</li>
					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-form"></i><span
							class="nav-text">Forms</span></a>
						<ul aria-expanded="false">
							<li><a href="./form-element.html">Form Elements</a></li>
							<li><a href="./form-wizard.html">Wizard</a></li>
							<li><a href="./form-editor-summernote.html">Summernote</a></li>
							<li><a href="form-pickers.html">Pickers</a></li>
							<li><a href="form-validation-jquery.html">Jquery
									Validate</a></li>
						</ul></li>
					<li class="nav-label">Table</li>
					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-layout-25"></i><span
							class="nav-text">Table</span></a>
						<ul aria-expanded="false">
							<li><a href="table-bootstrap-basic.html">Bootstrap</a></li>
							<li><a href="table-datatable-basic.html">Datatable</a></li>
						</ul></li>

					<li class="nav-label">Extra</li>
					<li><a class="has-arrow" href="javascript:void()"
						aria-expanded="false"><i class="icon icon-single-copy-06"></i><span
							class="nav-text">Pages</span></a>
						<ul aria-expanded="false">
							<li><a href="./page-register.html">Register</a></li>
							<li><a href="./page-login.html">Login</a></li>
							<li><a class="has-arrow" href="javascript:void()"
								aria-expanded="false">Error</a>
								<ul aria-expanded="false">
									<li><a href="./page-error-400.html">Error 400</a></li>
									<li><a href="./page-error-403.html">Error 403</a></li>
									<li><a href="./page-error-404.html">Error 404</a></li>
									<li><a href="./page-error-500.html">Error 500</a></li>
									<li><a href="./page-error-503.html">Error 503</a></li>
								</ul></li>
							<li><a href="./page-lock-screen.html">Lock Screen</a></li>
						</ul></li>
				</ul>
			</div>


		</div>
		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">
			<div class="container">
				<div class="content-box">
					<form action="${pageContext.request.contextPath}/user/update"
						method="post" enctype="multipart/form-data">
						<button class="btn btn-transparent profile-button"
							onclick="window.location.href='index2.html'" type="button">返回首頁</button>
						<div class="row">
							<div
								class="col-md-4 border-right d-flex align-items-center justify-content-center">
								<div class="text-center p-3 py-5">
									<img id="profileImage" class="rounded-circle mt-3"
										src="<c:choose>
            <c:when test="${not empty vendor.vendorId}">
               /user/profileImage/${vendor.vendorId} 
            </c:when>
            <c:otherwise>
                https://i.pinimg.com/236x/ca/e9/59/cae959cc679753ed62b8a4bd8357681d.jpg <!-- 預設圖片 -->
            </c:otherwise>
        </c:choose>"
										width="90"
										onclick="document.getElementById('imageUpload').click();">

									<!-- 上傳圖片 input -->
									<input type="file" id="imageUpload" name="profileImage"
										accept="image/*" style="display: none;"
										onchange="previewImage(event)"> <br> <span
										class="font-weight-bold">會員ID:${user.userId}</span> <input
										type="hidden" name="vendorId" value="${vendor.vendorId}" /> <br>
									<span class="font-weight-bold">${vendor.vendorName}</span><br>
									<span class="text-black-50">${user.email }</span><br> <span>${vendor.vendorAddress}</span>
								</div>
							</div>
							<div class="col-md-8">
								<div class="p-3 py-5">
									<div class="row mt-2">
										<div class="col-md-6">
											<label>店家名稱:</label><input type="text" class="form-control"
												name="vendorName" value="${vendor.vendorName}">
										</div>
										<div class="col-md-6">
											<label>店家類別:</label> <select name="category"
												class="form-control">
												<option value="餐廳"
													${vendor.category.categoryName == '餐廳' ? 'selected' : ''}>餐廳</option>
												<option value="旅店"
													${vendor.category.categoryName == '旅店' ? 'selected' : ''}>旅店</option>
											</select><br />
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-md-6">
											<label>Email:</label><input type="email" class="form-control"
												name="contactEmail" id="contactEmail" required="required"
												value="${vendor.contactEmail}"> <span
												id="emailError" style="color: red; display: none;">請輸入有效的
												Email。</span>
										</div>
										<div class="col-md-6">
											<label>電話號碼:</label><input type="text" class="form-control"
												name="vendorPhone" id="vendorPhone" required="required"
												value="${vendor.vendorPhone}"> <span id="phoneError"
												style="color: red; display: none;">請輸入有效的電話號碼。</span>
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-md-6">
											<label>地址:</label>
											<textarea rows="" cols="" class="form-control"
												name="vendorAddress">${vendor.vendorAddress}</textarea>
										</div>

										<div class="col-md-6">
											<label>介紹:</label>

											<textarea rows="" cols="" class="form-control"
												name="vendorDescription">${vendor.vendorDescription}</textarea>
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-md-6">
											<label>聯絡人:</label><input type="text" class="form-control"
												name="contactPerson" value="${vendor.contactPerson}">
										</div>
										<div class="col-md-6">
											<label>統一編號:</label><input type="text" class="form-control"
												name="vendorTaxidNumber" value="${vendor.vendorTaxidNumber}">
										</div>

									</div>
									<div class="row mt-3">
										<div class="col-md-6">
											<label>註冊日期:</label><input type="text" class="form-control"
												name="registrationDate" value="${vendor.registrationDate}"
												disabled="disabled">
										</div>
										<div class="col-md-6">
											<label>認證狀態:</label>
											<c:choose>
												<c:when test="${vendor.status}">
													<input type="text" class="form-control" value="已認證"
														disabled="disabled">
													<input type="hidden" name="status" value="true">
												</c:when>
												<c:otherwise>
													<input type="text" class="form-control" value="未認證"
														disabled="disabled">
													<input type="hidden" name="status" value="false">
												</c:otherwise>
											</c:choose>

										</div>
									</div>
									<div class="mt-5 text-right">
										<button class="btn btn-primary profile-button" type="submit">更新資訊</button>

										<a href="${pageContext.request.contextPath}/logout"
											class="btn btn-danger">登出</a>
									</div>

									<div class="modal fade" id="updateSuccessModal" tabindex="-1"
										aria-labelledby="updateSuccessLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="updateSuccessLabel">更新成功</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">您的資料已成功更新！</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary"
														data-bs-dismiss="modal" id="confirmButton">確定</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</form>
				</div>

			</div>
			<form action="/user/deleteUser.controller" method="post"
				onsubmit="return confirmDelete();">
				<input type="hidden" name="userId" value="${user.userId}">
				<button type="submit" class="btn btn-danger">刪除帳號</button>
			</form>
		</div>

		<!--**********************************
            Content body end
        ***********************************-->


		<!--**********************************
            Footer start
        ***********************************-->

		<!--**********************************
            Footer end
        ***********************************-->

		<!--**********************************
           Support ticket button start
        ***********************************-->

		<!--**********************************
           Support ticket button end
        ***********************************-->


	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
	<!-- Required vendors -->
	<script src="/vendor/global/global.min.js"></script>
	<script src="/js/quixnav-init.js"></script>
	<script src="/js/custom.min.js"></script>
	<script type="text/javascript">
		function confirmDelete() {
			return confirm("確定要刪除帳號嗎？這個操作無法恢復！");
		}
		function previewImage(event) {
			var reader = new FileReader();
			reader.onload = function() {
				var output = document.getElementById('profileImage');
				output.src = reader.result; // 更新圖片為本地預覽
			};
			reader.readAsDataURL(event.target.files[0]);
		}
		document
				.querySelector("form")
				.addEventListener(
						"submit",
						function(event) {
							// 取得欄位
							var email = document.getElementById("contactEmail").value;
							var phone = document.getElementById("vendorPhone").value;

							// 清除舊的錯誤訊息
							document.getElementById("emailError").style.display = "none";
							document.getElementById("phoneError").style.display = "none";

							// 空白檢查
							if (!email.trim()
									|| !phone.trim()
									|| !document
											.querySelector("input[name='vendorName']").value
											.trim()
									|| !document
											.querySelector("textarea[name='vendorDescription']").value
											.trim()) {
								alert("所有欄位都不能為空！");
								event.preventDefault(); // 阻止表單提交
								return;
							}

							// Email 格式驗證
							var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
							if (!emailRegex.test(email)) {
								document.getElementById("emailError").style.display = "inline";
								event.preventDefault(); // 阻止表單提交
								return;
							}

							// 電話號碼格式驗證（台灣格式 09 開頭，8 位數字）
							var phoneRegex = /^09\d{8}$/;
							if (!phoneRegex.test(phone)) {
								document.getElementById("phoneError").style.display = "inline";
								event.preventDefault(); // 阻止表單提交
								return;
							}
						});

		document
				.getElementById('imageUpload')
				.addEventListener(
						'change',
						function(event) {
							const file = event.target.files[0];
							if (file) {
								const reader = new FileReader();
								reader.onload = function(e) {
									document.getElementById('profileImage').src = e.target.result;
								}
								reader.readAsDataURL(file);
							}
						});

		document.addEventListener("DOMContentLoaded", function() {
			var updateSuccess = "${updateSuccess}";
			if (updateSuccess === "true") {
				var modal = new bootstrap.Modal(document
						.getElementById('updateSuccessModal'));
				modal.show();
			}

			// 當確定按鈕被點擊時跳轉到 profile 頁面
			document.getElementById("confirmButton").addEventListener("click",
					function() {
						window.history.back(); // 這是跳轉到 profile 頁面的 URL，請根據您的路徑調整
					});
		});
	</script>


</body>

</html>