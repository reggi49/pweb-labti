<div class="konten">
		<div id="show">

	<div class="img1 slide" >
		<img src="<?php echo base_url(); ?>assets/images/1.png" width="750" height="326"><p class="desc">Pahlawan Cilik Berjuang Dengan Penuh Semangat</p>
	</div>
	<div class="img2 slide" >
		<img src="<?php echo base_url(); ?>assets/images/2.png" width="750" height="326" alt="image2" /><p class="desc">Perang Rakyat Aceh Melawan Para Penjajah</p>
	</div>
	<div class="img3 slide">
		<img src="<?php echo base_url(); ?>assets/images/3.jpg" width="750" height="326" alt="image3" /><p class="desc">Peristiwa Perobekan Bendera Belanda Di Surabaya Doelu Kala.</p>
	</div>
	<div class="img4 slide" >
		<img src="<?php echo base_url(); ?>assets/images/4.jpg" width="750" height="326" alt="image4" /><p class="desc"><strong>Merdeka!</strong> Pendahulu Kita Memeberikan Amanat untuk Terus Menjaga dan Meneruskan Perjuangan Mereka</p>
	</div>

		</div>

        
  </div>
    <!-- konten bawah -->
  <div class="clearfix"></div>
    <div class="konten">
      <div class="posting">
        <h3>Artikel terbaru</h3>
        
        <?php foreach($berita as $list) { ?>
<div class="ringkasan">
<h3><a href="<?php echo base_url() ?>home/read/<?php echo $list['slug']; ?>"><?php echo $list['judul']; ?></a></h3>
<?php echo $list['ringkasan']; ?>
</div>
<?php } ?>
      </div>
      <div class="anggota">
       <h3>Recent Post</h3>
       <ul>
         <?php foreach($berita as $list) { ?>
<li><a href="<?php echo base_url() ?>home/read/<?php echo $list['slug']; ?>"><?php echo $list['judul']; ?></a></li>
<?php } ?>
       </ul>
<p>&nbsp;</p>
        <p>
        </p>
              </div>
    </div>