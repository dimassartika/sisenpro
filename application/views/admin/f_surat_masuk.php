<?php
$mode		= $this->uri->segment(3);

if ($mode == "edt" || $mode == "act_edt") {
	$act		= "act_edt";
	$idp		= $datpil->id;
	$no_agenda	= $datpil->no_agenda;
	$indek_berkas= $datpil->indek_berkas;
	$kode		= $datpil->kode;
	$dari		= $datpil->dari;
	$no_surat	= $datpil->no_surat;
	$tgl_surat	= $datpil->tgl_surat;
	$uraian		= $datpil->isi_ringkas;
	$ket		= $datpil->keterangan;
	
} else {
	$act		= "act_add";
	$idp		= "";
	$no_agenda	= gli("t_surat_masuk", "no_agenda", 4);
	$indek_berkas="";
	$kode		= "";
	$dari		= "";
	$no_surat	= "";
	$tgl_surat	= "";
	$uraian		= "";
	$ket		= "";
}
?>
<div class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<span class="navbar-brand" href="#">Surat Masuk</span>
		</div>
	</div><!-- /.container -->
</div><!-- /.navbar -->

	
	<form action="<?=base_URL()?>admin/surat_masuk/<?php echo $act; ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	
	<input type="hidden" name="idp" value="<?php echo $idp; ?>">
	
	
	<div class="row-fluid well" style="overflow: hidden">
		
	<div class="col-lg-6">
		<table  class="table-form">
		<tr><td width="20%">Nama Event</td><td><b><input type="text" name="nama_event" required value="<?php echo $no_agenda; ?>" style="width: 400px" class="form-control"></b></td></tr>
		<tr><td width="20%">Organisasi</td><td><b><input type="text" name="dari" required value="<?php echo $dari; ?>" id="dari" style="width: 400px" class="form-control"></b></td></tr>		
		<tr><td width="20%">Ketua Acara</td><td><b><input type="text" name="no_surat" required value="<?php echo $no_surat; ?>" style="width: 400px" class="form-control"></b></td></tr>	
		<tr><td width="20%">Tempat Acara</td><td><b><textarea name="uraian" required style="width: 400px; height: 90px" class="form-control"><?php echo $uraian; ?></textarea></b></td></tr>	
		<tr><td colspan="2">
		<br><button type="submit" class="btn btn-primary" tabindex="10">Simpan</button>
		<a href="<?=base_URL()?>admin/surat_masuk" class="btn btn-success" tabindex="10">Kembali</a>
		</td></tr>
		</table>
	</div>
	
	<div class="col-lg-6">	
		<table  class="table-form">
		
		<tr><td width="20%">Kode Klasifikasi</td><td><b>
            	<?php $js='id="kode_surat" class="form-control" name="kode" style="width: 210px"'; echo form_dropdown('kode_surat', $list_kode_surat, set_value('kode_surat'), $js);?>
		</b></td></tr>
		<tr><td width="20%">Tujuan Surat</td><td><b><input type="text" name="indek_berkas" required value="<?php echo $indek_berkas; ?>" style="width: 400px" class="form-control"></b></td></tr>
		<tr><td width="20%">Tanggal Acara</td><td><b><input type="text" name="tgl_surat" required value="<?php echo $tgl_surat; ?>" id="tgl_surat" style="width: 100px" class="form-control"></b></td></tr>	
		<tr><td width="20%">File Proposal (PDF)</td><td><b><input type="file" name="file_surat" class="form-control" style="width: 200px"></b></td></tr>
		<tr><td width="20%">Keterangan</td><td><b><input type="text" name="ket" value="<?php echo $ket; ?>" style="width: 400px" class="form-control"></b></td></tr>	
		</table>	
	</div>

	</div>
	
	</form>
