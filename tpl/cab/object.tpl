<div class="main-content">
    <!-- Top navbar -->
    <?php include ('tpl/cab/tpl_header.tpl'); ?>
    <!-- Header -->

    <div class="modal" id="deleteModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Внимание!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Вы хотите удалить объект: <?=$object['name']?></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена</button>
                    <a  class="btn btn-danger" href="?id=<?=$object['id']?>&action=delete">Удалить</a>
                </div>
            </div>
        </div>
    </div>

    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
        <?php if (isset($msg)) { ?>
            <div class="row" style="padding-left: 40px; padding-right: 40px;">
                <div class="col-sm-8">
                    <div class="alert alert-<?=$msg['type']?> alert-dismissible fade show" role="alert">
                        <span class="alert-inner--icon"></span>
                        <span class="alert-inner--text"><?=$msg['text']?></span>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col">
                <div class="card shadow">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h1 class="mb-0"><?=$title?></h1>
                            </div>

                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <form enctype="multipart/form-data" method="POST">

                                    <div class="form-group">
                                        <label for="name">Название</label>
                                        <input type="text" name="name" id="name" class="form-control" value="<?=$object['name']?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="type">Тип объекта</label>
                                        <select name="type" class="form-control" id="type">
                                            <?php foreach($object_types as $object_type) {
                                                if ($object['type'] == $object_type['id']) {
                                                    $selected = 'selected';
                                                } else {
                                                    $selected = '';
                                                }
                                                ?>

                                                <option value="<?=$object_type['id']?>" <?=$selected?>><?=$object_type['name']?></option>
                                            <?php } ?>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="category">Категория сделки</label>
                                        <select name="category" class="form-control" id="category">
                                            <?php foreach($object_categories as $object_category) {
                                                if ($object['category'] == $object_category['id']) {
                                                    $selected = 'selected';
                                                } else {
                                                    $selected = '';
                                                }
                                                ?>

                                                <option value="<?=$object_category['id']?>" <?=$selected?>><?=$object_category['name']?></option>
                                            <?php } ?>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Адрес точный</label>
                                        <input type="text" name="address" id="address" class="form-control" value="<?=$object['address']?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="address_approx">Адрес приблизительный</label>
                                        <input type="text" name="address_approx" id="address_approx" class="form-control" value="<?=$object['address_approx']?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="description">Описание</label>
                                        <textarea name="description" class="form-control" id="description" rows="3"><?=$object['description']?></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="price">Цена</label>
                                        <input type="number" name="price" id="price" class="form-control" value="<?=$object['price']?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="area_premises">Площадь помещения (м<sup>2</sup>)</label>
                                        <input type="number" name="area_premises" id="area_premises" class="form-control" value="<?=$object['area_premises']?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="area_plot">Площадь участка (сот.)</label>
                                        <input type="number" name="area_plot" id="area_plot" class="form-control" value="<?=$object['area_plot']?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="comment">Внутренний комментарий</label>
                                        <textarea name="comment" class="form-control" id="comment" rows="3"><?=$object['comment']?></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="photos">Фото объекта</label>
                                        <div class="row">
                                            <?php if(isset($objects_photo)) {
                                                foreach($objects_photo as $object_photo) {?>
                                                    <div class="col">
                                                        <img src="<?=$object_photo['path']?>" style="width: 100%; aspect-ratio: 4 / 3;"><br>
                                                        <?php if ($object_photo['is_master']) { ?>
                                                            <a class="btn btn-success" style="width: 100%; color: #fff; border-radius: 0px;">Главное</a>
                                                        <?php } else {?>
                                                            <a class="btn btn-dark" href="?id=<?=$object['id']?>&action=set_def_photo&photo=<?=$object_photo['id']?>" style="width: 100%; color: #fff; border-radius: 0px;">Сделать главным</a>
                                                        <?php } ?>
                                                        <a class="btn btn-danger"  href="?id=<?=$object['id']?>&action=del_photo&photo=<?=$object_photo['id']?>" style="width: 100%; color: #fff; border-top-left-radius: 0px;border-top-right-radius: 0px;"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                    </div>
                                                <?php }
                                            }?>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="photos">Загрузка фото</label>
                                        <input type="file" name="photos[]" id="photos" class="form-control" multiple>
                                    </div>

                                    <br>
                                    <button type="submit" class="btn btn-primary">Сохранить</button>
                                    <a class="btn btn-primary" href="objects">Закрыть</a>
                                    <?php if (!isset($_GET['action'])) { ?>

                                    <!--a class="btn btn-danger" href="?id=<?=$object['id']?>&action=delete">Удалить</a-->
                                    <a class="btn btn-danger" href="#" data-toggle="modal" data-target="#deleteModal">Удалить</a>
                                    <?php } ?>

                                </form>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </div>

        <?php include ('tpl/cab/tpl_footer.tpl'); ?>
    </div>
</div>
