<?php 
if(isset($data)) {
  $result = empty($data) ? 'search_false.php' : 'search_true.php';
}
?>
<form  method="get">
    <input type="hidden" name="page" value="search">
  <div class="row"> 
    <div class="col">
      <input type="text" class="form-control" placeholder="Nhâp từ khóa" name="key" autocomplete="off">
    </div>
    <div class="col">
    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
    </div>
  </div>
</form>
<?php
  if(isset($_GET['key'])) {
    require $result;
  }
?>