<table class="table table-striped">
  <tr>
    <th>No</th>
    <th>Nama</th>
    <th>Jurusan</th>
    <th>Lulusan</th>
  </tr>
<?php
  if($get_alumni){
    $no = 1;
    foreach($get_alumni as $row_alumni){
?>
  <tr>
    <td><?=$no;?></td>
    <td><a x href='front/cv_alumni/<?=$row_alumni['user'];?>'><?=$row_alumni['nama_siswa']?></a></td>
    <td><?=$row_alumni['nama_jurusan']?></td>
    <td><?=$row_alumni['lulusan']?></td>
  </tr>
<?php
    $no++;
  }}else{
   echo "<tr><td colspan='4'><h2>Data alumni tidak ada</h2></td></tr>";
  }
?>
</table>
<?php
  echo $this->pagination->create_links();
?>