<div class="main-content">
    <!-- Top navbar -->
    <?php include ('tpl/cab/tpl_header.tpl'); ?>
    <!-- Header -->
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
                                <h1 class="mb-0">Объекты</h1>
                            </div>
                            <div class="col text-right">
                                <a class="btn btn-success" href="object?&action=new">+</a>
                            </div>

                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <!--Строка поиска (одна строка для поиска по названию, адресу, описанию, комментарию, цене), фильтр категории(аренда, продажа)<br>-->
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Ведите поисковой запрос" aria-label="Serch" aria-describedby="basic-addon1">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa fa-search" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <h4>Список объектов</h4>
                        </div>

                        <style>
                            .object-row{
                                padding: 10px;
                            }
                            .object-row:hover {
                                background: #eee;
                            }
                        </style>


                            <div class="row">
                                <div class="col" id="objects-table">
                                    <?php
                                        foreach ($objects as $object) {
                                    ?>
                                            <a href="object?id=<?=$object['id']?>">
                                                <div class="row object-row">
                                                    <div class="col-2"><img style="width: 100px; height: 100px" src="<?=$core->getObjectMasterPhoto($object['id'])?>"></div>
                                                    <div class="col-3">
                                                        <b><?=$object['name']?></b>
                                                        <br>
                                                        <i><?=$object['address']?></i>
                                                    </div>
                                                    <div class="col-4"><?=$object['description']?></div>
                                                    <div class="col-3"><?=$object['comment']?></div>
                                                </div>
                                            </a>
                                    <?php
                                        }
                                    ?>


                                </div>
                            </div>

                    </div>

                </div>
            </div>
        </div>

        <?php include ('tpl/cab/tpl_footer.tpl'); ?>
    </div>
</div>
