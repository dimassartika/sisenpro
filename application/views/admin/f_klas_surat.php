<?php
$mode		= $this->uri->segment(3);

if ($mode == "edt" || $mode == "act_edt") {
	$act			= "act_edt";
	$id_acara		= $datpil->id_acara;
	$nama			= $datpil->nama_acara;	
	$jenis_acara	= $datpil->jenis_acara;
	$tanggal_acara	= $datpil->tanggal_acara;	
} else {
	$act			= "act_add";
	$id_acara			= "";
	$nama			= "";	
	$jenis_acara	= "";
	$tanggal_acara	= "";
}
?>
<div class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Jenis Acara
</a>
		</div>
	</div><!-- /.container -->
</div><!-- /.navbar -->

<?php echo $this->session->flashdata("k_passwod");?>
	
<form action="<?=base_URL()?>admin/klas_surat/<?php echo $act; ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	<input type="hidden" name="id_acara" value="<?php echo $id_acara; ?>">
	<table width="100%" class="table-form">
	<tr><td width="20%">Nama Acara</td><td><b><input type="text" name="nama_acara" required value="<?php echo $nama; ?>" style="width: 200px" class="form-control"></b></td></tr>		
	<tr><td width="20%">Jenis Acara</td><td><b><textarea name="jenis_acara" required style="width: 600px; height: 200px" class="form-control"><?php echo $jenis_acara; ?></textarea></b></td></tr>		
	<tr><td width="20%">Tanggal Acara</td><td><b><textarea name="tanggal_acara" input type="text" required value="<?php echo $tanggal_acara; ?>" id="tanggal_acara" style="width: 100px" class="form-control"><?php echo $tanggal_acara; ?></textarea></b></td></tr>
	
	<tr><td colspan="2">
	<br><button type="submit" class="btn btn-primary">Simpan</button>
	<a href="<?=base_URL()?>admin/klas_surat" class="btn btn-success">Kembali</a>
	</td></tr>
	</table>
</form>