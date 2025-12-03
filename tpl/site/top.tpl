<div class="section section105 bg_mode_color" style="	background-color:#fff;	;	--dropdown-menu-bg-color:#ffffff;	--dropdown-menu-text-color:#333333;	--dropdown-menu-border-color:#f1f1f1;	--dropdown-menu-hover-bg-color:#f8f9fa;	--dropdown-menu-hover-text-color:#333333;	--dropdown-menu-shadow:0 3px 10px rgba(0, 0, 0, 0.2);	--dropdown-menu-item-padding:4px 15px;	padding-top:20px;	padding-bottom:20px" data-id="1709038" id="b_1709038">
    <div class="section_inner all_border width1170">
        <div class="logo">
            <div class="logo_img"><img src="/assets/img/logo_top.png" loading="lazy"></div>
        </div>
        <div class="menu-and-phone-and-btn">
            <div class="phones-wrapper" style="--phone-text-color:;--phone-font-size:20px;--phone-font-weight:500;">
                <div class="phone1 zphone show_phone_icon"><a href="tel:<?=$core->cfgRead('site_phone')?>"><?=$core->cfgRead('site_phone')?></a></div>
            </div>
            <style>@media (max-width:960px){
                   .menu_mobile_btn{
                   display:block!important;
                   position:relative;
                   right:auto;
                   top:auto;
                   transform:none
                   }
                }
                   @media (max-width:640px){
                   .section105 .menu_mobile_btn{
                   top:50%;
                   transform:translateY(-50%)
                   }
                }
                    @media (max-width:400px){
                    .section105 .menu_mobile_btn.active{
                    left:unset;
                    right:20px;
                    z-index:106
                    }
                }
                </style>
            <div style="color:#000;background-color:rgba(0,0,0,0); margin-top: 20px;" class="menu_mobile_btn square new_burger">
                <svg width="800px" height="800px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M20 7L4 7" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                    <path d="M20 12L4 12" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                    <path d="M20 17L4 17" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                </svg>
            </div>
            <div class="menu1" style="font-size:16px;background-color:#fff;color:#333333;font-weight:300" >
                <ul>
                    <li class="level0 "><a href="/" title="ПОЧЕМУ МЫ">ГЛАВНАЯ</a></li>

                    <li class="level0 ">
                        <span style="padding: 7px;" onmouseover="showMenu('catalog')" onclick="showMenu('catalog'); return false;">КАТАЛОГ</span>
                        <div class="new_menu catalog" onmouseout="hideMenu('catalog')" style="display: none; position: absolute; background: #fff; z-index: 1; -webkit-box-shadow: 0px 8px 11px 6px rgba(34, 60, 80, 0.2);
-moz-box-shadow: 0px 8px 11px 6px rgba(34, 60, 80, 0.2); box-shadow: 0px 8px 11px 6px rgba(34, 60, 80, 0.2); margin-top: 10px; margin-left: 30px;">
                            <ul style="padding: 20px;">
                                <?php foreach($objects_types as $objects_type) {?>
                                    <li class="level1 " style="margin-top: 10px;"><a style="padding-top: 10px; text-transform: uppercase; text-decoration: none;" href="/catalog?type=<?=$objects_type['id']?>"><?=$objects_type['name']?></a></li>

                                <?php } ?>
                            </ul>
                        </div>
                    </li>
                    <li class="level0 "><a href="/contacts" title="КОНТАКТЫ">КОНТАКТЫ</a></li>
                    <li class="level0 "><a href="/cab" title="КАБИНЕТ">КАБИНЕТ</a></li>
                </ul>
            </div>
            <script>
                function showMenu(name){
                    $("."+name).show();
                    return false;
                }
                function hideMenuClick(name){
                    $("."+name).hide();
                    console.log("click");
                    return false;
                }
                function hideMenu(name) {
                    $("."+name).on("mouseout", function(e) {
                        // Проверяем, находится ли курсор вне родительского элемента и его дочерних элементов
                        if (!$(e.relatedTarget).closest($("."+name)).length) {
                            // Код, который будет выполнен, если курсор ушел из области элемента
                            $("."+name).hide();
                        }
                    });
                    return false;

                }
            </script>
        </div>
    </div>
</div>