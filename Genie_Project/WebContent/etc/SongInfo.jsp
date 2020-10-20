<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{
	list-style: none;
}
.album-detail-infos {
	margin: 20px 0 27px;
}

.album-detail-infos .photo-zone {
	float: left;
	width: 210px;
	margin-right: 22px;
}

.album3-thumb {
	display: block;
    position: relative;
    margin: 0 0 6px;
}
.album3_thumb .cover{
	display: block;
    position: relative;
    width: 200px;
    height: 200px;
    padding: 0 0 0 10px;
    cursor: pointer;
}
.album3_thumb .cover img{
	width: 100%;
}

.album-detail-infos .info-zone {
	float: left;
	width: 450px;
}

.album-detail-infos .info-data {
	padding: 0 0 0 3px;
	clear: both;
}

.album-detail-infos .info-data .attr {
	min-width: 72px;
	display: inline-block;
	vertical-align: top;
}

.album-detail-infos .info-data .value {
	display: inline-block;
	max-width: 260px;
	vertical-align: top;
}
</style>
</head>
<body>
<body>
	<div class="album-detail-infos">
		<div class="photo-zone">
			<a href="#" class="album3_thumb">
				<span class="cover"><img src="C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/1.jpg" alt="" image-view="true"></span>
			</a>
		</div>
		<div class="info-zone">
			<h2 class="name">${songList.getTitle()}</h2>
			<ul class="info-data">
				<li><span class="attr"><img
						src="C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/txt_5.png" alt="아티스트"></span> <span
					class="value">${songList.getArtist()} </span></li>
				<li><span class="attr"><img
						src="C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/txt_10.png" alt="장르/스타일"></span> <span
					class="value">${songList.getGenre()}</span></li>
				<li><span class="attr"><img
						src="C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/txt_11.png" alt="발매사"></span> <span
					class="value">${songList.getPublisher()}</span></li>
				<li><span class="attr"><img
						src="C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/txt_13.png" alt="기획사"></span> <span
					class="value">${songList.getAgency()}</span></li>
				<li><span class="attr"><img
						src="C:/Users/최유강/Desktop/팀4 (2)/사진/이미지/txt_12.png" alt="발매일"> </span> <span
					class="value">${songList.getG_date()}</span></li>
			</ul>
		</div>
	</div>
</body>
</body>
</html>