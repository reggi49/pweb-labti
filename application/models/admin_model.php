<?php
Class Admin_model extends CI_Model
{
 function login($username, $password)
 {
   $this -> db -> select('id, username, password');
   $this -> db -> from('user');
   $this -> db -> where('username', $username);
   $this -> db -> where('password', $password);
   $this -> db -> limit(1);

   $query = $this -> db -> get();

   if($query -> num_rows() == 1)
   {
     return $query->result();
   }
   else
   {
     return false;
   }
 }
 public function tampil_data_berita($kode)
    {
  if ($kode=='all'){
   $hasil=$this->db->get('berita');
  }else{
   $this->db->where('id',$kode);
   $hasil=$this->db->get('berita');
  }
        return $hasil->result();
    }
 public function simpan_data_berita($data)
 {
  if ($data['mode']=='baru'){
   unset($data['mode']);
   $hasil=$this->db->insert('berita', $data); 
  }else{
   unset($data['mode']);
   $this->db->where('id',$data['id']);
   $hasil=$this->db->update('berita', $data); 
  }
  return $hasil;
 }
 public function hapus_data_berita($kode)
 {
  $this->db->where('id', $kode);
  $hasil=$this->db->delete('berita');
  return $hasil;
 }
public function list_berita()
{
 {
        $query = $this->db->query('select * from berita order by id desc limit 20');
        //lihat apakah ada data dalam tabel
        $num = $query->num_rows();
        if($num>0){
            //Mengirimkan data array hasil query
            return $query->result();
            //Function result() hampir sama dengan function mysql_fetch_array()
        }
        else{
            return 0;
            //Kirimkan 0 jika tidak ada datanya
        }
    }
}
}
?>