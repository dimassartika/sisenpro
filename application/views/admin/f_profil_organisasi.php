
<div class="navbar navbar-inverse">
	<div class="container" style="z-index: 0">
		<div class="navbar-header">
			<span class="navbar-brand" href="#">Profil Organisasi</span>
		</div>
	</div><!-- /.container -->
</div><!-- /.navbar -->
	
	<form action="#" method="post" accept-charset="utf-8" enctype="multipart/form-data">
		<!--actionnya ganti ke admin/profil_organisasi -->
	
	<input type="hidden" name="idp" value="">
	
	<div class="row-fluid well" style="overflow: hidden">
	
	<div class="col-lg-12">
		<table width="100%" class="table-form center">
		<tr><td width="30%">Nama Organisasi</td><td><b><input type="text" name="nama_organisasi" required value="" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Ketua Organisasi</td><td><b><input type="text" name="ketua_organisasi" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>		
		
		<tr><td width="30%">Wakil Ketua Organisasi</td><td><b><textarea name="wakil_ketua" required style="width: 75%; height: 60px" class="form-control"></textarea></b></td></tr>
		<tr><td width="30%">Sekretaris 1</td><td><b><input type="text" name="sekretaris_1" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Sekretaris 2</td><td><b><input type="text" name="sekretaris_2" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Bendahara 1</td><td><b><input type="text" name="bendahara_1" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Bendahara 2</td><td><b><input type="text" name="bendahara_2" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Divisi 1</td><td><b><input type="text" name="divisi_1" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Divisi 2</td><td><b><input type="text" name="divisi_2" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Divisi 3</td><td><b><input type="text" name="divisi_3" required value="" id="dari" style="width: 75%" class="form-control"></b></td></tr>
		<tr><td width="30%">Logo Organisasi</td><td><b><input type="file" name="logo_organisasi" class="form-control" style="width: 75%"></b></td></tr>
		<tr><td width="30%">Struktur Organisasi</td><td><b><input type="file" name="struktur_organisasi" class="form-control" style="width: 75%"></b></td></tr>
		<tr><td colspan="2">
		<br><button type="submit" class="btn btn-primary" tabindex="9">Simpan</button>
		<a href="#" class="btn btn-success" tabindex="9">Kembali</a>
		</td></tr>
		</table>
	</div>
	
	</div>
	
	</form>