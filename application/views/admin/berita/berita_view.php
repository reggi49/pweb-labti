<?php
echo "<h2>Tampil data berita</h2>";
echo "<table border=1>";
echo "<tr><th>kode berita</th> <th>judul berita</th> <th> content </th> <th>Aksi</th>";
foreach ($databerita as $isi)
    {
    echo "<tr>";
            echo "<td>$isi->id_berita</td>";
            echo "<td>$isi->judul</td>";
            echo "<td>$isi->isi</td>";
   echo "<td>";
   echo anchor('admin/berita/edit/'.$isi->id_berita, 'Edit')." | ";
   echo anchor('admin/berita/delete/'.$isi->id_berita, 'Hapus');
   echo "</td>";
    echo "</tr>";
    }
echo "</table>";
echo "<p>".anchor('admin/berita', 'Kembali')."</p>";
?>
