<div class="konten">
<h1>Menambah Artikel</h1>
<?php require_once('tinymce.php') ?>
<?php echo validation_errors(); ?>
<form name="form1" method="post" action="<?php echo base_url() ?>admin/berita/tambah" class="myform">
<p>
<label for="judul">Judul Artikel</label>
<input name="judul" type="text" id="judul" size="70">
</p>
<p>
<label for="ringkasan">Ringkasan Artikel</label>
<textarea name="ringkasan" id="ringkasan" cols="45" rows="5"></textarea>
</p>
<p>
<label for="isi">Isi Artikel</label>
<textarea name="isi" id="isi" cols="45" rows="5"></textarea>
</p>
<p>
<label for="status_berita">Status Artikel</label>
<select name="status_berita" id="status_berita">
<option value="Publish">Publikasikan</option>
<option value="Draft">Simpan</option>
</select>
<input name="id_user" type="hidden" id="id_user" value="1">
</p>
<p>
<input type="submit" name="submit" id="submit" value="Submit">
<input type="reset" name="submit2" id="submit2" value="Reset">
</p>
</form>
<p>&nbsp;</p>
</div>