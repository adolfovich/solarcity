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
                                <h1 class="mb-0">Настройки сайта</h1>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <style>
                            .setting-row {
                                padding: 10px;
                                border-bottom: 1px solid #eee;
                            }
                            .setting-row:hover {
                                background: #f8f9fa;
                            }
                        </style>

                        <form method="post">
                            <div id="settings-table">
                                <?php
                                foreach ($settings as $setting) { 
                                ?>
                                    <div class="row setting-row">
                                        <div class="col-md-3">
                                            <b><?=$setting['description']?></b> <!-- Отображаем описание из массива -->
                                        </div>
                                        <div class="col-md-9">
                                            <input type="text" name="<?=$setting['name']?>" id="<?=$setting['id']?>" class="form-control" value="<?=$setting['data']?>"> <!-- Отображаем значение настройки из массива -->
                                        </div>
                                    </div>
                                <?php
                                }
                                ?>
                            </div>
                            <br>
                            <button type="submit" class="btn btn-primary">Сохранить</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <?php include ('tpl/cab/tpl_footer.tpl'); ?>
    </div>
</div>