<?php 
$q_instansi	= $this->db->query("SELECT * FROM tr_instansi LIMIT 1")->row();
?>

<html>
<head>
<style type="text/css" media="print">
	table {border: solid 1px #000; border-collapse: collapse; width: 100%}
	tr { border: solid 1px #000}
	td { padding: 7px 5px}
	h3 { margin-bottom: -17px }
	h2 { margin-bottom: 0px }
</style>
<style type="text/css" media="screen">
	table {border: solid 1px #000; border-collapse: collapse; width: 60%}
	tr { border: solid 1px #000}
	td { padding: 7px 5px}
	h3 { margin-bottom: -17px }
	h2 { margin-bottom: 0px }
</style>
</head>

<body onLoad="window.print()">
<table>
	<tr><td colspan="3">
    <img class="thumbnail span3" style="display: inline; float: left; margin-right: 20px; width: 100px; height: 100px" src="http://localhost/masmatik/aset/img/UNIVERSITAS-NEGERI-JAKARTA.png"></img></img>
	<h2 style="font-size:17px"><center>JURUSAN MATEMATIKA<br>
	FAKULTAS MATEMATIKA DAN ILMU PENGETAHUAN ALAM<br>
	UNIVERSITAS NEGERI JAKARTA</center></h2>
	<!--<h2><?php echo $q_instansi->nama; ?></h2>-->
	<center><?php echo $q_instansi->alamat; ?></center>	
	</td>
	</tr>
	
	<tr><td colspan="3" align="center" style="padding: 15px 0"><b style="font-size: 18px;">LEMBAR DISPOSISI</b></td></tr>
	<tr><td width="25%"><b>Indeks Berkas</b></td><td width="50%">: <?php echo $datpil1->indek_berkas; ?></td><td><b>Kode : </b><?php echo $datpil1->kode; ?></td></tr>
	<tr><td width="25%"><b>Tanggal/Nomor</b></td><td colspan="2">: <?php echo tgl_jam_sql($datpil1->tgl_surat)." / ".$datpil1->no_surat; ?></td></tr>
	<tr><td><b>Asal Surat</b></td><td colspan="2">: <?php echo $datpil1->dari; ?></td></tr>
	<tr><td><b>Perihal</b></td><td colspan="2">: <?php echo $datpil1->isi_ringkas; ?></td></tr>
	<tr><td><b>Diterima Tanggal</b></td><td colspan="2">: <?php echo tgl_jam_sql($datpil1->tgl_diterima); ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>No. Agenda &nbsp;&nbsp; </b> ( <?php echo $datpil1->no_agenda; ?> ) </td></tr>
	<tr><td colspan="3"><b>Tanggal Penyelesaian </b>: </td></tr>
	<tr><td style="height: 350px" valign="top" colspan="2"><b>Isi Disposisi :  
	
	</b></td><td valign="top" width="50%" style="border-left: solid 1px">
	Diteruskan kepada  : 
	<ol>
	<?php 
	if (!empty($datpil2)) {
		foreach ($datpil2 as $dp) {
			echo "<li>".$dp->kpd_yth."</li>";
		}
	}
	?>
	</ol>
	</td></tr>
	<tr><td colspan="3" style="line-height: 30px">Sesudah digunakan harap dikembalikan<br>
	Kepada : ........................................................................................................................................<br>
	Tanggal : ........................................................................................................................................<br>
	</td></tr>
</table>
</body>
</html>