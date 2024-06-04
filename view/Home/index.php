	<?php
	require_once 'config/db.php';
	$db = new connect();
	$conn = $db->getConnection();


	// Lấy dữ liệu từ bảng "property_types"
	$propertyTypesQuery = "SELECT * FROM property_types";
	$propertyTypesResult = $conn->query($propertyTypesQuery);
	// Lấy dữ liệu từ bảng "utilities"
	$utilitiesQuery = "SELECT * FROM utilities";
	$utilitiesResult = $conn->query($utilitiesQuery);
	?>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader"></div>

	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">

		<!-- ============================================================== -->
		<!-- Top header  -->
		<!-- ============================================================== -->
		<!-- Start Navigation -->

		<!-- End Navigation -->
		<div class="clearfix"></div>
		<!-- ============================================================== -->
		<!-- Top header  -->
		<!-- ============================================================== -->


		<!-- ============================ Hero Banner  Start================================== -->
		<div class="hero-banner vedio-banner">
			<div class="overlay"></div>

			<video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
				<source src="public/img/banners.mp4" type="video/mp4">
			</video>

			<div class="container">

				<div class="row justify-content-center">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<h1 class="big-header-capt mb-0 text-light">WORLICITY</h1>
						<h3 class="big-header-capt mb-3 text-light" style="font-size: 20px; display:flex;justify-content: center;">TÌM KIẾM CÁC PHÒNG TRỌ, NHÀ TRỌ, NHÀ NGUYÊN CĂN, CĂN HỘ CHO THUÊ TẠI THÀNH PHỐ ĐÀ NẴNG</h3>
						<!-- <p class="text-center mb-0 text-light">Tìm kiếm các phòng trọ, nhà trọ, căn hộ tại thành phố Đà Nẵng.</p> -->
					</div>
				</div>


				<div class="search" style=" display: flex;justify-content: space-around;align-items: center;">
					<form action="" method="GET">
						<div class="select-search">
							<select id="type" name="propertyType" style="width:150px; height:50px; border:0; padding-left: 5px">
								<option value="">Loại phòng</option>
								<?php while ($row = $propertyTypesResult->fetch(PDO::FETCH_ASSOC)) { ?>
									<option value="<?php echo $row['type_id']; ?>"><?php echo $row['type_name']; ?></option>
								<?php } ?>
							</select>
							<div class="line" style="height:50px;border:1px solid #CBC4C4"></div>
							<select id="districtSelect" name="district" style="width:150px; height:50px; border:0">
								<option value="">Quận, huyện</option>
								<option value="Hải Châu">Hải Châu</option>
								<option value="Thanh Khê">Thanh Khê</option>
								<option value="Sơn Trà">Sơn Trà</option>
								<option value="Cẩm Lệ">Cẩm Lệ</option>
								<option value="Liên Chiểu">Liên Chiểu</option>
								<option value="Ngũ Hành Sơn">Ngũ Hành Sơn</option>
								<option value="Hoà Vang">Hoà Vang</option>
								<option value="Hoàng Sa">Hoàng Sa</option>
							</select>
							<!-- <div class="line" style="height:50px;border:1px solid #CBC4C4"></div>
						<select id="wardSelect" style="width:150px; height:50px; border:0">
							<option value="">Phường, xã</option>
						</select> -->
							<div class="line" style="height:50px;border:1px solid #CBC4C4"></div>
							<select id="prix" name="price" style="width:150px; height:50px; border:0">
								<option value="">Mức giá</option>
								<option value="1000000">Dưới 1 triệu</option>
								<option value="2000000">1 triệu - 2 triệu</option>
								<option value="3000000">2 triệu - 3 triệu</option>
								<option value="5000000">3 triệu - 5 triệu</option>
								<option value="7000000">5 triệu - 7 triệu</option>
								<option value="10000000">7 triệu - 10 triệu</option>
								<option value="15000000">10 triệu - 15 triệu</option>
								<option value="15000001">Trên 15 triệu</option>
							</select>
							<div class="line" style="height:50px;border:1px solid #CBC4C4"></div>
							<select id="zone" name="area" style="width:150px; height:50px; border:0">
								<option value="">Diện tích</option>
								<option value="20">Dưới 20m2</option>
								<option value="30">Từ 20 - 30m2</option>
								<option value="50">Từ 30 - 50m2</option>
								<option value="70">Từ 50 - 70m2</option>
								<option value="100">Từ 70 - 100m2</option>
								<option value="101">Trên 100m2</option>
							</select>
							<div class="line" style="height:50px;border:1px solid #CBC4C4"></div>

							<button class="btn search-btn" type="submit" value="submit"><i class="fa fa-search-location"></i> Tìm kiếm</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<!-- ============================ Hero Banner End ================================== -->

		<!-- ============================ Property Location ================================== -->
		<section class="min">
			<div class="container">

				<div class="row justify-content-center">

					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=haichau" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Hải Châu</h4>
								</div>
							</div>

							<div class="img-wrap-background" style="background-image: url(public/img/HaiChau.jpg);"></div>
						</a>
					</div>

					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=thanhkhe" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Thanh Khê</h4>
								</div>
							</div>

							<div class="img-wrap-background" style="background-image: url(public/img/ThanhKhe.jpg);"></div>

						</a>
					</div>

					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=sontra" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Sơn Trà</h4>
								</div>
							</div>
							<div class="img-wrap-background" style="background-image: url(public/img/SonTra.jpg);"></div>

						</a>
					</div>

					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=nguhanhson" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Ngũ Hành Sơn</h4>
								</div>
							</div>

							<div class="img-wrap-background" style="background-image: url(public/img/NguHanhSon.jpg);"></div>

						</a>
					</div>
					<!-- </div>
				<div class="row justify-content-center"> -->
					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=lienchieu" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Liên Chiểu</h4>
								</div>
							</div>
							<div class="img-wrap-background" style="background-image: url(public/img/LienChieu.jpg);"></div>

						</a>
					</div>

					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=hoavang" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Hòa Vang</h4>
								</div>
							</div>
							<div class="img-wrap-background" style="background-image: url(public/img/HoaVang.jpg);"></div>
						</a>
					</div>

					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=camle" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Cẩm Lệ</h4>
								</div>
							</div>
							<div class="img-wrap-background" style="background-image: url(public/img/CamLe1.jpg);"></div>
						</a>
					</div>

					<!-- Single Location -->
					<div class="col-lg-3 col-md-3 col-sm-6">
						<a href="index.php?controller=RentRoom&action=hoangsa" class="img-wrap style-2">
							<div class="location_wrap_content visible">
								<div class="location_wrap_content_first">
									<h4>Hoàng Sa</h4>
								</div>
							</div>
							<div class="img-wrap-background" style="background-image: url(public/img/HoangSa.jpg);"></div>
						</a>
					</div>

				</div>

			</div>
		</section>
		<!-- ============================ Property Location End ================================== -->


		<!-- ============================ Latest Property For Sale Start ================================== -->
		<section class="min">
			<div class="container">

				<div class="row justify-content-center">
					<div class="col-lg-7 col-md-10 text-center">
						<div style="border-radius: 50px;background: rgba(49, 177, 54,0.1);  color: #31b136;" class="sec-heading center mb-4">

							<p style="font-size: large;font-weight: 600; color: #00966a"><img src="public/img/deals.png" class="img-fluid" width="80" alt=""> NHÀ MỚI GẦN ĐÂY</p>
						</div>
					</div>
				</div>

				<div id="property_list" class="row justify-content-center">

					<!--đặt đoạn mã PHP xử lý truy vấn ở một file riêng và include vào đây -->
					<?php foreach ($result as $row) { ?>
						<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12">
							<div class="property-listing list_view">
								<div class="listing-img-wrapper">
									<div class="_exlio_125" style="background: #00966a">
										<?php echo $row['district']; ?>
									</div>
									<div class="list-img-slide">
										<div class="click">
											<div><a href="?controller=RentRoom&action=single&property_id=<?php echo $row['property_id']; ?>"><img src="public/upload/properties/<?php echo $row['image_url']; ?>" class="img-fluid mx-auto" alt="" /></a></div>

										</div>
									</div>
								</div>
								<div class="list_view_flex">
									<div class="listing-detail-wrapper mt-1">
										<div class="listing-short-detail-wrap">
											<div class="_card_list_flex mb-2">
												<div class="_card_flex_01">
													<span class="_list_blickes types"><?php echo $row['type_name']; ?></span>
													<span class="property-type elt_rent"><?php echo $row['age']; ?></span>
												</div>
												<div class="_card_flex_last">
													<h6 class="listing-card-info-price mb-0"></h6>
												</div>
											</div>
											<div class="_card_list_flex">
												<div class="_card_flex_01">
													<h4 class="listing-name verified"><a href="?controller=RentRoom&action=single&property_id=<?php echo $row['property_id']; ?>" class="prt-link-detail">
															<?php
															$property_name = $row['property_name'];
															if (strlen($property_name) > 100) {
																$property_name = substr($property_name, 0, 97) . '...';
															}
															echo htmlentities($property_name);
															?>
														</a>
													</h4>
												</div>
											</div>
										</div>
									</div>
									<div class="price-features-wrapper">
										<div class="list-fx-features">
											<div class="listing-card-info-icon">
												<div class="inc-fleat-icon"><img src="public/img/bed.svg" width="13" alt="" /></div><?php echo $row['bedroom_count']; ?> phòng
											</div>
											<div class="listing-card-info-icon">
												<div class="inc-fleat-icon"><img src="public/img/bathtub.svg" width="13" alt="" /></div><?php echo $row['bathroom_count']; ?> toilet
											</div>
											<div class="listing-card-info-icon">
												<div class="inc-fleat-icon"><img src="public/img/move.svg" width="13" alt="" /></div><?php echo $row['real_area']; ?> m<sup>2</sup>
											</div>
										</div>
									</div>

									<div class="listing-detail-footer">
										<div class="footer-first">
											<div class="foot-rates">
												<span class="elio_rate perfect">

													<?php
													$price = $row['formatted_price'];
													if (mb_strlen($price) > 10) {
														$price = mb_substr($price, 0, 10) . '';
													}
													echo htmlentities($price);
													?>/<?php echo $row['unit']; ?>

												</span>
											</div>
										</div>
										<div class="footer-flex">
											<a href="?controller=RentRoom&action=single&property_id=<?php echo $row['property_id']; ?>" class="prt-view">Xem chi tiết</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>

					<!-- End Single Property -->
				</div>

				<!-- Load more -->
				<!-- <div class="row">
					<div id="property_placeholder"></div>
						<div class="col-lg-12 col-md-12 col-sm-12 text-center">

							<button id="load_more" name="load_more" value="Load more" onclick="load_ajax()" class="btn btn-theme-light-2 rounded">Xem thêm</button>
						</div>
					</div> -->
				<script src="public/js/search.js"></script>
			</div>
		</section>
		<!-- ============================ Latest Property For Sale End ================================== -->





		<!-- ============================ Price Table Start ================================== -->
		<!-- <section class="min">
			<div class="container">

				<div class="row justify-content-center">
					<div class="col-lg-7 col-md-10 text-center">
						<div class="sec-heading center">
							<h2>Select your Package</h2>
							<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>
						</div>
					</div>
				</div>

				<div class="row align-items-center"> -->

		<!-- Single Package -->
		<!-- <div class="col-lg-3 col-md-3">
						<div class="pricing_wrap">
							<div class="prt_head">
								<h4>Gói tiêu chuẩn</h4>
							</div>
							<div class="prt_price">
								<h2><span>VND</span>230k</h2>
								<span>mỗi người dùng/năm</span>
							</div>
							<div class="prt_body">
								<ul>
									<li>10 danh sách</li>
									<li>2 tài sản nổi bật</li>
									<li>2 hình ảnh/mỗi danh sách</li>
									<li>Trợ giúp và hỗ trợ</li>
									<li class="none">Ưu tiên đề xuất</li>
									<li class="none">Quảng cáo</li>
								</ul>
							</div>
							<div class="prt_footer">
								<a href="#" class="btn choose_package">Mua gói</a>
							</div>
						</div>
					</div> -->

		<!-- Single Package -->
		<!-- <div class="col-lg-3 col-md-3">
						<div class="pricing_wrap">
							<div class="prt_head">
								<div class="recommended">Gói tốt nhất</div>
								<h4>Gói vàng</h4>
							</div>
							<div class="prt_price">
								<h2><span>VND</span>1100k</h2>
								<span>mỗi người dùng/năm</span>
							</div>
							<div class="prt_body">
								<ul>
									<li>20 danh sách</li>
									<li>5 tài sản nổi bật</li>
									<li>5 hình ảnh/mỗi danh sách</li>
									<li>Trợ giúp và hỗ trợ</li>
									<li>Ưu tiên đề xuất</li>
									<li class="none">Quảng cáo</li>
								</ul>
							</div>
							<div class="prt_footer">
								<a href="#" class="btn choose_package active">Mua gói</a>
							</div>
						</div>
					</div> -->

		<!-- Single Package -->
		<!-- <div class="col-lg-3 col-md-3">
						<div class="pricing_wrap">
							<div class="prt_head">
								<h4>Gói cao cấp</h4>
							</div>
							<div class="prt_price">
								<h2><span>VND</span>1790k</h2>
								<span>2 người dùng/năm</span>
							</div>
							<div class="prt_body">
								<ul>
									<li>Danh sách không giới hạn</li>
									<li>50 tài sản nổi bật</li>
									<li>Hình ảnh không giới hạn</li>
									<li>Trợ giúp và hỗ trợ</li>
									<li>Ưu tiên đề xuất</li>
									<li>Quảng cáo</li>
								</ul>
							</div>
							<div class="prt_footer">
								<a href="#" class="btn choose_package">Mua gói</a>
							</div>
						</div>
					</div> -->

		<!-- </div>

			</div>
		
		</section> -->
		<!-- ============================ Price Table End ================================== -->

		<!-- ============================ Footer Start ================================== -->

		<!-- ============================ Footer End ================================== -->



	</div>