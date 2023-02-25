
<div class="lists-product">
        <div class="row g-4">
            <?php foreach ($data as $key => $value) { ?>
            <div class="col-4">
                <div class="card w-100">
                    <a href="?page=detail&idPro=<?php echo $value['id']; ?>">
                    <img style="height: 304px;" src="Views/images/<?php echo $value['image'];?>" class="card-img-top" alt="image product">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title" style="height: 48px;"><?php echo $value['name']; ?></h5>
                        <p style="color: red;font-weight: bold"><?php echo $value['price']; ?> $</p>
                        <p class="card-text"><?php echo $value['description']; ?></p>
                        <a href="?page=detail&idPro=<?php echo $value['id']; ?>" class="btn btn-primary">Xem ngay</a>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
</div>
