<?php
$mode		= $this->uri->segment(3);

if ($mode == "edt" || $mode == "act_edt") {
	$act		= "act_edt";
	$idp		= $datpil->id;
	$no_agenda	= $datpil->no_agenda;
	$kode		= $datpil->kode;
	$dari		= $datpil->tujuan;
	$no_surat	= $datpil->no_surat;
	$tgl_surat	= $datpil->tgl_surat;
	$uraian		= $datpil->isi_ringkas;
	$ket		= $datpil->keterangan;
	$no_surat1	= $datpil->no_surat1;
	$no_surat2	= $datpil->no_surat2;
	$no_surat3	= $datpil->no_surat3;
	$no_surat4	= $datpil->no_surat4;
	
	
	
} else {
	$act		= "act_add";
	$idp		= "";
	$no_agenda	= gli("t_surat_keluar", "no_agenda", 4);
	$kode		= "";
	$dari		= "";
	$no_surat	= "";
	$tgl_surat	= "";
	$uraian		= "";
	$ket		= "";
	$no_surat1	= "";
	$no_surat2	= "";
	$no_surat3	= "";
	$no_surat4	= "";
}
?>
<div class="navbar navbar-inverse">
	<div class="container" style="z-index: 0">
		<div class="navbar-header">
			<span class="navbar-brand" href="#">Surat Keluar</span>
		</div>
	</div><!-- /.container -->
</div><!-- /.navbar -->
	
	<form action="<?=base_URL()?>admin/surat_keluar/<?php echo $act; ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
	
	<input type="hidden" name="idp" value="<?php echo $idp; ?>">
	
	<div class="row-fluid well" style="overflow: hidden">
	
	<div class="col-lg-6">
		<table width="100%" class="table-form">
		<tr><td width="20%">No. Agenda</td><td><b><input type="text" name="no_agenda" required value="<?php echo $no_agenda; ?>" style="width: 100px" class="form-control"></b></td></tr>
		<tr><td width="20%">Tujuan Surat</td><td><b><input type="text" name="dari" required value="<?php echo $dari; ?>" id="dari" style="width: 400px" class="form-control"></b></td></tr>		
		<tr><td width="20%">Nomor Surat</td><td><b><input type="text" name="no_surat" required value="<?php echo $no_surat; ?>" style="width: 70px" ><b> / </b>
		<input type="text" name="no_surat1" required value="<?php echo $no_surat1; ?>" style="width: 70px" ><b> / </b>
		<input type="text" name="no_surat2" required value="<?php echo $no_surat2; ?>" style="width: 70px" ><b> / </b>
		<input type="text" name="no_surat3" required value="<?php echo $no_surat3; ?>" style="width: 70px" ><b> / </b>
		<input type="text" name="no_surat4" required value="<?php echo $no_surat4; ?>" style="width: 70px" ></b></td></tr>
		<tr><td width="20%">Perihal</td><td><b><textarea name="uraian" required style="width: 400px; height: 60px" class="form-control"><?php echo $uraian; ?></textarea></b></td></tr>	
		<tr><td colspan="2">
		<br><button type="submit" class="btn btn-primary" tabindex="9">Simpan</button>
		<a href="<?=base_URL()?>admin/surat_keluar" class="btn btn-success" tabindex="9">Kembali</a>
		</td></tr>
		</table>
	</div>
	
	<div class="col-lg-6">	
		<table width="100%" class="table-form">
			<tr><td width="20%">Kode Klasifikasi</td><td><b>
            	<?php $js='id="kode_surat" class="form-control" name="kode" style="width: 210px"'; echo form_dropdown('kode_surat', $list_kode_surat, set_value('kode_surat'), $js);?>
		</b></td></tr>
			<tr><td width="20%">Tanggal Surat</td><td><b><input type="text" name="tgl_surat" required value="<?php echo $tgl_surat; ?>" id="tgl_surat" style="width: 100px" class="form-control"></b></td></tr>	
			<tr><td width="20%">File Surat (Scan)</td><td><b><input type="file" name="file_surat" class="form-control" style="width: 200px"></b></td></tr>
			<tr><td width="20%">Keterangan</td><td><b><input type="text" name="ket" value="<?php echo $ket; ?>" style="width: 400px" class="form-control"></b></td></tr>				
		</table>
	</div>
	
	</div>
	
	</form>