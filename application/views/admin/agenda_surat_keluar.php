<html>
<head>
<style type="text/css" media="print">
	table {border: solid 1px #000; border-collapse: collapse; width: 100%}
	tr { border: solid 1px #000; page-break-inside: avoid;}
	td { padding: 7px 5px; font-size: 10px}
	th {
		font-family:Arial;
		color:black;
		font-size: 12px;
		background-color:black;
	}
	thead {
		display:table-header-group;
	}
	tbody {
		display:table-row-group;
	}
	h3 { margin-bottom: -17px }
	h2 { margin-bottom: 0px }
</style>
<style type="text/css" media="screen">
	table {border: solid 1px #000; border-collapse: collapse; width: 100%}
	tr { border: solid 1px #000}
	th {
		font-family:Arial;
		color:black;
		font-size: 11px;
		background-color: #fff;
		padding: 8px 0;
	}
	td { padding: 7px 5px;font-size: 10px}
	h3 { margin-bottom: -17px }
	h2 { margin-bottom: 0px }
</style>
<title>Cetak Agenda Surat Keluar</title>
</head>

<body onload="window.print()">
	<center></img><b style="font-size: 20px">AGENDA SURAT KELUAR</b><br>
	Dari tanggal <b><?php echo tgl_jam_sql($tgl_start)."</b> sampai dengan tanggal <b>".tgl_jam_sql($tgl_end)."</b>"; ?>
    </center><br>
	
	<table border="1">
		<thead>
			<tr>
				<th width="3%">No</td>
				<th width="8%">Kode Klasifikasi</td>
				<th width="25%">Perihal</td>
				<th width="22%">Tujuan Surat</td>
				<th width="17%">Nomor Surat</td>
				<th width="7%">Tgl. Surat</td>
				<th width="10%">Pengolah</td>
				<th width="8%">Ket</td>
			</tr>
		</thead>
		<tbody style='text-align: center'>
			<?php 
			if (!empty($data)) {
				$no = 0;
				foreach ($data as $d) {
					$no++;
			?>
			<tr>
				<td><?php echo $no; ?></td>
				<td><?php echo $d->kode; ?></td>
				<td><?php echo $d->isi_ringkas; ?></td>
				<td><?php echo $d->tujuan; ?></td>
				<td><?php echo $d->no_surat; ?>/<?php echo $d->no_surat1; ?>/<?php echo $d->no_surat2; ?>/<?php echo $d->no_surat3; ?>/<?php echo $d->no_surat4; ?></td>
				<td><?php echo tgl_jam_sql($d->tgl_surat); ?></td>
				<td><?php echo gval("t_admin", "id", "nama", $d->pengolah); ?></td>
				<td><?php echo $d->keterangan; ?></td>
			</tr>
			<?php 
				}
			} else {
				echo "<tr><td style='text-align: center' colspan='9'>Tidak ada data</td></tr>";
			}
			?>
		</tbody>
	</table>
</body>
</html>

