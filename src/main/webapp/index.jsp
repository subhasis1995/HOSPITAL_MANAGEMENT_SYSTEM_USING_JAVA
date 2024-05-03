<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style>
h2 {
	color: green;
}
</style>
<!-- for index page first image welcome  -->

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<!-- for card shadows -->
</head>
<body>

	<%@include file="component/navbar.jsp"%>

	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="4" aria-label="Slide 5"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="5" aria-label="Slide 6"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="6" aria-label="Slide 7"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="7" aria-label="Slide 8"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="8" aria-label="Slide 9"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="9" aria-label="Slide 10"></button>
			<!-- for scrolling button  -->
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/logo.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block">
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/hosbulid1.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img src="img/hospitalback.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img src="img/hosreception.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img src="img/hospitalinnerview.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img src="img/hosbulid2.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img src="img/grofdoc01.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img src="img/grdoc1.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img src="img/docpatient.jpg" class="d-block w-100" alt="..."
					height="500px">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>


			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<div class="container p-3">
			<p class="text-center fs-2 ">Key Features of our Hospital</p>

			<div class="row">
				<div class="col-md-8 p-5">
					<div class="row">
						<div class="col-md-6">
							<div class="card paint-card">
								<div class="card-body">
									<p class="fs-5">100% Safety</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Voluptatem, inventore</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card paint-card">
								<div class="card-body">
									<p class="fs-5">Clean Environment</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Voluptatem, inventore</p>
								</div>
							</div>
						</div>
						<div class="col-md-6 mt-2">
							<div class="card paint-card">
								<div class="card-body">
									<p class="fs-5">Friendly Doctors</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Voluptatem, inventore</p>
								</div>
							</div>
						</div>
						<div class="col-md-6 mt-2">
							<div class="card paint-card">
								<div class="card-body">
									<p class="fs-5">Medical Research</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Voluptatem, inventore</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- for card show -->
				<div class="col-md-4">
					<img alt="" src="img/doc1.jpg" width="115%" alt="..."
						height="385px">
				</div>
				<!-- for card side doctor image -->
			</div>
		</div>


		<hr>

		<div class="container p-2">
			<p class="text-center fs-2 ">Our Team</p>

			<div class="row">
				<div class="col-md-3">
					<div class="card paint-card">
						<div class="card-body text-center">
							<img src="img/doc1.jpg" width="240px" height="250px">
							<p class="fw-bold fs-5">Dr. Susil Santra</p>
							<p class="fs-7">(CEO & Chairman)</p>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card paint-card">
						<div class="card-body text-center">
							<img src="img/doc2.jpg" width="240px" height="250px">
							<p class="fw-bold fs-5">Dr. Uttara Santra</p>
							<p class="fs-7">(Chief Doctor)</p>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card paint-card">
						<div class="card-body text-center">
							<img src="img/doc3.jpg" width="240px" height="250px">
							<p class="fw-bold fs-5">Dr. Malay Manna</p>
							<p class="fs-7">(Chief Doctor)</p>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card paint-card">
						<div class="card-body text-center">
							<img src="img/doc4.jpg" width="240px" height="250px">
							<p class="fw-bold fs-5">Dr. Rupali De</p>
							<p class="fs-7">(Chief Doctor)</p>
						</div>
					</div>
				</div>

			</div>

		</div>
		<%@include file="component/footer.jsp" %>
</body>
</html>