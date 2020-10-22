<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul {
	list-style: none;
}
.album-detail-infos {
	margin: 0 auto;

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

.album3_thumb .cover {
	display: block;
	position: relative;
	width: 200px;
	height: 200px;
	padding: 0 0 0 10px;
	cursor: pointer;
}

.album3_thumb .cover img {
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
			 <span class="cover" >
				<img src="/Genie_Project/img/song/${songList.getSongid() }.jpg" alt="${songList.getTitle() }">
				</span>
				<input type="hidden" id="songID"
				value="${songList.getSongid() }">
			</a>
		</div>
		<div class="info-zone">
			<h2 class="name">${songList.getTitle()}</h2>
			<ul class="info-data">
				<li><span class="attr"><img
						src="/Genie_Project/img/g/txt_5.png" alt="아티스트"></span>
					<span class="value">${songList.getArtist()} </span></li>
				<li><span class="attr"><img
						src="/Genie_Project/img/g/txt_10.png" alt="장르/스타일"></span>
					<span class="value">${songList.getGenre()}</span></li>
				<li><span class="attr"><img
						src="/Genie_Project/img/g/txt_11.png" alt="발매사"></span>
					<span class="value">${songList.getPublisher()}</span></li>
				<li><span class="attr"><img
						src="/Genie_Project/img/g/txt_13.png" alt="기획사"></span>
					<span class="value">${songList.getAgency()}</span></li>
				<li><span class="attr"><img
						src="/Genie_Project/img/g/txt_12.png" alt="발매일">
				</span> <span class="value">${songList.getG_date()}</span></li>
			</ul>
		</div>
	</div>
</body>
<script type="text/javascript">
	window.onload = function() {
		var songID = document.getElementById("songID").value;
		var songImg = document.getElementById("songImg");
		switch (songID) {
		case 1:
			songImg.innerHTML="<img src='/Genie_Project/img/song/1.jpg' image-view='true'>"
			break;
		case 2:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/2.jpg' image-view='true'>";
			break;
		case 3:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/3.jpg' image-view='true'>";
			break;
		case 4:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/4.jpg' image-view='true'>";
			break;
		case 5:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/5.jpg' image-view='true'>";
			break;
		case 6:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/6.jpg' image-view='true'>";
			break;
		case 7:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/7.jpg' image-view='true'>";
			break;
		case 8:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/8.jpg' image-view='true'>";
			break;
		case 9:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/9.jpg' image-view='true'>";
			break;
		case 10:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/10.jpg' image-view='true'>";
			break;
		case 11:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/11.jpg' image-view='true'>";
			break;
		case 12:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/12.jpg' image-view='true'>";
			break;
		case 13:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/13.jpg' image-view='true'>";
			break;
		case 14:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/14.jpg' image-view='true'>";
			break;
		case 15:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/15.jpg' image-view='true'>";
			break;
		case 16:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/16.jpg' image-view='true'>";
			break;
		case 17:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/17.jpg' image-view='true'>";
			break;
		case 18:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/18.jpg' image-view='true'>";
			break;
		case 19:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/19.jpg' image-view='true'>";
			break;
		case 20:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/20.jpg' image-view='true'>";
			break;
		case 21:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/21.jpg' image-view='true'>";
			break;
		case 22:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/22.jpg' image-view='true'>";
			break;
		case 23:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/23.jpg' image-view='true'>";
			break;
		case 24:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/24.jpg' image-view='true'>";
			break;
		case 25:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/25.jpg' image-view='true'>";
			break;
		case 26:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/26.jpg' image-view='true'>";
			break;
		case 27:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/27.jpg' image-view='true'>";
			break;
		case 28:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/28.jpg' image-view='true'>";
			break;
		case 29:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/29.jpg' image-view='true'>";
			break;
		case 30:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/30.jpg' image-view='true'>";
			break;
		case 31:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/31.jpg' image-view='true'>";
			break;
		case 32:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/32.jpg' image-view='true'>";
			break;
		case 33:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/33.jpg' image-view='true'>";
			break;
		case 34:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/34.jpg' image-view='true'>";
			break;
		case 35:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/35.jpg' image-view='true'>";
			break;
		case 36:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/36.jpg' image-view='true'>";
			break;
		case 37:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/37.jpg' image-view='true'>";
			break;
		case 38:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/38.jpg' image-view='true'>";
			break;
		case 39:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/39.jpg' image-view='true'>";
			break;
		case 40:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/40.jpg' image-view='true'>";
			break;
		case 41:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/41.jpg' image-view='true'>";
			break;
		case 42:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/42.jpg' image-view='true'>";
			break;
		case 43:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/43.jpg' image-view='true'>";
			break;
		case 44:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/44.jpg' image-view='true'>";
			break;
		case 45:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/45.jpg' image-view='true'>";
			break;
		case 46:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/46.jpg' image-view='true'>";
			break;
		case 47:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/47.jpg' image-view='true'>";
			break;
		case 48:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/48.jpg' image-view='true'>";
			break;
		case 49:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/49.jpg' image-view='true'>";
			break;
		case 50:
			songImg.innerHTML = "<img src='/Genie_Project/img/song/50.jpg' image-view='true'>";
			break;
		}
	}
</script>

</html>