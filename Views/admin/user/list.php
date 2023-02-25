<div class="alert alert-success" role="alert">
    <h2>QUẢN LÝ KHÁCH HÀNG</h2>
</div>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">ID</th>
        <th scope="col">Username</th>
        <th scope="col">Email</th>
        <th scope="col">Role</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody class="table-group-divider">
    <?php foreach ($results as $key => $value){ ?>
        <tr>
            <th scope="row"><input type="checkbox"></th>
            <td><?php echo $value['id'] ?></td>
            <td><?php echo $value['username'] ?></td>
            <td><?php echo $value['email'] ?></td>
            <td><?php echo $value['role'] ?></td>
            <td>
                <button type="button" class="btn btn-danger" onclick="
                    const result = confirm('Bạn có chắc chắn muốn xóa không?');
                    if(result){
                    location.href='?page=user&deleteId=<?php echo $value["id"]; ?>'
                    }">Xóa</button>
            </td>
        </tr>
    <?php } ?>
    </tbody>
</table>
<div class="actions" style="margin-top: 10px;">
    <button type="submit" class="btn btn-outline-secondary" name="btn-add">Chọn tất cả</button>
    <button type="submit" class="btn btn-outline-secondary" name="btn-add">Xóa tất cả các mục đã chọn</button>
</div>

