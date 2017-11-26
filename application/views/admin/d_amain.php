<style type="text/css">
	/* ---------------- Marquee Footer - Start*/

.marquee {
	width: 100%;
	height:250px;
	margin: 0 auto;
	overflow: hidden;
	position: relative;
	background-color: transparent;
	-webkit-transition: background-color 350ms;
	-moz-transition: background-color 350ms;
    transition: background-color 350ms;
}
/*================================
	Move the Marquee to the Left
==================================*/

/** Mozilla Firefox Keyframes **/
@-moz-keyframes left-one {
	0%	{
		-moz-transform:translateX(100%);
	}
	10% {
		-moz-transform:translateX(0);
	}
	40% {
		-moz-transform:translateX(0);
	}
	50% {
		-moz-transform:translateX(-100%);
	}
	100%{
		-moz-transform:translateX(-100%);
	}
}
@-moz-keyframes left-two {
	0% {
		-moz-transform:translateX(100%);
	}
	50% {
		-moz-transform:translateX(100%);
	}
	60% {
		-moz-transform:translateX(0);		
	}
	90% {
		-moz-transform:translateX(0);		
	}
	100%{
		-moz-transform:translateX(-100%);
	}
}
/** Webkit Keyframes **/
@-webkit-keyframes left-one {
	0% {
		-webkit-transform:translateX(100%);
	}
	10% {
		-webkit-transform:translateX(0);
	}
	40% {
		-webkit-transform:translateX(0);
	}
	50% {
		-webkit-transform:translateX(-100%);
	}
	100%{
		-webkit-transform:translateX(-100%);
	}
}
@-webkit-keyframes left-two {
	0% {
		-webkit-transform:translateX(100%);
	}
	50% {
		-webkit-transform:translateX(100%);
	}
	60% {
		-webkit-transform:translateX(0);		
	}
	90% {
		-webkit-transform:translateX(0);		
	}
	100%{
		-webkit-transform:translateX(-100%);
	}
}
/* ---------------- Marquee Footer - end*/
/* ---------------- Export Form - start*/

.marquee p {
	position: absolute;

	font-family: Tahoma, Arial, sans-serif;

	width: 100%;
	height: 100%;

	margin: 0;
	line-height: 50px;

	text-align: center;

	color: #000;
    text-shadow: 1px 1px 0px #000000;
    filter: dropshadow(color=#000000, offx=1, offy=1);

	transform:translateX(100%);
	-moz-transform:translateX(100%);
	-webkit-transform:translateX(100%);
}
.marquee p:nth-child(1) {
	animation: left-one 10s ease infinite;
	-moz-animation: left-one 10s ease infinite;
	-webkit-animation: left-one 10s ease infinite;
}
.marquee p:nth-child(2) {
	animation: left-two 10s ease infinite;
	-moz-animation: left-two 10s ease infinite;
	-webkit-animation: left-two 10s ease infinite;
}
</style>     

	 <div class="clearfix">
		<div class="marquee" style="height:100px">
		<p>Selamat datang di Layanan Manajemen Unggah Proposal Kegiatan</p>
		<p>Perhatikan data yang Anda masukkan dengan benar</p>
		<p>Semoga pekerjaan Anda berjalan lancar dan hari yang menyenangkan</p>
		</div>
		<div class="alert alert-dismissable alert-success">
		
		<!--	Selamat datang kepada <strong><?php echo $this->session->userdata('admin_nama'); ?></strong> di Aplikasi Manajemen Surat Menyurat (MASMATIK)
			<h3>Petunjuk Penggunaan Aplikasi:</h3>
				<ol>
				<li>Layanan manajemen surat menyurat terletak di bagian atas layar monitor</li><br />
				<li>Klik pilihan layanan yang anda butuhkan</li><br />
				<li>Isikan data sesuai dengan surat masuk maupun surat keluar</li><br />
				<li>Klik tombol simpan untuk menyimpan data</li><br />
				<li>Data yang telah disimpan dapat direkap dengan menu Buku Agenda dan pilih tanggal yang akan di cetak</li><br />
				</ol>
		</div>
		-->


      </div>
