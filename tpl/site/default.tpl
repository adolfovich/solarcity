<!DOCTYPE html>
<html lang="ru-ru"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <!-- 9850040ab6b48d270a7dae24c0d1bd31 -->
    <!-- 2025-10-08 -->

    <link rel="stylesheet" href="/assets/css/normalize.min.css" media="screen">
    <link rel="stylesheet" href="/assets/css/modules/modal.min.css" media="screen">
    <link rel="stylesheet" href="/assets/css/modules/forms.min.css?ver=1755584299" media="screen">
    <link rel="stylesheet" href="/assets/css/modules/icons.min.css?ver=1711785129" media="screen">

    <script type="text/javascript" src="/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="/assets/js/tools/astc.min.js?ver=1756884037"></script>


    <script>
        $(function(){
            window.modal = {
                getModal: function(title = 'Заголовок',  descr='Описание', modal_class = '') {
                    var modal_template = `
							<div class="modal_bg">
								<div class="modal_body ${modal_class}">
									<div class="modal_close"><i class="fa fa-times"></i></div>
									<div class="modal_inner">
										<div class="modal_title">${title}</div>
										<div class="modal_descr">${descr}</div>
									</div>
								</div>
							</div>`;
                    $('body').append(modal_template);
                    $('body').addClass('modal2');
                },
                init: function() {
                    $('body').on('click', '.modal_close', function(){
                        $(this).parent().parent().remove();
                        $('body').removeClass('modal2');
                    });
                    $('body').on('click', '.modal_body', function(e){
                        e.stopPropagation();
                    });
                    $('body').on('click', '.modal_bg', function(e){
                        $(this).find('.modal_close').click();
                    });
                }
            };
            window.modal.init();
        });
    </script>


    <script type="text/javascript" src="/assets/js/underscore-min.js"></script>

    
        <script>window.tobiz = {"project_id":"132232","project_domain":"","project_editor_link":"https:\/\/132232.lp.tobiz.net\/?v=179854&editor=true","page_title":"\u0428\u0430\u0431\u043b\u043e\u043d \u0441\u0430\u0439\u0442\u0430 \u0434\u0435\u0440\u0435\u0432\u044f\u043d\u043d\u044b\u0445 \u0434\u043e\u043c\u043e\u0432","page_dir":"","personal_seo_configs":"0","seo_title":"","seo_keywords":"","seo_description":"","OG_image":"","access_control":"0","valid_login":"","valid_password":"","pp":"0","rep_id":"179854","user_id":"2","user_access_level":"9","owner_email":"mail@mail.ru","user_email":"templates@tobiz.net","user_pnf":"0.00","bs":true,"t":"5","free":0,"check_mailment_agreement":"0","form_policy_text":null,"courses_on":"0","products_on":"0","articles_on":"0","page_config":{"title_font":"Montserrat, sans-serif","link_color":"#475a64","btn_shadow":"6","text_font":"Montserrat, sans-serif","text_fontsize":"17px","text_fweight":"400","price_font":"Montserrat, sans-serif","menu_font":"Montserrat, sans-serif","btn_font":"Montserrat, sans-serif","btn_bg":"#f9c000"},"showIntro":0,"w":1,"basket_conf":null}</script>
    
        <!-- Tobiz styles -->
    <link rel="stylesheet" href="/assets/css/style.min.css?ver=1759155988" media="screen">	<style>.section105.section{--section105-logo-width:200px;--section105-inner-gap-Y:14px;--section105-inner-gap-X:26px;--section105-inner-gap:var(--section105-inner-gap-Y) var(--section105-inner-gap-X);padding:15px 0}.section105.section.fixed_top{z-index:101;padding:15px 0}.section105.section.fixed_top.scrolled-down{padding:10px 0!important}.section105 .section_inner{display:flex;align-items:center;justify-content:space-between;gap:var(--section105-inner-gap)}.section105 .clear,.section105 .hide_phone .phone1,.section105 .hide_phone .phones-wrapper,.section105 .sn.hidden,.section105 .social_icons.hidden{display:none}.section105 .section_inner.width1920{width:90%}.section105 a.phone1:hover{opacity:.7}.section105 .flag_txt{margin:0 10px;max-width:70px;overflow:hidden;white-space:nowrap}.section105 .menu-and-phone-and-btn{display:flex;align-items:center;flex-wrap:wrap;justify-content:flex-end;gap:12px 24px}.section105 .btn1,.section105 .phones-wrapper{flex-shrink:0}.section105 .flag_icons,.section105 .social_icons{display:flex;flex-wrap:wrap;align-items:center;gap:12px;flex-shrink:0}.section105 .logo_img,.section105 .logo_text{text-align:left;margin-left:0;width:var(--section105-logo-width);flex-shrink:0}.section105 .logo_text{font-size:24px;display:block}.section105 .menu1{order:1;box-sizing:border-box}.section105 .menu1>ul{margin:0;padding:0;list-style:none;display:flex;flex-wrap:wrap;align-items:center;justify-content:flex-end}.section105 .menu1>ul>li{padding:0;display:inline}.section105 .menu1>ul>li.level0:not(:first-child):before{content:"○";font-size:10px;padding:8px;position:relative;top:-3px}.section105 .menu1>ul>li:first-child:before{content:""}.section105 .menu1>ul>li>a{color:inherit;text-decoration:none;padding:15px 0;transition:.3s}.section105 .btn1{order:4;max-width:250px;min-width:130px;padding:.675rem 1.525rem;border:2px solid;box-sizing:border-box;line-height:1}.section105 .btn1.surround{border-color:transparent}.section105 .phones-wrapper{order:5;display:flex;flex-direction:column;align-items:flex-end;min-width:160px;gap:10px 0}.section105 .phone1,.section105 .phone2{order:5;font-size:22px;text-align:right;line-height:1.35;text-decoration:none}.section105 a.phone1,.section105 a.phone2{color:inherit!important}.section105 .phone1.show_phone_icon:before,.section105 .phone2.show_phone_icon:before{content:"\f095";padding-right:5px;display:inline-block;font:14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.section105 .section_inner.width940 .menu-and-phone-and-btn{flex-basis:calc(var(--section-inner-width) - var(--section105-logo-width) - var(--section105-inner-gap-X))}.section105 .sn{display:block;width:28px;height:28px;line-height:28px;font-size:18px;text-align:center;font-family:FontAwesome;color:#fff;text-decoration:none;transition:.3s}.section105 .sn-tg{background-color:#08c}.section105 .sn-tg:after{content:'\f1d9'}.section105 .sn-vk{background:#507299}.section105 .sn-vk:after{content:''}.section105 .sn-ins{background:#f8cc01;background:-o-linear-gradient(45deg,#f8cc01 0,#e8102b 51%,#7d39b0 100%);background:linear-gradient(45deg,#f8cc01 0,#e8102b 51%,#7d39b0 100%)}.section105 .sn-ins:after{content:''}.section105 .sn-whatsup{background:#3ebe2b}.section105 .sn-whatsup:after{content:''}.section105 .sn-fb{background:#405d9a}.section105 .sn-fb:after{content:''}.section105 .sn-youtube{background:#e62117}.section105 .sn-youtube:after{content:''}.section105 .sn-o:after{content:''}.section105 .sn-o{background:#ee7808}.section105 .sn-vimeo:after{content:"\f27d"}.section105 .sn-vimeo{background:#00adef}.section105 .sn-viber svg{max-width:70%;max-height:70%;width:20px;height:20px}.section105 .sn-viber{display:flex;align-items:center;justify-content:center;background-color:#7d3daf}.section105 .social_icons.icon-circle .sn{border-radius:50%}.section105 .sn:hover{font-size:19px;opacity:.8}.section105 .flag_icons .sn:hover{filter:invert(.1)}.section105 .sn-rus{background:url(/img/editor_icons/russia.svg) 0 0/100%}.section105 .sn-uk{background:url(/img/editor_icons/united-kingdom.svg) 0 0/100%}.section105 .sn-france{background:url(/img/editor_icons/france.svg) 0 0/100%}.section105 .sn-spain{background:url(/img/editor_icons/spain.svg) 0 0/100%}.section105 .sn-germany{background:url(/img/editor_icons/germany.svg) 0 0/100%}.section105 .sn-italy{background:url(/img/editor_icons/italy.svg) 0 0/100%}.section105 .sn-china{background:url(/img/editor_icons/china.svg) 0 0/100%}.section105 .menu_mobile_btn{display:block}@media (min-width:640px) and (max-width:960px){.section105 .section_inner{padding-right:70px;box-sizing:border-box}}@media (max-width:960px){.section105 .section_inner{flex-wrap:wrap}.section105 .menu1,.section105 .menu1 li{box-sizing:border-box;width:100%}.section105 .menu1 ul{flex-wrap:wrap;justify-content:center}.section105.dark .menu1{background:#333}.section105 .menu1{padding:40px;opacity:0;position:fixed;top:0;background:#fff;z-index:30;height:100%;overflow:auto;left:-110%;transition:.5s;max-width:360px;box-shadow:0 0 20px 4px rgba(0,0,0,.19),0 6px 6px 4px rgba(0,0,0,.23);margin-top:0;flex-direction:column;gap:20px}.section105 .menu1.active{display:flex!important;width:100%;opacity:1;left:0;z-index:105;margin:0}.section105 .menu1 li{margin-left:0;display:block;text-align:left;font-size:16px}.section105 .menu1 .phone1,.section105 .menu1 .phone2{text-align:left;margin-bottom:1rem;position:static;margin-left:7px}.section105 .menu1 .logo_img,.section105 .menu1 .logo_text{margin-left:7px;margin-bottom:20px;text-align:left}.section105 .menu1.active .logo_img,.section105 .menu1.active .logo_text{margin:0 0 2rem}.section105 .menu1.active ul{width:100%}.section105 .menu_mobile_btn{display:block!important;position:relative;right:auto;top:auto;transform:none}.section105 .menu_mobile_btn.active{position:fixed;top:10px;left:320px;background:url(/img/editor_icons/cancel.svg) center/70% no-repeat;z-index:106;width:35px;height:35px;transform:translate(0,0)}.section105 .menu1 ul>li>a{border:none;display:block;padding:10px 7px}.section105 .menu1>ul>li{font-size:15px;font-weight:400;text-transform:uppercase;margin-bottom:0;border-bottom:none}.section105 ul{display:block;justify-content:space-between;flex-wrap:wrap}.section105 .flag_icons,.section105 .menu1 li.level0:before,.section105 .social_icons{display:none}.section105 .logo_text{width:230px;text-align:left}.section105 .phone1,.section105 .phone2{display:block;width:auto;text-align:center}.section105 .menu1 .flag_icons,.section105 .menu1 .social_icons{display:flex}}@media (max-width:800px){.section105 .logo_img,.section105 .logo_text,.section105 .phone1,.section105 .phone2{text-align:center}.section.section105{padding:20px 0}.section105 .social_icons{flex-wrap:wrap;width:150px;margin-top:5px}}@media (max-width:640px){.section105 .section_inner{flex-direction:column;align-items:center}.section105 .section_inner,.section105 .section_inner.width1170,.section105 .section_inner.width1920{flex-wrap:wrap}.section105 .logo_text{width:100%;transform:none;font-size:22px}.section105 .menu-and-phone-and-btn{align-items:center;flex-direction:column}.section105 .phone1,.section105 .phone2{text-align:right;position:relative}.section105 .menu_mobile_btn{top:50%;transform:translateY(-50%)}.section105 .phone1.show_phone_icon:before,.section105 .phone2.show_phone_icon:before{position:absolute;left:-20px;line-height:inherit}.section105{padding:20px 0!important}.section105 .logo_img,.section105 .logo_text{margin-right:0}.section105.fixed_top .logo_img{display:none}}@media (max-width:480px){.section105 .logo_img,.section105 .logo_text{margin:0}.section105 .phone1 *,.section105 .phone2 *{font-size:24px}.section105 .menu1 ul li{width:100%}.section105 .logo_text{max-width:140px}}@media (max-width:440px){.section105 .phone1.show_phone_icon:before,.section105 .phone2.show_phone_icon:before{display:none}}@media (max-width:400px){.section105 .menu_mobile_btn.active{left:unset;right:20px;z-index:106}.section105 .menu-and-phone-and-btn{width:100%}}@media (max-width:325px){.section105 .logo_img{width:100%}}#wrapper .section1154 .brd_animation.btn1:before,#wrapper .section1154 .brd_animation.btn2:before{content:'';position:absolute;height:50px;width:calc(100% - 6px);left:0;top:0;border-left:3px solid;transition:.5s;border-right:3px solid}.section1154{--section-background-repeat:no-repeat;--section-background-size:cover;overflow:hidden}.section1154.max_height{height:100vh;display:flex;align-items:center;justify-content:center;padding:0!important}.section1154 .form_wrapper .form1,.section1154 .form_wrapper .form_sub_title,.section1154 .form_wrapper .form_text,.section1154 .form_wrapper .form_title,.section1154 .headliner{position:relative}.section1154 .headliner.underlay{background:rgba(0,0,0,.5);padding:20px;width:480px}.section1154 .form_wrapper.form_bg .form_bg_color{display:block;width:100%;height:100%;position:absolute;left:0;top:0;background:#fff;opacity:1}.section1154 .form_wrapper.form_bg{position:relative;background:0 0}.section1154 .form_wrapper .form_bg_color{display:none}.section1154 .form_wrapper{float:right;width:320px;background:#fefdfb;padding:30px;border-radius:5px;position:relative}.section1154 .form_wrapper.replace_form_html{background:0 0;padding:0}.section1154 .btn1{width:350px;font-size:18px;text-align:center;border:3px solid;margin-top:20px}.section1154 .btn1.surround{border-color:transparent}body.editor_true .section1154 .form_wrapper.replace_form_html{border:1px dashed red}.section1154 .form_html{min-height:100px;box-sizing:border-box}.section1154 .headliner.revers{float:right}.section1154 .form_wrapper.revers{float:left}.section1154 .form_title{text-align:center;color:#333;font-size:20px}.section1154 .form_sub_title{text-align:center;color:#333;font-size:12px}.section1154 .title{text-align:left;font-size:36px;margin-bottom:20px;line-height:130%;color:#fff}.section1154 .margin{height:20px}.section1154 .sub_title{text-align:left;font-size:20px;margin-bottom:10px;color:#fff;line-height:1.4}.section1154 .noise{position:absolute;left:0;top:0;width:100%;height:100%;background:url(/img/nul.png)}@media (max-width:800px){.section.section1154{padding:40px 0}.section1154 .sub_title,.section1154 .title{margin:0 0 20px}.section1154 .headliner{width:100%}}@media (max-width:400px){.section1154 .btn1{width:100%}}.section1127 .right,.section1127 .right .bg_right{box-sizing:border-box;box-sizing:border-box;box-sizing:border-box}.section1127{padding:60px 0}.section1127 .image1.link_on{cursor:pointer}.section1127 .width1170 .right{width:100%;max-width:calc(100% - 660px);color:#000}.section1127 .right .bg_right{position:absolute;left:0;top:0;width:100%;height:100%}.section1127 .right.dark{color:#fff}.section1127 .right.top_left{margin-top:-40px;margin-left:-40px}.section1127 .width1170 .right.top_left_deep.size_700x500{margin-top:125px;margin-right:-40px;margin-left:-315px;width:calc(100% - 385px);max-width:calc(100% - 385px)}.section1127 .right.top_left_deep.size_700x500{margin-top:125px;margin-left:-115px;width:calc(100% - 465px);max-width:calc(100% - 465px)}.section1127 .reverse .right.top_left_deep.size_700x500{margin-top:125px;margin-right:-115px;margin-left:0}.section1127 .width1170 .reverse .right.top_left_deep{margin-top:125px;margin-left:0;margin-right:-315px;max-width:calc(100% - 315px)}.section1127 .right.bottom_left{margin-top:40px;margin-left:-40px}.section1127 .reverse .right.top_left{margin-top:-40px;margin-left:0;margin-right:-40px}.section1127 .reverse .right.bottom_left{margin-top:40px;margin-left:0;margin-right:-40px}.section1127 .image1 img{display:block;width:100%;height:auto;max-width:100%}.section1127 .reverse .right.size_700x500.bottom_big_img{margin-top:30px;margin-right:-30px}.section1127 .reverse .right.size_700x700.bottom_big_img{margin-top:40px;margin-right:-40px}.section1127 .right.size_700x500.bottom_big_img{margin-top:30px;margin-left:0}.section1127 .right.size_700x700.bottom_big_img{margin-top:40px;margin-left:0}.section1127 .right.bottom_big_img{padding:40px}.section1127 .right{width:440px;float:right;position:relative;padding:40px 50px;display:flex;justify-content:center;flex-direction:column}.section1127 .right.size_585x585{width:50%;max-width:unset}.section1127 .right.size_700x500,.section1127 .right.size_700x700{width:calc(100% - 540px)}.section1127 .right.size_700x700.top_left_deep{margin-left:-100px;width:calc(100% - 440px)}.section1127 .reverse .right.size_700x700.top_left_deep{margin-right:-100px;margin-left:0}.section1127 .width1170 .right.top_left_deep.size_700x700{width:calc(100% - 380px);max-width:calc(100% - 380px);margin-top:125px;margin-right:0;margin-left:-315px}.section1127 .width1170 .reverse .right.top_left_deep.size_700x700{width:calc(100% - 380px);margin-left:0;margin-right:-315px}.section1127 .width1170 .right.size_700x500.bottom_big_img{width:calc(100% - 670px)}.section1127 .image1.size_700x500,.section1127 .image1.size_700x700{width:580px}.section1127 .image1.size_585x585,.section1127 .width1170 .image1.size_585x585{width:50%}.section1127 .right.size_700x700{height:500px}.section1127 .arr1.reverse{flex-direction:row-reverse}.section1127:hover .section1127 .arr1.reverse{flex-direction:row}.section1127 .arr1{display:flex;margin-bottom:70px}.section1127 .arr1:last-child{margin-bottom:0}.section1127 .width1170 .image1{width:700px}.section1127 .image1{width:630px}.section1127.decor_line .title1:after{content:'';position:absolute;left:0;bottom:0;width:50px;height:2px;border-bottom:2px solid}.section1127.decor_line .title1{margin-bottom:0;padding-bottom:20px}.section1127 .title1{font-size:24px;margin-bottom:20px}.section1127 .txt1{font-size:18px;margin:10px 0;overflow:hidden}.section1127 .btn1,.section1127 .btn2,.section1127 .title1,.section1127 .txt1{position:relative}.section1127 .btn1,.section1127 .btn2{width:250px;min-height:40px;font-size:18px;margin-top:20px;border:3px solid;overflow:hidden;padding:.5rem 1rem}.section1127 .btn_move2 .btn1:hover,.section1127 .btn_move2 .btn2:hover{animation-name:btn_move2;animation-duration:1s;animation-fill-mode:forwards}@media screen AND (min-width:800px){.section1127.size_960x960,.section1127.size_965x965{height:100vh;padding:0!important}.section1127.size_960x960 .section_inner,.section1127.size_960x960 .section_inner .arr1,.section1127.size_965x965 .section_inner,.section1127.size_965x965 .section_inner .arr1{position:unset}.section1127.size_960x960 .image1 img,.section1127.size_965x965 .image1 img{height:100%;width:auto;max-width:unset}.section1127.size_960x960 .image1,.section1127.size_965x965 .image1{position:absolute;top:0;left:0;right:unset;width:50%;height:100%;max-width:unset}.section1127.size_960x960 .reverse .image1,.section1127.size_965x965 .reverse .image1{right:0;left:unset}.section1127.size_960x960 .reverse .right,.section1127.size_965x965 .reverse .right{right:unset;left:0}.section1127.size_960x960 .right,.section1127.size_965x965 .right{position:absolute;top:0;right:0;left:unset;width:50%;height:100%;max-width:unset;padding:90px}.section1127.size_1170x600 .image1{width:100%}.section1127.size_1170x600 .right{position:absolute;left:80px;right:unset;bottom:-60px;width:400px;max-height:550px;padding:60px;margin:0!important}.section1127.size_1170x600 .reverse .right{right:80px;left:unset}}@media (max-width:1366px){.section1127 .title1,.section1127 .title1 *{font-size:24px!important}.section1127 .txt1,.section1127 .txt1 *{font-size:16px!important}}@media (max-width:1220px){.section1127 .arr1 .right.size_700x700.bottom_big_img{width:45%}.section1127 .txt1{max-height:unset}.section1127 .width1170 .right{max-width:unset}.section1127 .reverse .right.top_left{margin-right:0}.section1127 .width1170 .reverse .right.top_left_deep.size_700x500,.section1127 .width1170 .reverse .right.top_left_deep.size_700x700{margin-right:-25%;width:75%}.section1127 .width1170 .right.top_left_deep.size_700x500,.section1127 .width1170 .right.top_left_deep.size_700x700{margin-left:-25%;width:75%}.section1127 .width1170 .reverse .right.bottom_big_img,.section1127 .width1170 .reverse .right.top_left_deep{width:50%;margin-right:-50px}}@media (max-width:1180px){.section1127 .reverse .right.top_left_deep.size_700x500,.section1127 .reverse .right.top_left_deep.size_700x700{margin-right:-25%;width:75%}.section1127 .right.top_left_deep.size_700x500,.section1127 .right.top_left_deep.size_700x700{margin-left:-25%;width:75%}.section1127 .reverse .right.bottom_big_img,.section1127 .reverse .right.top_left_deep{width:50%;margin-right:-50px}.section1127 .arr1 .image1{width:60%}.section1127 .arr1 .btn1,.section1127 .arr1 .btn2,.section1127.size_1170x600 .arr1 .image1{width:100%}.section1127 .image1.size_700x700.bottom_big_img img{width:100%;height:auto}.section1127 .arr1 .right{width:50%}.section1127 .reverse .right.top_left_deep,.section1127 .right.top_left_deep{width:75%;max-width:calc(100% - 250px)}}@media (max-width:1100px){.section1127 .right.top_left_deep.size_700x500,.section1127 .width1170 .right{width:100%;max-width:calc(100% - 450px)}}@media (max-width:960px){.section1127 .right,.section1127 .width1170 .right{padding:40px}.section1127 .reverse .right.top_left_deep,.section1127 .right.top_left_deep,.section1127 .right.top_left_deep.size_700x500{width:89%;max-width:calc(100% - 150px)}.section1127 .width1170 .right{max-width:100%}}@media (max-width:800px){.section1127 .arr1.reverse{flex-direction:column}.section1127 .arr1 .image1{width:100%!important}.section1127 .arr1 .btn1,.section1127 .arr1 .btn2{max-width:300px}.section1127 .reverse .right.top_left_deep.size_700x500,.section1127 .reverse .right.top_left_deep.size_700x700,.section1127 .width1170 .right{margin-right:0;width:100%}.section1127 .right.top_left_deep.size_700x500,.section1127 .right.top_left_deep.size_700x700,.section1127 .width1170 .right{margin-left:0;width:100%}.section1127 .arr1 .right.size_700x700.bottom_big_img,.section1127 .right.size_700x500.bottom_big_img,.section1127 .right.size_700x700.top_left_deep,.section1127 .width1170 .right{width:100%}.section1127 .arr1 .right,.section1127 .width1170 .right{width:100%!important;max-width:unset!important;margin:0 auto!important}.section1127 .reverse .right.top_left_deep,.section1127 .right.top_left_deep,.section1127 .right.top_left_deep.size_700x500,.section1127 .width1170 .right{max-width:100%;width:100%}.section1127 .txt1{max-height:unset}.section1127 .arr1 .right{padding:20px}.section1127 .right.size_700x700{height:auto}.section1127 .title1,.section1127 .title1 *{font-size:20px!important}}@media (max-width:640px){.section1127 .arr1{flex-direction:column}}.section130 *,.section130 .ico1.border,.section130 .mdico1.border{box-sizing:border-box;box-sizing:border-box;box-sizing:border-box}.section130 .section_inner{--section130-tiles-count:3;--section130-tiles-padding:20px;--section130-tiles-text-align:var(--tiles-text-align, center);--section130-tiles-gap-Y:1.35rem;--section130-tiles-gap-X:1.35rem;--section130-tiles-gap:var(--section130-tiles-gap-Y) var(--section130-tiles-gap-X);--section130-btn-padding-Y:.65rem;--section130-btn-padding-X:1.25rem;--section130-btn-padding:var(--section130-btn-padding-Y) var(--section130-btn-padding-X);--section130-btn-font-size:var(--btn_fsize, 18px)}.section130 .title{text-align:center;font-size:42px;margin-bottom:1rem}.section130 .sub_title{text-align:center;font-size:24px;margin-bottom:2rem}.section130 .catalog_items.count2{--section130-tile-padding:2rem;--section130-tiles-count:2}.section130 .catalog_items.count3{--section130-tiles-count:3}.section130 .catalog_items.count4{--section130-tiles-count:4}.section130 .catalog_items.count5{--section130-tiles-count:5}.section130 .catalog_items.count6{--section130-tiles-count:6}.section130 .catalog_items.count7{--section130-tiles-count:7}.section130 .catalog_items .arr1{--section130-tiles-freespace:calc(var(--section130-tiles-gap-X) * (var(--section130-tiles-count) - 1));--section130-tile-width:calc((var(--section-inner-width) - var(--section130-tiles-freespace)) / var(--section130-tiles-count));width:var(--section130-tile-width);min-height:200px}.section130 .col_4.dark,.section130.dark .filter_btns button,.section130.dark .filter_btns.filter_btns_show{color:#fff}.section130 .price1 s{font-size:80%}.section130.full_img .catalog_items.count3:not(.c_icon) .col_4,.section130.full_img .catalog_items.count5:not(.c_icon) .col_4{padding-top:0}.section130.full_img .catalog_items.count3:not(.c_icon) .image1:not(.extra_image):not(.s120),.section130.full_img .catalog_items.count4:not(.c_icon) .image1:not(.extra_image):not(.s120),.section130.full_img .catalog_items.count5:not(.c_icon) .image1:not(.extra_image):not(.s120){width:100%;height:auto;max-width:100%}.section130.full_img .btn1,.section130.full_img .price1,.section130.full_img .title1,.section130.full_img .txt1{margin-left:auto;margin-right:auto;max-width:calc(100% - var(--section130-tiles-padding) * 2);transition:.2s cubic-bezier(.87, 0, .13, 1)}.section130.full_img .col_4{padding-bottom:20px}.section130 .btn_move .btn1:hover{animation-name:btn_move;animation-duration:1s;animation-fill-mode:forwards}.section130 .catalog_items,.section130.get_item_from_category .catalog_items_container{display:flex;flex-wrap:wrap;flex-direction:row;align-items:stretch;gap:var(--section130-tiles-gap)}.section130 .catalog_items.horizontal_align_center{justify-content:center}.section130:not(.full_img) .col_4{padding:var(--tiles-padding,var(--section130-tiles-padding))}.section130:not(.full_img) .col_4 .image1{max-width:200px}.section130:not(.full_img) .col_4 .image1.s120{max-width:120px}.section130 .col_4{overflow:hidden;position:relative;display:flex;flex-direction:column;gap:12px;width:100%;color:#000;border-radius:var(--tiles_radius,0);box-shadow:var(--tiles_shadow,none);border:var(--tiles-border);transition:.2s cubic-bezier(.87, 0, .13, 1)}.section130.btn_up .catalog_items .btn1{bottom:-40px;opacity:0;width:100%;transition:.2s cubic-bezier(.87, 0, .13, 1)}.section130.btn_up .catalog_items .col_4:hover>.btn1{bottom:0;opacity:1}.section130 .col_4 .col_bg{position:absolute;width:100%;height:100%;left:0;top:0}.section130.flex_fix .col_4{height:100%;justify-content:space-between}.section130 .image1.show_extra_info:hover,.section130.img_zoom .image1:hover{cursor:pointer}.section130 .price1,.section130 .title1,.section130 .txt1{width:100%;position:relative;text-align:var(--section130-tiles-text-align)}.section130 .title1{margin-top:.5rem;font-size:20px}.section130 .title1,.section130 .title1 *{font-weight:var(--item_title_fweight,500)}.section130 .extra_info_block .close:before{display:none}.section130 .extra_info_block .close{position:absolute;right:10px;top:10px;padding:0;width:16px;height:16px;font-size:0;background:url(/img/editor_icons/cancel.svg) center/100% no-repeat;transform:rotate(0);transition:.6s}.section130 .extra_info_block .close:hover{opacity:1;transform:rotate(180deg)}.section130 .image1{position:relative;margin:0 auto}.section130 img{width:100%;height:auto;display:block}.section130 .f_shadow .image1 img{filter:drop-shadow(0 0 2px rgba(55, 73, 87, .15)) drop-shadow(0 2px 5px rgba(55, 73, 87, .2))}.section130 .shadow{box-shadow:var(--section-image-shadow)}.section130 .border{border:var(--section-image-border)}.section130 .ico1.border,.section130 .mdico1.border{width:120px;height:120px;line-height:118px}.section130 .btn1:not(.surround),.section130 .btn1x:not(.surround),.section130 .ico1.border,.section130 .ico1.border_color_like_icon,.section130 .mdico1.border,.section130 .mdico1.border_color_like_icon{border:2px solid}.section130 .ico1,.section130 .mdico1{position:relative;margin:0 auto;width:calc(var(--icon_size,64px) * 1.9);max-width:100%;height:calc(var(--icon_size,64px) * 1.9);display:block;font-size:var(--icon_size, 64px);background:#f2f2f2;color:#333;display:flex;justify-content:center;align-items:center}.section130 .c_ico1{position:relative;margin:0 auto .5rem;width:128px;height:128px;display:block;background-position:center center;background-repeat:no-repeat;background-size:100%}.section130.transparent_ico .ico1,.section130.transparent_ico .mdico1{background:0 0}.section130 .radius{overflow:hidden;border-radius:50%}.section130 .price1{margin:.5rem auto;font-size:24px}.section130 .btn1,.section130 .btn1x{margin:0 auto;width:200px;max-width:90%;position:relative;overflow:hidden;padding:var(--section130-btn-padding);font-size:var(--section130-btn-font-size);font-weight:var(--btn_fweight,300)}.section130 .btn1.btn_global{margin-top:40px;padding:1em 1.25rem;width:auto;max-width:350px}.section130 .btn1x{margin:20px 0 0}.section130 .btn_auto_width .btn1,.section130 .btn_auto_width .btn1x{width:auto}.section130.btn_align_left.full_img .btn1{margin-left:var(--section130-tiles-padding)}.section130.btn_align_left .btn1{margin-left:0}.section130 .filter_btns.filter_btns_show{display:block}.section130 .filter_btns .current_btn{color:#f35c5c}.section130 .filter_btns{display:none;width:100%;margin-bottom:10px}.section130 .filter_btns button{float:right;background:0 0;height:25px;font-size:16px;border:none;outline:0;border-bottom:1px dashed;margin-left:5px}.section130 .filter_btns button:hover{border-color:#f60;color:#f60}.section130 .extra_info_block .extra_images_in_card .extra_image{position:relative;left:auto;top:auto}.section130 .extra_info_block{max-height:90vh;overflow-y:auto}.section130 .extra_info_block_wrapper .right{width:45%}.section130 .extra_info_block_wrapper .right .price1,.section130 .extra_info_block_wrapper .right .title1{text-align:left;margin:0 0 20px}.section130 .extra_info_block_wrapper .right .extra_info1{width:100%;margin-bottom:16px}.section130 .extra_images_in_card .extra_info_block.s300 .right,.section130 .extra_info_block.s300 .left{width:39%}.section130 .extra_images_in_card .extra_info_block.s300 .left,.section130 .extra_info_block.s300 .right{width:55%}.section130 .extra_info_block.mdicon .extra_info1{width:100%}.section130 .tags{position:absolute;top:20px;left:20px;z-index:1}.section130 .tags .tag{color:#fff;padding:2px 5px;font-size:12px;border-radius:2px;background:#e2e2e2;margin-bottom:5px;text-align:center}.section130 .tags .tag.novelty{background-color:#4285f4}.section130 .tags .tag.sale{background-color:#ea4335}.section130 .tags .tag.bestseller{background-color:#34a853}@media (min-width:480px){.section130 .catalog_items.count2 .c_ico1,.section130 .catalog_items.count2 .image1,.section130 .catalog_items.count2 .mdico1{position:absolute;left:var(--section130-tile-padding);top:var(--section130-tile-padding)}.section130.backlight .count2 .col_4,.section130.btn_up .catalog_items.count2 .col_4{padding-bottom:var(--section130-tile-padding)}.section130.backlight .count2 .col_4{padding-top:var(--section130-tile-padding)}.section130 .catalog_items.count2.c_icon .col_4,.section130 .catalog_items.count2.mdicon .col_4{padding-left:calc(120px + 2 * var(--section130-tile-padding))}.section130 .catalog_items.count2 .col_4{padding:var(--section130-tile-padding);padding-left:calc(200px + 2 * var(--section130-tile-padding))}.section130 .catalog_items.count2.s120 .col_4{padding-left:calc(140px + 2 * var(--section130-tile-padding))}.section130 .catalog_items.count2.s300 .col_4{min-height:calc(280px + 2 * var(--section130-tile-padding))}.section130 .catalog_items.count2 .image1{max-width:200px}.section130.btn_up .catalog_items.count2 .btn1{bottom:auto;opacity:1;width:90%}.section130 .count2 .price1,.section130 .count2 .title1,.section130 .count2 .txt1{text-align:left;margin:0 0 1rem}.section130 .count2 .btn1{margin:0}.section130 .count2 .product_card{max-width:100%;margin-left:10px;margin-top:15px}}.section130.shadow-s .col_4:hover{box-shadow:rgba(0,0,0,.1) 0 10px 15px -3px,rgba(0,0,0,.05) 0 4px 6px -2px}.section130.shadow-m .col_4:hover{box-shadow:rgba(0,0,0,.1) 0 10px 50px}.section130.shadow-l .col_4:hover{box-shadow:rgba(0,0,0,.2) 0 18px 50px -10px}.section130.scale-l .col_4:hover,.section130.scale-m .col_4:hover,.section130.scale-s .col_4:hover{--tiles-padding:1rem;box-shadow:rgba(0,0,0,.15) 0 5px 15px 0;z-index:70}.section130.border-l .col_4,.section130.border-m .col_4,.section130.border-s .col_4{border:0 solid #dedede}.section130.border-s .col_4:hover{border:1px solid #dedede;padding:calc(var(--tiles-padding) - 5px)}.section130.border-m .col_4:hover{outline:#dedede solid 3px;padding:calc(var(--tiles-padding) - 3px)}.section130.border-l .col_4:hover{border:5px solid #dedede;padding:calc(var(--tiles-padding) - 5px)}body:not(.modal) .section130.scale-s .col_4:hover{transform:scale(1.05)}body:not(.modal) .section130.scale-m .col_4:hover{transform:scale(1.1)}body:not(.modal) .section130.scale-l .col_4:hover{transform:scale(1.15)}.section.section130 .form_wrapper .field button,.section.section130 .form_wrapper .field input[type=submit],.section.section130 .popup_form .field button,.section.section130 .popup_form .field input[type=submit]{margin-top:0;margin-bottom:1rem}@media (max-width:1700px){.section130 .catalog_items.count7{--section130-tiles-count:6}}@media (max-width:1440px){.section130 .catalog_items.count6,.section130 .catalog_items.count7{--section130-tiles-count:5}}@media (max-width:1200px){.section130 .catalog_items.count2{--section130-tile-padding:1rem}.section130 .catalog_items.count5,.section130 .catalog_items.count6,.section130 .catalog_items.count7{--section130-tiles-count:4}}@media (max-width:960px){.section130 .catalog_items.count4,.section130 .catalog_items.count5,.section130 .catalog_items.count6,.section130 .catalog_items.count7{--section130-tiles-count:3}.section130 .catalog_items.count2{--section130-tiles-count:1}.section130 .extra_images_in_card .extra_info_block.s300 .left,.section130 .extra_images_in_card .extra_info_block.s300 .right,.section130 .extra_info_block.s300 .left,.section130 .extra_info_block.s300 .right{width:100%}.section130 .title,.section130 .title *{font-size:26px!important}.section130 .sub_title,.section130 .sub_title *{font-size:20px!important}}@media (max-width:800px){.section130 .catalog_items.count3,.section130 .catalog_items.count4,.section130 .catalog_items.count5,.section130 .catalog_items.count6,.section130 .catalog_items.count7{--section130-tiles-count:2}}@media (max-width:640px){.section130 .section_inner{--section130-tiles-gap-Y:3rem;--section130-tiles-gap-X:1rem}.section130:not(.mobile_col2) .catalog_items.count3,.section130:not(.mobile_col2) .catalog_items.count4,.section130:not(.mobile_col2) .catalog_items.count5,.section130:not(.mobile_col2) .catalog_items.count6,.section130:not(.mobile_col2) .catalog_items.count7{--section130-tiles-count:1}}@media (max-width:480px){.section130{--tiles-padding:10px!important}.section130 .sub_title,.section130 .sub_title *{font-size:18px!important}}@media (max-width:425px){body:not(.editor_true) .section130.mobile_col2 .catalog_items.short_text .title1{display:-webkit-box;-webkit-line-clamp:3;-webkit-box-orient:vertical;overflow:hidden}body:not(.editor_true) .section130.mobile_col2 .catalog_items.short_text .txt1{display:-webkit-box;-webkit-line-clamp:4;-webkit-box-orient:vertical;overflow:hidden}}@media (max-width:400px){.section130 .c_ico1{width:90px;height:90px}}@media (max-width:325px){.section130 .section_inner{--section130-tiles-padding:10px;--section130-tiles-gap-Y:1rem;--section130-tiles-gap-X:.75rem;--section130-btn-padding-X:.75rem}.section130 .catalog_items .arr1{width:calc((100% - var(--section130-tiles-gap-X))/ 2)}.section130 .btn1,.section130 .btn1x{font-size:16px}}.section250 .title{text-align:center;font-size:42px;margin-bottom:1rem}.section250 .sub_title{text-align:center;font-size:24px;margin-bottom:2rem}.section250 .arr1{display:flex;justify-content:space-between;flex-wrap:nowrap;flex-direction:row;margin-top:30px}.section250 .col_2{width:calc(50% - 15px);position:relative;margin-bottom:20px;box-sizing:border-box}.section250 .width1170 .col_2{width:calc(50% - 20px)}.section250 .col_2 iframe{border:none;width:100%;height:256px}.section250 .width1170 .col_2 iframe{height:318px}.section250 .overlay_image_box{box-sizing:border-box;transition:top 1s ease-out 3s;width:100%;margin-top:0}.section250 .col_2:hover .overlay_image_box{bottom:0}.section250 .overlay_image_title{margin-bottom:10px;font-weight:400;font-size:20px}.section250 .price1,.section250 .price2{margin-top:10px;font-size:22px;font-weight:500}.section250 .image1 img,.section250 .image2 img{width:100%;height:auto;display:block}.section250 .image1,.section250 .image2{width:100%;height:auto;overflow:hidden;margin-bottom:20px;border-radius:var(--section-image-radius,none)}.section250 .video1,.section250 .video2{width:100%;height:256px;overflow:hidden;margin-bottom:7px}.section250 .width1170 .video1,.section250 .width1170 .video2{width:100%;height:318px;margin-bottom:10px;background:url(/img/free-icon-photo-and-video-8736776.png) center/90px no-repeat #f2f2f2;border:1px solid #dedede}.section250 .image1.shadow,.section250 .image2.shadow,.section250 .video1.shadow,.section250 .video2.shadow{box-shadow:var(--section-image-shadow)}.section250 .image1.border,.section250 .image2.border,.section250 .video1.border,.section250 .video2.border{box-sizing:border-box;border:10px solid #fff}.section250 .width1170 .image1,.section250 .width1170 .image2{width:100%;margin:0 auto 20px}.section250 .width1170 .image1 img,.section250 .width1170 .image2 img{max-width:100%;max-height:none}.section250.bg_text.dark .col_2{color:#333}.section250 .btn1.surround,.section250 .btn2.surround{border:none}.section250 .btn1,.section250 .btn2{border:3px solid;font-weight:400;font-size:18px;padding:.5rem 2rem;min-height:50px;min-width:150px;max-width:80%;margin-top:2rem;overflow:hidden}.section250.img_zoom .image1,.section250.img_zoom .image2{cursor:pointer}.bg_text.section250 .col_2{background-color:#fff;padding:25px}@media (max-width:960px){.section250 .title,.section250 .title *{font-size:26px!important}.section250 .sub_title,.section250 .sub_title *,.section250 .title1,.section250 .title1 *,.section250 .title2,.section250 .title2 *{font-size:20px!important}.section250 .subtitle1,.section250 .subtitle1 span,.section250 .subtitle2,.section250 .subtitle2 span{font-size:16px!important}}@media (max-width:800px){.section250 .col_2 iframe,.section250 .video1,.section250 .video2{height:171px}}@media (max-width:640px){.section250 .arr1{flex-direction:column}.bg_text.section250 .col_2,.section250 .col_2,.section250 .width1170 .col_2{width:100%}.section250 .col_2 iframe,.section250 .video1,.section250 .video2{height:261px}.section250 .title,.section250 .title *{font-size:24px!important}.section250 .col_2{padding-bottom:10px}.section250.mode_3 .col_2{width:100%;padding-bottom:0}}@media (max-width:480px){.section250 .sub_title,.section250 .sub_title *{font-size:18px!important}}@media (max-width:440px){.section250 .col_2 iframe,.section250 .video1,.section250 .video2{height:202px}.section250 .btn1,.section250 .btn2{width:100%;max-width:100%}}@media (max-width:375px){.section250 .col_2 iframe,.section250 .video1,.section250 .video2{height:180px}.section250 .col_2{margin-left:0}}.section1417 .section_inner>.title{text-align:center;font-size:42px;margin-bottom:10px}.section1417 .sub_title{text-align:center;font-size:24px;margin-bottom:20px}.section1417 .col_2{overflow-y:auto;overflow-x:hidden;padding-bottom:40px}.section1417 .col1{float:right;text-align:left;width:75%}.section1417 .col2{float:left;text-align:left;width:15%}.section1417 .arr1{position:relative;padding-bottom:20px}.section1417 .arr1 .extra_descr{margin-top:6px;text-align:right;font-weight:500;font-size:20px}.section1417 .arr1 .title{font-size:20px!important;margin-bottom:10px;margin-top:7px}.section1417 .arr1 .line{position:absolute;top:45px;left:20%;height:calc(100% - 50px);width:1px;background:#ccc}.section1417 .arr1 .mdico{position:absolute;width:40px;height:40px;text-align:center;line-height:40px;top:0;left:20%;margin-left:-20px;background:#ccc;border-radius:25px;color:#fff;font-size:20px;animation-name:big_icon;animation-duration:1s;animation-timing-function:linear;animation-iteration-count:5}.section1417 .arr1:first-child .mdico{animation-delay:4s}.section1417 .arr1:nth-child(2) .mdico{animation-delay:5s}.section1417 .arr1:nth-child(3) .mdico{animation-delay:6s}.section1417 .arr1:nth-child(4) .mdico{animation-delay:7s}.section1417 .arr1:nth-child(5) .mdico{animation-delay:8s}.section1417 .arr1:nth-child(6) .mdico{animation-delay:9s}.section1417 .arr1:nth-child(7) .mdico{animation-delay:10s}.section1417 .arr1:last-child{border:none;margin-bottom:0;padding-bottom:0}.section1417 .arr1:last-child .line{display:none}@media (max-width:960px){.section1417 .arr1 .title,.section1417 .arr1 .title *{font-size:20px!important}.section1417 .arr1 .descr,.section1417 .arr1 .descr *{font-size:16px!important}}@media (max-width:800px){.section1417 .arr1 .mdico{width:30px;height:30px;line-height:30px;top:5px;left:140px;font-size:18px}.section1417 .arr1 .line{left:135px}.section1417 .col2{min-width:100px}.section1417 .col1{max-width:calc(100% - 180px)}}@media (max-width:440px){.section1417 .arr1 .mdico{left:30px}.section1417 .arr1 .line{left:25px}.section1417 .col1,.section1417 .col2{width:100%;float:right;max-width:calc(100% - 70px);padding-bottom:10px}.section1417 .arr1 .extra_descr{text-align:left}}.section146 .image_box .overlay_image_box.opacity_on,.section146 .image_box:hover .overlay_image_box,.section146.hold_text .overlay_image_box{display:flex;height:100%;padding:20px;color:#fff;background:rgba(0,0,0,.5);text-align:left;position:absolute;top:0;left:0;transition:.3s;box-sizing:border-box}.section146{--tile-count:3;--wrapper-gap-Y:var(--img-gap-Y, 20px);--wrapper-gap-X:var(--img-gap-X, 20px);--wrrapper-gap:var(--wrapper-gap-Y) var(--wrapper-gap-X)}.section146 .title{text-align:center;font-size:42px;margin-bottom:15px}.section146 .sub_title{text-align:center;font-size:24px;margin-bottom:20px}.section146 .arr1{position:relative}.section146 .images{position:relative;display:flex;flex-wrap:wrap;justify-content:var(--images-justify-content,center);box-sizing:border-box;gap:var(--wrrapper-gap)}.section146 .image_box{width:calc((100% - (var(--tile-count) - 1) * var(--wrapper-gap-X))/ var(--tile-count));overflow:hidden;border-radius:var(--img_radius,0)}.section146 .image_box:nth-child(3n+3){margin-right:0}.section146 .image_box img{display:block;width:100%;max-width:100%;height:auto;filter:grayscale(var(--img_grayscale, 0)) blur(var(--img_blur, 0));transition:.3s cubic-bezier(.15, .85, .47, 1.04)}.section146 .filters_off .image_box:hover img{filter:none}.section146.hold_text .image_box .overlay_image_box.opacity_on{opacity:1}.section146 .image_box .overlay_image_box.opacity_on{flex-direction:column;justify-content:center;width:100%;opacity:0}.section146 .image_box:hover .overlay_image_box,.section146.hold_text .overlay_image_box{flex-direction:column;justify-content:center;width:100%}.section146 .overlay_image_title{font-size:22px;font-weight:700;width:100%;margin-bottom:10px}.section146 .overlay_image_descr{width:100%}.section146 .image_box.shadow{box-shadow:var(--section-image-shadow)}.section146 .image_box.border{box-sizing:border-box;border:10px solid #fff}.section146.dark .overlay_image_box{color:#333}.section146 .image_box.img_zoom .overlay_image_box:hover,.section146 .overlay_image_box[data-link]{cursor:pointer}.section146 .overlay_image_box{height:0;overflow:hidden}.section146 .overlay_image_box[data-link=""]{cursor:default}.section146 .image_box:hover .overlay_image_box:not(.active_off){opacity:0;transition:none!important}.section146 .image_box:hover .overlay_image_box.active_off{display:none!important;visibility:hidden;opacity:0;transition:none!important}@media (min-width:1440px){.section146 .section_inner.width1400,.section146 .section_inner.width1680{--tile-count:4}}@media (min-width:1700px){.section146 .section_inner.width1680{--tile-count:5}}@media (max-width:960px){.section146 .overlay_image_title{font-size:18px}.section146 .overlay_image_descr{font-size:14px}.section146 .title,.section146 .title *{font-size:26px!important}.section146 .sub_title,.section146 .sub_title *{font-size:20px!important}}@media (max-width:800px){.section146{--tile-count:2}.section146 .overlay_image_title{font-size:18px}.section146 .overlay_image_descr{font-size:14px}}@media (max-width:640px){.section146 .title,.section146 .title *{font-size:24px!important}}@media (max-width:480px){.section146{--tile-count:1}.section146 .sub_title,.section146 .sub_title *{font-size:18px!important}.section146 .overlay_image_title{font-size:22px}.section146 .overlay_image_descr{font-size:16px}}.section304 .s_image,.section304 .spoiler{border-radius:var(--content-bg-radius,7px);overflow:hidden}.section304 .title{text-align:center;font-size:42px;margin-bottom:1rem}.section304 .sub_title{text-align:center;font-size:24px;margin-bottom:2rem}.section304 .spoiler_title{color:#000;padding:12px 70px 12px 25px;font-size:20px;box-sizing:border-box;border-radius:var(--content-bg-radius,7px)}body.editor_false .section304 .spoiler_title{cursor:pointer}.section304 .spoiler{background:var(--content-bg-color,#fff);margin-top:25px;position:relative;box-shadow:rgba(17,17,26,.05) 0 4px 16px,rgba(17,17,26,.05) 0 8px 32px}.section304 .spoiler.dark{color:#fff}.section304 .spoiler_content{color:#000;display:flex;justify-content:space-between;padding:10px 25px 35px;border-bottom-left-radius:var(--content-bg-radius,7px);border-bottom-right-radius:var(--content-bg-radius,7px);transition:.6s cubic-bezier(.87, 0, .13, 1)}.section304 .spoiler.close .spoiler_content{position:absolute;height:0;opacity:0}.section304 .spoiler .spoiler_toggle{display:flex;align-items:center;justify-content:center;position:absolute;right:20px;top:10px;cursor:pointer;height:30px;width:30px;background:#0187bc;border-radius:50%;text-align:center;color:#fff;transition:.2s ease-in-out}.section304 .spoiler.open .spoiler_toggle{transform:rotate(45deg)}.section304 img{display:block;width:100%;height:auto}.section304 .s_image{width:400px;height:300px}.section304 .s_content{width:calc(100% - 450px)}.section304 .s_content.full_size{width:100%;float:none}.section304 .s_image.border{border:var(--section-image-border)}.section304 .s_image.shadow{box-shadow:var(--section-image-shadow)}@media (max-width:960px){.section304 .s_image{margin:10px auto;max-width:90%;height:auto}.section304 .s_content{margin:10px auto;width:90%}.section304 .spoiler_content{flex-direction:column}.section304 .title,.section304 .title *{font-size:26px!important}.section304 .sub_title,.section304 .sub_title *{font-size:20px!important}.section304 .s_content,.section304 .s_content span,.section304 .spoiler_title,.section304 .spoiler_title span{font-size:16px!important}}@media (max-width:640px){.section304 .title,.section304 .title *{font-size:24px!important}.section304 .s_image{max-width:100%}.section304 .s_content{width:100%}}@media (max-width:480px){.section304 .sub_title,.section304 .sub_title *{font-size:18px!important}}.section1250 .title{text-align:center;font-size:42px;margin-bottom:1rem}.section1250 .sub_title{text-align:center;font-size:24px;margin-bottom:2rem}.section1250 .column .arr1 .btn1{margin-bottom:20px}.section1250 .arr1{display:flex}.section1250 .column .arr1 .btn1,.section1250 .column .arr1 .btn2{margin-left:0;margin-right:0}.section1250 .column .arr1{flex-direction:column}.section1250 .column.around .arr1,.section1250 .column.center .arr1{align-items:center}.section1250 .column.left_align .arr1{align-items:flex-start}.section1250 .column.right_align .arr1{align-items:flex-end}.section1250 .right_align .arr1{justify-content:flex-end}.section1250 .left_align .arr1{justify-content:flex-start}.section1250 .around .arr1{justify-content:space-around}.section1250 .center .arr1{display:flex;justify-content:center}.section1250{padding:10px 0 40px}.section1250 .small_height .btn1,.section1250 .small_height .btn2{width:30%;min-height:50px}.section1250 .small .btn1,.section1250 .small .btn2{width:30%;min-height:40px}.section1250 .middle_height .btn1,.section1250 .middle_height .btn2{width:40%;min-height:64px}.section1250 .middle .btn1,.section1250 .middle .btn2{width:40%;min-height:50px}.section1250 .big_height .btn1,.section1250 .big_height .btn2{width:48%;height:70px}.section1250 .center .btn1,.section1250 .center .btn2{margin:0 10px}.section1250 .left_align .btn1,.section1250 .right_align .btn1{margin-right:20px}.section1250 .btn1,.section1250 .btn2{border:3px solid;font-size:16px;text-align:center;min-height:60px;width:48%;overflow:hidden;box-sizing:border-box}.section1250 .btn1.surround,.section1250 .btn2.surround,.section1250 .middle .btn1.surround,.section1250 .middle .btn2.surround,.section1250 .small .btn1.surround,.section1250 .small .btn2.surround{border:none}@media (max-width:1180px){.section1250 .middle .btn1,.section1250 .middle .btn2,.section1250 .small .btn1,.section1250 .small .btn2{width:40%}}@media (max-width:800px){.section1250 .middle .btn1,.section1250 .middle .btn2,.section1250 .small .btn1,.section1250 .small .btn2{width:48%}}@media (max-width:440px){.section1250 .section_inner .btn1,.section1250 .section_inner .btn2{margin:0 0 20px;width:100%}.section1250 .section_inner .arr1{flex-direction:column}}.section1153 .image_box,.section1153 .image_box .img1153{background-position:center center;background-repeat:no-repeat;background-size:90% auto}.section1153{padding:125px 0}.section1153 .section_inner{--section1153-tile-ar:1.45;--section1153-tiles-count:5;--section1153-tiles-gap-Y:20px;--section1153-tiles-gap-X:20px;--section1153-tiles-gap:var(--section1153-tiles-gap-Y) var(--section1153-tiles-gap-X);color:#fff}.section1153 .title{text-align:center;font-size:54px;margin-bottom:1.25rem;line-height:normal}.section1153 .sub_title{text-align:center;font-size:24px;margin-bottom:3.65rem}.section1153 .image_box:hover{filter:unset}.section1153 .invert.image_box{filter:none}.section1153 .images{display:flex;flex-wrap:wrap;flex-direction:row;justify-content:center;gap:var(--section1153-tiles-gap)}.section1153 .image_box{--section1153-tiles-freespace:calc(var(--section1153-tiles-gap-X) * (var(--section1153-tiles-count) - 1));--section1153-tile-width:calc((var(--section-inner-width) - var(--section1153-tiles-freespace)) / var(--section1153-tiles-count));width:var(--section1153-tile-width);height:calc(var(--section1153-tile-width)/ var(--section1153-tile-ar));box-sizing:border-box;transition:.3s;filter:grayscale(100%) invert(1);position:relative}.section1153 .image_box .img1153{height:100%;width:100%}.section1153 .overlay_image_box[data-link]{cursor:pointer}.section1153 .overlay_image_box[data-link=""]{cursor:default}.section1153 .overlay_image_box{display:block;width:100%;height:100%;padding:20px;box-sizing:border-box;color:#fff;text-align:center;position:absolute;top:0;left:0}@media (min-width:1200px){.section1153 .section_inner.width1170{--section1153-tile-width:220px}.section1153 .section_inner.width1400{--section1153-tile-width:220px;--section1153-tiles-count:6}.section1153 .section_inner.width1680{--section1153-tile-width:220px;--section1153-tiles-count:7}}@media (min-width:1200px) and (max-width:1700px){.section1153 .section_inner.width1680{--section1153-tiles-count:6}}@media (min-width:1200px) and (max-width:1440px){.section1153 .section_inner.width1400,.section1153 .section_inner.width1680{--section1153-tiles-count:5}}@media (max-width:1200px){.section1153 .section_inner{--section1153-tiles-count:4}}@media (max-width:960px){.section1153 .section_inner{--section1153-tiles-count:3}.section1153 .title,.section1153 .title *{font-size:26px!important}.section1153 .sub_title,.section1153 .sub_title *{font-size:20px!important}}@media (max-width:640px){.section1153 .section_inner{--section1153-tiles-count:2}.section1153 .title,.section1153 .title *{font-size:24px!important}}@media (max-width:480px){.section1153 .sub_title,.section1153 .sub_title *{font-size:18px!important}}@media (max-width:375px){.section1153 .section_inner{--section1153-tiles-count:1}.section1153 .images{flex-direction:column;align-items:center}.section1153 .image_box{width:175px;height:120px}}.section258 .section_inner{--icon-size:60px;--txt1-left-margin:calc(var(--icon-size) + 30px);--section258-icons-count:var(--icons-count, 3);--section258-icons-bg:var(--icons-bg, none);--section258-icons-padding:var(--icons-padding, 0px);--section-icons-gap-Y:var(--icons-gap-Y, 25px);--section-icons-gap-X:var(--icons-gap-X, 25px);--section-icons-gap:var(--section-icons-gap-Y) var(--section-icons-gap-X);--section258-icons-freespace:calc(var(--section-icons-gap-X) * (var(--section258-icons-count) - 1));--section258-icon-width:calc(((var(--section-inner-width) - var(--section258-icons-freespace)) / var(--section258-icons-count)))}.section258 .title{font-size:54px;margin-bottom:14px}.section258 .sub_title{font-size:24px;margin-bottom:50px}.section258 .sub_title,.section258 .title{color:var(--autocontrast-text-color);text-align:center}@media (min-width:1000px){.section258.short_titles .sub_title,.section258.short_titles .title{max-width:70%}.section258.section_direction_row .section_inner{display:grid;grid-template-columns:16fr 9fr;align-items:center;gap:0 50px}.section258.section_direction_row .btn1,.section258.section_direction_row .sub_title,.section258.section_direction_row .title{grid-column:1}.section258.section_direction_row .sub_title,.section258.section_direction_row .title{text-align:left;max-width:100%}.section258.section_direction_row .btn1{max-width:300px}.section258.section_direction_row .content_block{margin:0;grid-column:2;grid-row:1/4}.section258.section_direction_row .arr_block{--section258-icon-width:100%;--section-icons-gap:35px}}.section258 .btn1{display:inline-block;padding:var(--section-btn-padding,.75rem 1rem);font-size:var(--section-btn-font-size, 1rem)}.section258.btn-sm{--section-btn-padding:0.5rem 0.75rem;--section-btn-font-size:0.875rem}.section258.btn-m{--section-btn-padding:0.75rem 1rem;--section-btn-font-size:1rem}.section258.btn-lg{--section-btn-padding:1em 1.25rem;--section-btn-font-size:1.25rem}.section258 .content_block{display:flex;flex-direction:row-reverse;justify-content:space-between;align-items:flex-start;margin-top:45px;gap:45px}.section258 .arr_block{position:relative;display:flex;flex-wrap:wrap;align-items:stretch;flex-direction:column;gap:var(--section-icons-gap);width:100%}.section258.icons_direction_row .arr_block{flex-direction:row}.section258.icons_direction_row .txt1{margin-left:0;margin-top:12px;width:100%}.section258.icons_direction_row .arr1{width:var(--section258-icon-width)}.section258 .col_3{color:var(--autocontrast-text-color);font-weight:400;display:flex;flex-direction:column;align-items:flex-end}.section258 .icon_layer{display:flex;align-items:center;width:100%}.section258 .mdico1{display:flex;justify-content:center;align-items:center;font-size:calc(var(--icon-size));line-height:1;margin-right:30px;color:var(--autocontrast-text-color);border-radius:50%;background-color:var(--section258-icons-bg);padding:var(--section258-icons-padding)}.section258 .title1{font-size:24px;width:100%;text-align:left}.section258 .txt1{--padding:calc(var(--section258-icons-padding) * 2);width:calc(100% - (var(--txt1-left-margin) + var(--padding)));line-height:1.5;box-sizing:border-box}.section258 .form_wrapper{width:400px;padding:30px;border:5px solid;box-sizing:border-box;position:relative;overflow:hidden;flex-shrink:0}.section258 .form_wrapper.form_del{display:none}.section258 .form_wrapper .form_bg_color{display:block;width:100%;height:100%;position:absolute;left:0;top:0;background:#fff;opacity:1}.section258 .form_wrapper .form1,.section258 .form_wrapper .form_sub_title,.section258 .form_wrapper .form_text,.section258 .form_wrapper .form_title{position:relative}.section258 .form_title{color:#454545;margin-bottom:1rem;font-size:16px;font-weight:500}.section258 .form_sub_title{color:#696969;margin-bottom:1rem;font-size:14px}.section258 .form_text{font-size:12px;line-height:16px;color:#353535}@media (max-width:1200px){.section258.icons_direction_row .section_inner{--section258-icons-count:min(var(--icons-count), 3)}}@media (max-width:800px){.section258.icons_direction_row .section_inner{--section258-icons-count:min(var(--icons-count), 2)}.section258{--icon-size:40px}.section258 .content_block{flex-direction:column-reverse}.section258 .form_wrapper{width:calc(65% - 70px);margin:40px auto 0}.section258.section{background-size:cover}}@media (max-width:640px){.section258.icons_direction_row .section_inner{--section258-icons-count:1}.section258 .form_wrapper{width:100%;margin-top:40px}}.section117 .clear{display:none!important}.section117 .section_inner{--section117-arr-wrapper-gap:40px;--section117-arr-gap:35px;--section117-arr-direction:row}.section117 .title{text-align:center;font-size:42px;margin-bottom:10px}.section117 .sub_title{text-align:center;font-size:24px;margin-bottom:32px}.section117 .arr_wrapper{display:flex;flex-direction:column;gap:var(--section117-arr-wrapper-gap)}.section117 .arr1{position:relative;display:flex;flex-direction:var(--section117-arr-direction);justify-content:space-between;align-items:center;gap:var(--section117-arr-gap)}.section117 .image1{border-radius:var(--section-image-radius,none);overflow:hidden}.section117 .arr1 img{display:block;width:100%;height:auto}.section117 .col_2.image1,.section117 .col_2.video1{flex-shrink:0}.section117 .video1 iframe,.section117 .video_holder{--iframe_width_16x9:450px;--iframe_height_16x9:calc(var(--iframe_width_16x9) / 16 * 9);width:var(--iframe_width_16x9);height:var(--iframe_height_16x9);box-sizing:border-box}.section117 .shadow{box-shadow:var(--section-image-shadow)}.section117 .border1{box-sizing:border-box;border:10px solid #fff;perspective:600px;perspective-origin:center}.bg_text.section117 .arr1{background-color:#fff;color:#212121;padding:2rem 2rem 3rem}.section117 .col_2:not(.image1){flex:auto}.section117 .col_2 .descr1{font-size:24px;margin-bottom:1rem}@media (min-width:960px){.section117 .arr1:nth-child(2n){--section117-arr-direction:row-reverse}.section117 .col_2.image1,.section117 .col_2.video1{max-width:50%}}@media (max-width:960px){.section117 .section_inner{--section117-arr-wrapper-gap:60px;--section117-arr-direction:column}.section117 .title,.section117 .title *{font-size:26px!important}.section117 .sub_title,.section117 .sub_title *{font-size:20px!important}}@media (max-width:640px){.section117 .title,.section117 .title *{font-size:24px!important}}@media (max-width:480px){.section117 .sub_title,.section117 .sub_title *{font-size:18px!important}}.section320 .arr1,.section320 .image1,.section320 .image1.border,.section320 .point,.section320 .section_inner{box-sizing:border-box}.section320.bg_text .section_inner{background:#fff;padding:40px;color:#000}.section320 .title{text-align:center;font-size:42px;margin-bottom:1rem}.section320 .sub_title{text-align:center;font-size:24px;margin-bottom:2rem}.section320 .col_1{width:100%;max-width:640px;position:relative;margin:0 auto}.section320 .overlay_image_box{padding:10px 0;box-sizing:border-box;transition:top 1s ease-out 3s;width:100%}.section320 .col_4:hover .overlay_image_box{bottom:0}.section320 .overlay_image_title{text-align:center;font-size:32px;margin-bottom:1rem}.section320 .overlay_image_subtitle{margin-bottom:10px;text-align:center}.section320 .image1{width:220px;height:220px;margin:0 auto 10px}.section320 img{width:100%;height:auto;object-fit:cover}.section320 .image1.shadow{box-shadow:var(--section-image-shadow)}.section320 .image1.border{border:7px solid #fff}.section320 .image1.img_radius{border-radius:50%;overflow:hidden}.section320.dark .overlay_image_box{color:#000}.section320 .arr1{position:relative}.section320 .arr1:not(:first-child){margin-top:50px}.section320 .scroller{color:#fff;width:auto;height:10px;display:block;z-index:10;text-align:center;position:relative;bottom:10px}.section320 .point:hover{filter:invert(1)}.section320 .point.current:hover{filter:invert(.5)}.section320 .point{width:14px;height:14px;border-radius:50%;background:#fff;border:1px solid #000;margin-right:5px;display:inline-block;transition:.3s}.section320 .point.current{border:1px solid #ccc;background:#000}.section320.slider{overflow-x:hidden;position:relative;z-index:50}.section320.cover_mode .sub_title,.section320.cover_mode .title,.section320.slider .arr1.slide{display:none}.section320.slider .slider_wrapper{position:relative}.section320.slider .go_left,.section320.slider .go_right{position:absolute;display:block;width:50px;height:50px;border-radius:20px;top:150px;font-size:48px;line-height:50px;text-align:center;opacity:.5;cursor:pointer;z-index:60}.section320.slider .go_right{right:0}.section320.slider .go_left{left:0}.section320.slider .go_left:hover,.section320.slider .go_right:hover{opacity:1}.section320.cover_mode .section_inner{width:100%!important;background:#fff}.section320.cover_mode .arr1:first-child .col_1{padding-top:110px}.section320.cover_mode .arr1:last-child .col_1{padding-bottom:80px}.section320.cover_mode .arr1:first-child .image1{position:absolute;top:-110px;left:calc(50% - 110px)}@media (max-width:640px){.section.cover_mode{padding-top:50vh!important;padding-bottom:0!important}.section320 .col_1{width:90%;margin:0 auto}.section320.slider .go_left,.section320.slider .go_right{display:none}}.section1121 .section_inner{width:100%;max-width:1680px}.section1121 .wrapp .title{font-size:42px;margin-bottom:1rem}.section1121 .wrapp .sub_title{font-size:24px;margin-bottom:2rem}.section1121 .form_text{margin-top:2rem;font-size:14px;color:#626262}.section1121 .wrapp.change_place{flex-direction:row-reverse}.section1121 .wrapp{display:flex;justify-content:space-between;position:relative}.section1121 .image1 img{width:100%;height:auto;display:block}.section1121.section .form1 .submit_btn{width:auto;padding:15px 50px;margin-top:20px;font-size:18px;white-space:normal}.section1121 .form_wrapp{padding:60px}.section1121 .form_wrapp,.section1121 .image1{max-width:50%;width:50%;box-sizing:border-box}.section1121 .section_inner:not(.all_border) .form_wrapp .field input:not([type=checkbox]):not([type=radio]):not([type=file]):not([type=submit]){color:var(--tf-input-color)}.section1121.dark .section_inner:not(.all_border) .form_wrapp .field input:not([type=checkbox]):not([type=radio]):not([type=file]):not([type=submit]){color:var(--tf-input-color-light)}@media (max-width:1400px){.section1121 .image1 img{height:100%;-o-object-fit:cover;object-fit:cover}}@media (max-width:1100px){.section1121 .form_wrapp{padding:30px}}@media (max-width:960px){.section1121 .wrapp .sub_title,.section1121 .wrapp .sub_title *{font-size:16px!important}.section1121 .wrapp .title,.section1121 .wrapp .title *{font-size:24px!important}}@media (max-width:800px){.section1121 .form1,.section1121 .form_wrapp,.section1121 .image1{max-width:100%;width:100%}.section1121 .image1 img{-o-object-fit:none;object-fit:none;-o-object-position:0% 50%;object-position:0% 50%;opacity:.2;-webkit-filter:blur(2px);filter:blur(2px)}.section1121 .form1{z-index:2;box-sizing:border-box}.section1121 .image1{position:absolute;height:100%;left:0;top:0}.section1121 .form_wrapp{z-index:5;padding:30px}}@media (max-width:440px){.section1121.section .form1 .submit_btn{max-width:100%;white-space:normal;line-height:1.4;width:100%}}.section119 .policy,.section119 .tobiz_link{text-decoration:underline;margin-top:10px;color:#888;cursor:pointer}.section119 .clear,.section119 .sn.hidden{display:none}.section119.fixed_top{z-index:100;padding:15px 0}.section119 .section_inner{display:flex;flex-direction:row;align-items:flex-start;justify-content:space-between;gap:40px}.section119 .logo_img img{max-width:200px;max-height:90px}.section119 .logo_img{display:block}.section119 .logo_text{max-width:200px;font-size:24px;min-width:10px}.section119 .width1170 .address-and-ua{max-width:50%;width:auto}.section119 .address-and-ua{margin-left:25px}.section119 .phone-and-address{text-align:right;flex-shrink:0}.section119 .phone1,.section119 .phone2{font-size:22px;margin-bottom:5px}.section119 .sn:hover,.section119 a.phone1:hover,.section119 a.phone2:hover{opacity:.7}.section119 .phone1.show_phone_icon:before,.section119 .phone2.show_phone_icon:before{content:"\f095";padding-right:5px;display:inline-block;font:14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.section119 a.phone1,.section119 a.phone2{color:inherit;text-decoration:none;display:block}.section119 .tobiz_link{display:none}.section119 .policy{display:block}.section119 .policy2_popup{display:none;margin-top:1rem;box-sizing:border-box;padding:20px;border:1px solid #e2e2e2;background:#fff}.section119.dark .policy2_popup{color:#000}.section119 .address1{font-size:14px;margin-bottom:10px}.section119 .policy2{cursor:pointer;display:inline;border-bottom:1px dashed;font-size:14px}.section119 .policy2:hover{border-bottom:1px solid transparent}.section119 .policy2_title{font-size:18px;font-weight:700}.section119 .social_icons{display:flex;justify-content:flex-end;margin-top:10px;margin-bottom:5px;flex-wrap:wrap;right:0}.section119 .sn{display:flex;justify-content:center;align-items:center;width:34px;height:34px;font-size:20px;margin-left:10px;margin-bottom:10px;font-family:FontAwesome;color:#fff;text-decoration:none;transition:.3s}.section119 .social_icons.icon-circle .sn{border-radius:50%}.section119 .txt1{margin-top:40px;text-align:center}.section119 .sn-vk{background:#507299}.section119 .sn-tg{background-color:#08c}.section119 .sn-tg:after{content:'\f1d9'}.section119 .sn-vk:after{content:''}.section119 .sn-ins{background:#f8cc01;background:-o-linear-gradient(45deg,#f8cc01 0,#e8102b 51%,#7d39b0 100%);background:linear-gradient(45deg,#f8cc01 0,#e8102b 51%,#7d39b0 100%)}.section119 .sn-ins:after{content:''}.section119 .sn-whatsup{background:#3ebe2b}.section119 .sn-whatsup:after{content:''}.section119 .sn-fb{background:#405d9a}.section119 .sn-fb:after{content:''}.section119 .sn-youtube{background:#e62117}.section119 .sn-youtube:after{content:''}.section119 .sn-o:after{content:''}.section119 .sn-o{background:#ee7808}.section119 .sn-vimeo:after{content:"\f27d"}.section119 .sn-vimeo{background:#00adef}.section119 .sn-viber{position:relative;background-color:#7d3daf}.section119 .sn-viber:after{content:"";position:absolute;top:0;left:0;width:100%;height:100%;background:url(/img/icons8-viber.svg) center/80% no-repeat}.section119 .search_form{width:90%;height:50px;display:flex}.section119 .search{height:38px;width:100%;position:relative;display:flex;align-items:center}.section119 .search_input:focus{outline:0;opacity:1}.section119 .search button{position:absolute;right:0;top:0;width:36px;height:38px;border:none;font-size:16px;background:0 0;color:#ccc;border-radius:5px}.section119 .search_input{height:38px;width:100%;background-color:#fff;padding:0 40px 0 10px;border:1px solid #ccc;opacity:.8;box-sizing:border-box;color:#333;border-radius:5px}.section119 .search button i{color:#999;animation:1.3s infinite alternate color_change}.section119 .find_popup .result_title{font-size:18px;margin-bottom:10px}.section119 .find_popup{box-sizing:border-box;display:none;width:74%;position:absolute;right:0;top:50px;border:1px solid #ccc;padding:20px;background:#fff;z-index:90;max-height:500px;overflow:auto;color:#333}.section119 .find_popup .find_item:hover{background:#f5f5f5}.section119 .find_popup .find_item{padding:5px 20px;cursor:pointer}.section119 .find_popup .find_item a{font-size:16px}.section119 .find_popup .close{width:15px;height:15px;background:url('/img/editor_icons/cancel.svg') center/100% no-repeat;cursor:pointer;position:absolute;right:10px;top:10px}.section119 .logo_img{max-width:270px;width:auto}@media (max-width:960px){.section119 .section_inner{flex-direction:column;align-content:center;text-align:center}.section119 .address-and-ua{margin-left:20px;width:100%}.section119 .social_icons{width:100%;position:static;flex-wrap:wrap;justify-content:center;margin-right:0;margin-top:5px;padding-top:5px}.section119 .phone-and-address{padding-bottom:0;width:100%;max-width:unset;margin-left:10px;display:flex;flex-direction:column;align-items:center}.section119 .find_popup{width:94%;text-align:left;top:140px;left:3%}.section119 .address1,.section119 .address1 *,.section119 .text1,.section119 .text1 *{font-size:14px!important}.section119 .text1{word-break:break-word}.section119 .phone1,.section119 .phone1 span,.section119 .phone2,.section119 .phone2 span{font-size:15px!important;width:auto}.section119 .section_inner{display:flex;align-items:center}}@media (max-width:800px){.section119 .logo_img,.section119 .logo_img img,.section119 .logo_text{max-width:160px}.section119 .logo_img img{max-width:100%}.section119 .phone1,.section119 .phone1 span,.section119 .phone2,.section119 .phone2 span{width:auto}.section119 .width1170 .address-and-ua{max-width:45%}.section119 .logo_img{width:22%}.section119 .phone-and-address{margin-left:10px;width:25%}.section119 .address-and-ua{width:50%;margin-left:20px}.section119 .social_icons{margin-right:0;margin-top:5px;padding-top:5px}.section119 .address1,.section119 .address1 *,.section119 .policy2,.section119 .policy2 span{font-size:14px!important;line-height:20px}}@media (max-width:640px){.section119 .width1170 .address-and-ua{max-width:100%}.section119 .logo_img{width:200px;display:flex;justify-content:center}.section119 .logo_text{float:none;margin:0 auto;width:auto;text-align:center}.section119 .menu-and-phone-and-btn{margin:25px auto 0;float:none;width:auto}.section119 .address-and-ua{float:none;margin:0 auto;width:94%;text-align:center}.section119 .phone-and-address{display:flex;flex-direction:column;align-items:flex-end;margin-right:0;width:auto}.section119 .section_inner{justify-content:space-between}.section119 .logo_text,.section119.fixed_top .logo_img,.section119.fixed_top .policy2,.section119.fixed_top .social_icons{display:none}.section119.fixed_top{padding:5px 0}.section119{padding:10px 0}.section119 .search_form{display:none;margin:0 auto}.section119.fixed_top .section_inner{display:flex}}@media (max-width:480px){.section119 .section_inner{flex-direction:column}.section119 .phone-and-address{align-items:center;margin-left:0}.section119 .phone-and-address,.section119 .phone1,.section119 .phone1 span,.section119 .phone2,.section119 .phone2 span,.section119 .text1,.section119 .text1 *{text-align:center}.section119 .phone1,.section119 .phone2{margin-top:10px;margin-bottom:10px}.section119 .social_icons{justify-content:center}}@media (max-width:440px){.section119 .section_inner,.section119.fixed_top .section_inner{flex-direction:column}}@media (max-width:400px){.section119 .section_inner,.section119.fixed_top .section_inner{flex-direction:column}.section119 .phone-and-address{align-items:center;margin-top:10px}}</style>
    <!-- Tobiz modules styles -->


    <script type="text/javascript" src="/assets/js/script.min.js"></script><script type="text/javascript" src="/assets/js/auth.js"></script>		<script type="text/javascript">tobiz.blocks = [];</script>





    <meta content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
    <style>@media (max-width:1500px){#sections_preview{padding:30px}}@media (max-width:1700px){.section .section_inner.width1680{--section-inner-width:1400px}}@media (max-width:1440px){.section .section_inner.width1400,.section .section_inner.width1680{--section-inner-width:1170px}}@media (max-width:1366px){.extra_images_big .extra_info_block.s120,.extra_images_big .extra_info_block.s150,.extra_images_big .extra_info_block.s200,.extra_images_big .extra_info_block.s300{padding:40px}.extra_images_big .left{width:50%}.extra_images_big .left img{max-width:100%}}@media (max-width:1220px){#wrapper{overflow:unset}#ipad_view,#mobile_view,li.open_catalog{display:none}.extra_images_big .extra_info_block.s150 .left,.extra_images_big .extra_info_block.s150 .right{width:100%;float:left}::-webkit-resizer{background-image:url('');background-repeat:no-repeat;width:2px;height:1px}::-webkit-scrollbar{width:2px}::-webkit-scrollbar-button{background:#ececec;width:2px;height:0}::-webkit-scrollbar-thumb{-webkit-border-radius:10px;border-radius:10px;background-color:#5ad0ff;-webkit-box-shadow:inset 0 0 6px rgba(0,0,0,.3)}::-webkit-scrollbar-track{background-color:#eaeaea}}@media (max-width:1180px){.section.fixed,body{background-attachment:fixed}.section.fixed{background-position:center;background-size:cover;-webkit-overflow-scrolling:touch}.section{min-width:940px}.section .section_inner,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.wide .section_inner{--section-inner-width:940px;width:940px}#img_zoomer_close,#img_zoomer_close.portret{margin:0;right:3%;top:3%;left:auto}#img_zoomer.square{background-size:contain}#img_zoomer.portret{background-size:auto 65%}#popup_wrapper{width:90%;height:500px;margin:0;left:5%;top:5%;box-sizing:border-box}#popup_wrapper_line2{width:80%}#basket_form_inner{width:90%;max-width:700px;height:auto;margin:0;left:50%;top:50%;transform:translate(-50%,-50%);padding-bottom:0;overflow-y:auto}#basket_left .btn-group{position:relative;bottom:unset}#basket_make_order input,#basket_make_order textarea{max-width:100%;width:100%;height:40px}#basket_left,#basket_right{overflow-y:visible}#basket_make_order{padding-bottom:30px}#basket_make_order textarea{max-width:100%;min-width:100%}input{margin:0;padding:0}#img_zoomer,#img_zoomer.portret,#img_zoomer.square{border:none;outline:0}}@media (max-width:1100px){.extra_images_big .extra_info_block.s120,.extra_images_big .extra_info_block.s150,.extra_images_big .extra_info_block.s200,.extra_images_big .extra_info_block.s300{padding:40px 20px;display:block}.extra_images_big .extra_info_block .left,.extra_images_big .extra_info_block .right{float:left;width:100%;margin-bottom:20px}.extra_images_big .extra_info_block.s200 .left .extra_images_in_card{float:left;width:100px;margin-right:10px}.extra_images_big .extra_info_block.s200 .extra_images_in_card .extra_image{margin-bottom:10px}}@media (max-width:960px){#img_zoomer,#img_zoomer.portret,#img_zoomer.square{background-repeat:no-repeat;background-color:transparent;background-position:center center;background-size:100% auto}#img_zoomer.portret{height:95vh}.section.fixed{background-attachment:scroll}.section{min-width:768px}.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:768px;width:768px}.extra_info_block_wrapper{overflow:auto}.extra_images_big .extra_info_block.s200 .left .extra_images_in_card,.extra_info_block .btn1x,.extra_info_block .btn2x,.extra_info_block .btn3x,.extra_info_block .btn4x,.extra_info_block .btn5x,.extra_info_block .left{width:100%}.extra_info_block .left img{max-width:100%}.extra_info_block .left,.extra_info_block .right{float:none}.extra_info_block .right{margin-top:20px}.extra_info_block .right .extra_info1,.extra_info_block .right .extra_info2,.extra_info_block .right .extra_info3,.extra_info_block .right .extra_info4,.extra_info_block .right .extra_info5{width:100%;height:auto;max-height:none}.extra_info_block .extra_image.image1,.extra_info_block .extra_image.image1_2,.extra_info_block .extra_image.image1_3,.extra_info_block .extra_image.image1_4{float:left;margin-right:10px;margin-bottom:10px;cursor:pointer;height:90px;width:126px}.extra_info_block{width:448px;position:relative;margin:0 auto;transform:translate(0);top:0;left:0}#popup_img_prev{left:10px}#popup_img_next{right:10px}.extra_info_block.s120 .left .extra_images_in_card,.extra_info_block.s150 .left .extra_images_in_card,.extra_info_block.s200 .left .extra_images_in_card,.extra_info_block.s300 .left .extra_images_in_card{margin-left:10px}.extra_info_block.s120 .left,.extra_info_block.s150 .left,.extra_info_block.s200 .left,.extra_info_block.s300 .left{display:flex;justify-content:space-between;margin:0 auto;width:85%}.extra_info_block.s120 .right,.extra_info_block.s150 .right,.extra_info_block.s200 .right,.extra_info_block.s300 .right{width:80%;margin:20px auto 0}.extra_info_block.s120,.extra_info_block.s150,.extra_info_block.s200,.extra_info_block.s300{width:560px;margin-top:5vh}.section.fixed_top{padding:15px 0}.catalog_items .extra_images_big .extra_info_block .left{display:block}.extra_images_big .extra_info_block .left .extra_images_in_card .extra_image{width:auto}.extra_images_big .extra_info_block.s120 .left .extra_images_in_card,.extra_images_big .extra_info_block.s150 .left .extra_images_in_card,.extra_images_big .extra_info_block.s200 .left .extra_images_in_card,.extra_images_big .extra_info_block.s300 .left .extra_images_in_card{margin-left:0}.extra_info_block_wrapper.extra_images_big .extra_info_block{overflow:auto;margin-top:0}.extra_info_block_wrapper.extra_images_big{overflow-x:hidden}.section .price_descr1,.section .price_descr1 span{font-size:15px}.section .logo_text,.section .logo_text span{margin-bottom:10px;font-size:18px}.section .form_title,.section .form_title span,.section .phone1,.section .phone1 span,.section .phone2,.section .phone2 span{font-size:1.25rem;line-height:2rem}.menu_mobile_btn{display:block;width:30px;height:30px;cursor:pointer;position:absolute;right:0;top:50%;transform:translateY(-50%)}.menu_mobile_btn.new_burger{background-image:none;display:flex;justify-content:center;align-items:center}.menu_mobile_btn.new_burger.circle{border-radius:50%}.menu_mobile_btn svg{max-width:32px;max-height:32px;fill:currentColor}.menu_mobile_btn.new_burger.circle svg{max-width:20px;max-height:20px}.menu_mobile_btn.active svg{display:none}.menu_mobile_btn.active{background-color:transparent!important}body.modal{margin-right:0}}@media (max-width:800px){.noise_new{background-size:cover}.content_block{display:flex;flex-direction:column-reverse}#basket_left .item.caption,.section.hide_in_mobile{display:none!important}#basket_left .item .image,#basket_left .item .itogo,#basket_left .item .price,#basket_left .item .quantity,#basket_left .item .title{float:none;text-align:left;margin-left:0;width:100%;line-height:1.5}#basket_left .item .title:before{display:inline;content:"Название: "}#basket_left .item .quantity:before{display:inline;content:"Количество: "}#basket_left .item .price:before{display:inline;content:"Цена за ед.: "}#basket_left .item .itogo:before{display:inline;content:"Итого: "}#popup_wrapper{background-image:none}#popup_wrapper_line1{font-size:20px;width:100%;padding-top:10px}#popup_wrapper .btn{width:250px;margin-top:10px;box-sizing:border-box}.section{min-width:640px;padding:20px 0}.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:640px;width:640px}.menu1.hover_menu_border_bottom li.level0:hover,.menu1.hover_menu_border_bottom li.level1:hover,.menu1.hover_menu_border_top li.level0:hover,.menu1.hover_menu_border_top li.level1:hover{border:none;border-left:2px solid;padding-left:8px}.menu1.hover_menu_border_bottom.hover_menu_border_triangle li.level0:hover::after,.section .menu-toogler.active svg{display:none}.menu1.menu_separate li.level0 a{border:none}.extra_info_block .extra_image{margin-bottom:10px}.extra_info_block{width:440px}.section .title,.section .title *{font-size:28px}.section .btn_descr,.section .btn_descr span{font-size:14px}.section .menu-toogler.active,.section .menu_mobile_btn.active{background:url(/img/editor_icons/cancel.svg) center no-repeat rgba(255,255,255,.2);background-size:70%;transform:translate(0,0)}.menu1.menu_separate.animate_menu li.level0 a,.menu1.menu_separate.hover_menu_shadow li.level0 a{padding:10px 7px}.extra_images_big .extra_info_block.s300 .left .extra_images_in_card{float:left;width:100px}.extra_images_big .extra_info_block.s300 .left,.extra_images_big .extra_info_block.s300 .right{float:left;width:100%}#basket_left .item{position:relative}.auth_form .forgot_password_show_form,.section.hide_in_desktop{display:block}.section .menu-toogler.new_burger{background-image:none;display:flex;justify-content:center;align-items:center;width:36px;height:36px}.section .menu-toogler.new_burger.circle{border-radius:50%}.section .menu-toogler svg{max-width:32px;max-height:32px;fill:currentColor}.section .menu-toogler.new_burger.circle svg{max-width:20px;max-height:20px}.section .menu-toogler.active{background-color:transparent!important;background-image:url(/img/editor_icons/cancel.svg);background-position:center center;background-repeat:no-repeat}.section .price1,.section .price2{font-size:20px!important}.menu_mobile_btn .fa{font-size:36px}#basket_left .item .image,#basket_left .item .image img{float:none;display:block;margin:0 auto 10px}.section .logo_text,.section .logo_text span{margin-bottom:10px;max-width:220px}.section .logo_text{float:left}#wrapper .hide_second_li .menu1 ul li.level1.visible{height:auto;margin-bottom:5px}#wrapper .hide_second_li .menu1 ul li.level1~li.level0{color:red}#wrapper .hide_second_li .menu1 ul li.level1{height:0;overflow:hidden;margin-bottom:0}#wrapper .menu1 ul li.level1{position:relative!important;top:unset!important;display:block!important;background:0 0!important}body.modal{margin-right:0}.auth_form .auth_form_wrapper,.forgot_password .forgot_password_wrapper{max-width:90%}}@media (max-width:640px){#popup_wrapper{background-image:none}#popup_wrapper_line1{font-size:20px;width:100%;padding-top:10px}#popup_wrapper .btn{width:250px;margin-top:10px;box-sizing:border-box;top:280px}.clear360,.clear480{display:block}#popup_wrapper_title,.section .title{font-size:22px}.popup_wrapper_inner{width:100%;height:100%;margin-top:0}#popup_wrapper_line2{top:140px}.popup_wrapper_inner::before{top:5px;right:5px}.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:480px;width:480px}.popup_form_inner{left:auto;top:auto;height:auto;padding:15px;width:80%;position:relative;margin:20px auto}.extra_info_block .extra_images_in_card .extra_image{width:29%;height:80px}#basket_descr,#basket_form_default_agreement,#basket_make_order,#basket_title,#sections_preview .section_preview,.extra_images_big .extra_info_block.s300 .left .extra_images_in_card,.extra_info_block.s120 .left,.extra_info_block.s120 .right,.extra_info_block.s150 .left,.extra_info_block.s150 .right,.extra_info_block.s200 .left,.extra_info_block.s200 .right,.extra_info_block.s300 .left,.extra_info_block.s300 .right,.field_input_radio>div{width:100%}.extra_info_block.s120,.extra_info_block.s150,.extra_info_block.s200,.extra_info_block.s300{width:375px}.extra_info_block.s120 .extra_images_in_card .extra_image,.extra_info_block.s150 .extra_images_in_card .extra_image,.extra_info_block.s200 .extra_images_in_card .extra_image,.extra_info_block.s300 .extra_images_in_card .extra_image{width:28%;margin-top:10px}.auth_form .auth_form_wrapper .row,.extra_info_block.s120 .left,.extra_info_block.s150 .left,.extra_info_block.s200 .left,.extra_info_block.s300 .left{flex-direction:column}#basket_left .btn-group{flex-direction:column;align-items:center}#basket_continue{margin-right:0;margin-bottom:15px}#policy{height:380px;left:50%;margin-left:-160px;margin-top:0;overflow-y:scroll;padding:20px;position:fixed;top:50px;width:280px}#policy .close_btn{margin-bottom:30px}.popup_thanks_inner{width:360px;margin-left:-210px}.objtimer .days,.objtimer .hrs,.objtimer .min,.objtimer .sec{font-size:28px}.objtimer .days_descr,.objtimer .hrs_descr,.objtimer .min_descr,.objtimer .sec_descr{font-size:14px}.field input[type=submit]{font-size:18px}.objtimer .days,.objtimer .days_descr,.objtimer .hrs,.objtimer .hrs_descr,.objtimer .min,.objtimer .min_descr,.objtimer .sec,.objtimer .sec_descr{width:25%}.objtimer .hrs,.objtimer .hrs_descr{left:25%}.objtimer .min,.objtimer .min_descr{left:50%}.objtimer .sec,.objtimer .sec_descr{left:75%}.section{min-width:360px;padding:20px 0!important}.section.widget:not(.section1003){padding:0!important}.auth_form .auth_form_wrapper,.forgot_password .forgot_password_wrapper{height:100vh;max-width:100%;overflow-y:auto}.auth_form .auth_form_wrapper .row .col{width:100%;margin-bottom:40px}.my_orders_list{display:flex;flex-wrap:wrap}.my_orders_list .order{width:50%}.my_orders .order_row div{margin:5px 0}.my_orders .order_row{align-items:flex-start;flex-direction:column}#wrapper .popup_video iframe{width:90vw;height:50vw}}@media (max-width:550px){#basket_right{width:100%;max-width:100%}#basket_left .item{flex-direction:column}#basket_left .item .remove{width:auto;font-size:20px}}@media (max-width:480px){.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:360px;width:360px}.my_orders_list .order{width:100%}}@media (max-width:440px){.extra_info_block{width:90%}#popup_wrapper_line2{top:155px;width:78%;font-size:14px}#popup_wrapper_line1{font-size:16px;width:75%}#popup_wrapper .btn{font-size:20px;width:300px}#hide_all{display:block}.lock .img{width:60px;height:60px}.extra_images_big .extra_info_block.s300 .extra_images_in_card .extra_image{height:auto}#basket_left .item .image{position:static}.section .title,.section .title *{font-size:26px!important}.section .sub_title,.section .sub_title *{font-size:17px!important}}@media (max-width:400px){.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:320px;width:320px}#policy{top:10px;margin-left:-150px;width:260px;height:200px}.popup_thanks_inner{width:210px;margin-left:-135px}.extra_info_block.s300 .extra_images_in_card .extra_image{height:120px}.section .sub_title,.section .title{width:100%}.section{background-size:cover;background-repeat:no-repeat}.section .logo_text,.section .logo_text span{font-size:16px}}@media (max-width:375px){.clear320{display:block}.section{min-width:320px}.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:320px;width:320px}.extra_info_block.s120,.extra_info_block.s150,.extra_info_block.s200,.extra_info_block.s300{width:95%}.extra_info_block.s300 .extra_images_in_card .extra_image{width:29%}.extra_images_big .extra_info_block .left .extra_images_in_card .extra_image{width:25%}#basket_make_order input,#basket_make_order textarea{min-width:100%}.section .logo_text,.section .logo_text span{font-size:15px}}@media (max-width:325px){.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:300px;width:300px}.section{min-width:unset}}@media (max-width:320px){.section .section_inner,.section .section_inner.standart,.section .section_inner.wide,.section .section_inner.width1170,.section .section_inner.width1400,.section .section_inner.width1680,.section .section_inner.width940,.section.inner_width .section_inner,.section.inner_width940 .section_inner,.section.wide .section_inner{--section-inner-width:95%;width:95%}}</style>



    <meta name="format-detection" content="telephone=no">



    <title></title>
    <meta name="keywords" content="">
    <meta name="description" content="">


    <meta property="og:type" content="website">



    <!--
    <meta property="og:url" content="http://132232.lp.tobiz.net/?v=179854">
    -->


    <script type="text/javascript">
        $(function () {


            (function(){
                var app = {
                    cookie: {
                        set: function(name,value,days) {
                            var expires = "";
                            if (days) {
                                var date = new Date();
                                date.setTime(date.getTime() + (days*24*60*60*1000));
                                expires = "; expires=" + date.toUTCString();
                            }
                            document.cookie = name + "=" + (value || "")  + expires + "; path=/";
                        },
                        get: function (name) {
                            var nameEQ = name + "=";
                            var ca = document.cookie.split(';');
                            for(var i=0;i < ca.length;i++) {
                                var c = ca[i];
                                while (c.charAt(0)==' ') c = c.substring(1,c.length);
                                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
                            }
                            return null;
                        },
                        remove: function (name) {
                            document.cookie = name+'=; Max-Age=-99999999;';
                        }
                    },
                    url: {
                        getParams: function(u){
                            var url = u || window.location.search,
                                queryString = url.split('?')[1],
                                urlParams={};
                            url = url.split('#')[0];
                            if (!queryString) {
                                if (url.search('=') !== false) {
                                    queryString = url;
                                }
                            }
                            if (queryString) {
                                var keyValuePairs = queryString.split('&')
                                for (var i = 0; i < keyValuePairs.length; i++) {
                                    var keyValuePair = keyValuePairs[i].split('=')
                                    var paramName = keyValuePair[0]
                                    var paramValue = keyValuePair[1] || ''
                                    urlParams[paramName] = decodeURIComponent(paramValue.replace(/\+/g, ' '));
                                }
                            }
                            return urlParams;
                        }
                    },
                    int: function(){


                        if(window.location.search=='?personal_data=2'){
                            window.location.href="/personal-data-2/";
                        }
                        if(window.location.search=='?personal_data=1'){
                            window.location.href="/personal-data-1/";
                        }
                        if(window.location.search=='?privacy_policy=1'){
                            window.location.href="/privacy-policy/";
                        }
                        if(window.location.search=='?dogovor-oferta=1'){
                            window.location.href="/dogovor-oferta/";
                        }
                        if(window.location.search=='?cookie-policy=1'){
                            window.location.href="/cookie-policy/";
                        }
//                                var get = $.extend({}, JSON.parse(app.cookie.get('tobiz_get_params')), app.url.getParams());
//                                app.cookie.set('tobiz_get_params', JSON.stringify(get));


                        if(app.cookie.get('tobiz_enter_point')===null){
                            app.cookie.set('tobiz_enter_point', window.location.href);
                        }




                    }
                };

                app.int();
                window.app = app;

            })();


            $('body').on('submit', 'form[action="handler.php"]', function (event) {
                event.preventDefault();


                var send = 1;
                if (!event.target.checkValidity()) {
                    $('form input:visible[required="required"]').each(function () {
                        if(!send) return false;
                        if (!this.validity.valid) {
                            $(this).focus();
                            send = 0;
                        }
                    });
                    if(!send) return;
                }



                var this_form = $(this);
                if (!$(this).children("input[name=project_id]").length)
                    $(this).prepend('<input type="hidden" name="project_id" value="' + window.tobiz.project_id + '">');
                if (!$(this).children("input[name=page_id]").length)
                    $(this).prepend('<input type="hidden" name="page_id" value="' + window.tobiz.rep_id + '">');
                if (!$(this).children("input[name=referrer]").length)
                    $(this).prepend('<input type="hidden" name="referrer" value="' + document.referrer + '">');
                if (!$(this).children("input[name=user_id]").length)
                    $(this).prepend('<input type="hidden" name="user_id" value="' + window.tobiz.user_id + '">');

                if ($(this).find("[data-action]").size()) {
                    $(this).prepend('<input type="hidden" name="product_name" value="' + $(this).find("[data-product_name]").data('product_name') + '">');
                    $(this).prepend('<input type="hidden" name="action" value="' + $(this).find("[data-action]").data('action') + '">');
                    $(this).prepend('<input type="hidden" name="amount" value="' + $(this).find("[data-action]").data('amount') + '">');
                    $(this).prepend('<input type="hidden" name="url" value="' + $(this).find("[data-action]").data('url') + '">');
                } else {
                    console.log('not found');
                }

                if (typeof(VK) != 'undefined' && $(this).find("[data-vk_pixel]").size() && $(this).find("[data-vk_pixel]").data('vk_pixel')!='undefined' &&  $(this).find("[data-vk_pixel]").data('vk_pixel')!='') {
                    console.log('vk_pixel_event: '+ $(this).find("[data-vk_pixel]").data('vk_pixel'));
                    VK.Retargeting.Event($(this).find("[data-vk_pixel]").data('vk_pixel'));
                } else {
                    console.log('vk_pixel not found');
                }


                if (typeof(gtag) != 'undefined' && $(this).find("[data-gtag_event]").size() && $(this).find("[data-gtag_event]").data('gtag_event')!='undefined' &&  $(this).find("[data-gtag_event]").data('gtag_event')!='') {
                    console.log('gtag_event: '+ $(this).find("[data-gtag_event]").data('gtag_event'));
                    gtag('event', $(this).find("[data-gtag_event]").data('gtag_event')+'');
                } else {
                    console.log('gtag_event not found');
                }



                if (typeof(fbq) != 'undefined' && $(this).find("[data-fb_pixel]").size() && $(this).find("[data-fb_pixel]").data('fb_pixel')!='undefined' &&  $(this).find("[data-fb_pixel]").data('fb_pixel')!='') {
                    console.log('fb_pixel_event: '+ $(this).find("[data-fb_pixel]").data('fb_pixel'));
                    fbq('trackCustom', $(this).find("[data-fb_pixel]").data('fb_pixel'));
                } else {
                    console.log('fb_pixel not found');
                }



                var formData = new FormData($(this)[0]);
                var this_block = $(this).closest('.section');
                $.ajax({
                    dataType: "json",
                    type: "POST",
                    url: "/handler.php",
                    data: formData,
//                            async: false,
                    cache: false,
                    contentType: false,
                    processData: false
                }).done(function (data) {
                    if (data.status == 'OK') {
                        window.modal.getModal('Успех', data.msg);
                        //alert(data.msg);
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                        window.basket.clean();
                        window.basket.hideForm();

                        $('.popup_form').hide();
                    }
                    if (data.status == 'ERROR') {
                        window.modal.getModal('Ошибка', data.msg);
                        //alert(data.msg);
                    }
                    if (data.status == 'JC') {

                        $('body').append(data.form);
                        $('#jc_form').submit();
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                    }

                    if (data.status == 'PAYEER') {
                        $('body').append(data.form);
                        $('#payeer_form').submit();
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                    }




                    if (data.status == 'SR') {
                        $('body').append(data.form);
                        $('#sr_form').submit();
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                    }
                    if (data.status == 'GR') {
                        $('body').append(data.form);
                        $('#gr_form').submit();
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                    }
                    if (data.status == 'RK') {
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                        window.location.href = data.url;
                    }
                    if (data.status == 'SB' || data.status == 'YooKassa') {
                        this_form.each(function () {
                            $(this)[0].reset();
                        })

                        window.basket.clean();
                        window.basket.hideForm();

                        window.location.href = data.link;
                    }
                    if (data.status == 'INTERKASSA') {
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                        window.location.href = data.url;
                    }

                    if (data.status == 'tinkoff') {


                        window.location.href = data.link;
                    }


                    if (data.status == 'redirect') {
                        this_form.each(function () {
                            $(this)[0].reset();
                        })


                        window.basket.clean();
                        window.basket.hideForm();
//                                window.basket.renderForm();
//                                window.basket.renderBtn();
//                                window.basket.hideBtn();
                        $('.popup_form').hide();

                        window.location.href = data.url;
                    }
                    if (data.status == 'thanks') {
                        this_block.find('.popup_thanks').show();
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                        $('.popup_form').hide();
                        this_block.find('.extra_info_block_wrapper').hide();
                    }

                    if (data.status == 'preorder_thanks') {


                        $('.popup_thanks').show();
                        $('.popup_form').hide();
                    }

                    if (data.status == 'flexThanks') {

                        let thanksTitle = $('body').find('input[data-action="flexThanks"]').data('thanks_title');
                        let thanksText = $('body').find('input[data-action="flexThanks"]').data('thanks_text');

                        if (!thanksTitle || typeof(thanksTitle) == 'undefined') {
                            thanksTitle = 'Спасибо!';
                        }
                        if (!thanksText || typeof(thanksText) == 'undefined') {
                            thanksText = 'Сообщение успешно отправлено';
                        }

                        $('body').find('.modal_close').click();

                        window.modal.getModal(thanksTitle, thanksText);
                    }
                    if (data.status == 'thanks_order_complete') {
                        this_block.find('.popup_thanks').show();
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                        window.basket.clean();
                        window.basket.hideForm();
                        window.basket.renderForm();
                        window.basket.renderBtn();
                        window.basket.hideBtn();
                        //alert('Спасибо ваш заказ успешно оформлен!');
                        $('.popup_form').hide();
                        window.basket.renderThanks();
                    }
                    if (data.status == 'already_sent') {
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                        $('.popup_form').hide();
                        window.modal.getModal('Ошибка', data.msg);
                        //alert(data.msg);
                    }
                }).error(function (xhr, ajaxOptions, thrownError) {
                    console.log(xhr.status);
                    console.log(thrownError)
                });
                console.log('wrf');
                return false;
            })
            $('body').on('submit', 'form.add_comment', function (event) {
                event.preventDefault();
                var this_form = $(this);
                var formData = new FormData($(this)[0]);
                var this_block = $(this).closest('.section');
                $.ajax({
                    dataType: "json",
                    type: "POST",
                    url: "/add_comment.php",
                    data: formData,
//                            async: false,
                    cache: false,
                    contentType: false,
                    processData: false
                }).done(function (data) {
                    if (data.status == 'OK') {
                        this_form.each(function () {
                            $(this)[0].reset();
                        })
                        window.modal.getModal('Успех', data.msg);
                        //alert(data.msg);
                        window.location.href="#comments";
                        window.location.reload();



                    }
                    if (data.status == 'ERROR') {
                        window.modal.getModal('Ошибка', data.msg);
                    }

                }).error(function (xhr, ajaxOptions, thrownError) {
                    console.log(xhr.status);
                    console.log(thrownError)
                });
                return false;
            })


        })
    </script>


    <link rel="apple-touch-icon" sizes="180x180" href="/assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/favicon/favicon-16x16.png">
    <link rel="shortcut icon" href="/assets/favicon/favicon.ico">

    <!--link rel="manifest" href="https://tobiz.net/favicon/site.webmanifest">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-config" content="https://tobiz.net/favicon/browserconfig.xml">
    <meta name="theme-color" content="#ffffff"-->	<!-- svg favicon -->

    <style data-generic="pageCacheCSS"></style>
    <!-- Google Fonts - Selective Loader --><link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;family=Ubuntu:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;family=Roboto:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <style id="page_style">
        #wrapper, .section1600 .flexblock_wrapper .flexblock_content, .flexblock_popup {font-family:Montserrat, sans-serif !important;}
        #wrapper .section_inner, #wrapper .section_inner .text, #wrapper .section_inner .text1, #wrapper .section_inner .text2, #wrapper .section_inner .text3, #wrapper .section_inner .address1, #wrapper .section_inner .txt, #wrapper .section_inner .txt1, #wrapper .section_inner .txt2, #wrapper .section_inner .txt3, #wrapper .section_inner .descr, #wrapper .section_inner .descr1, #wrapper .section_inner .price_descr1, #wrapper .section_inner .phone1, #wrapper .section_inner .sub_title, #wrapper .section_inner .btn_descr, #wrapper .section_inner .accordion .option, #wrapper .section_inner .cols_wrapp .item_title, #wrapper .section_inner .col_title .item_title, #wrapper .section_inner .txt_block, #wrapper .section_inner .table .col, #wrapper .section_inner .wrapp .sub_title, #wrapper .section_inner .sub_title3, #wrapper .section_inner .sub_title2, #wrapper .section_inner .wrapp .title, #wrapper .section_inner .sub_title1, #wrapper .section_inner .sub_title2, #wrapper .section_inner .sub_title3, #wrapper .section_inner .spoiler_title, #wrapper .section_inner .spoiler {font-size: 17px;}
        #wrapper .popup_form_inner,
        #wrapper .section_inner .text,
        #wrapper .section_inner .text1,
        #wrapper .section_inner .text2,
        #wrapper .section_inner .text3,
        #wrapper .section_inner .address1,
        #wrapper .section_inner .txt,
        #wrapper .section_inner .txt1,
        #wrapper .section_inner .txt2,
        #wrapper .section_inner .txt3,
        #wrapper .section_inner .descr,
        #wrapper .section_inner .descr1,
        #wrapper .section_inner .title1,
        #wrapper .section_inner .price1,
        #wrapper .section_inner .price2,
        #wrapper .section_inner .price3,
        #wrapper .section_inner .price_descr1,
        #wrapper .section_inner .phone1,
        #wrapper .section_inner .phone2,
        #wrapper .section_inner .sub_title,
        #wrapper .section_inner .btn_descr,
        #wrapper .section_inner .accordion .option,
        #wrapper .section_inner .cols_wrapp .item_title,
        #wrapper .section_inner .col_title .item_title,
        #wrapper .section_inner .txt_block,
        #wrapper .section_inner .table .col,
        #wrapper .section_inner .wrapp .sub_title,
        #wrapper .section_inner .sub_title3,
        #wrapper .section_inner .sub_title2,
        #wrapper .section_inner .wrapp .title,
        #wrapper .section_inner .title2,
        #wrapper .section_inner .title3,
        #wrapper .section_inner .sub_title1,
        #wrapper .section_inner .sub_title2,
        #wrapper .section_inner .sub_title3,
        #wrapper .section_inner .spoiler_title,
        #wrapper .section_inner .spoiler,
        #wrapper .section_inner {
            font-weight: 400
        }.section .section_inner .title{font-family:Montserrat, sans-serif;}
        .section_inner a {
            /* Page styles */
            color: #475a64
        }.section .btn1{font-family:Montserrat, sans-serif}.section .btn2{font-family:Montserrat, sans-serif}.section .btn3{font-family:Montserrat, sans-serif}.section .submit_btn{font-family:Montserrat, sans-serif}:root {--cookie_btn_font:Montserrat, sans-serif--cookie_btn_bg:#f9c000;--cookie_btn_bg_hover:;--cookie_btn_color:#fff;}#wrapper .menu li, #wrapper .menu1 li, #wrapper .menu2 li, #wrapper .menu3 li {font-family:Montserrat, sans-serif;}
        #wrapper .section_inner .price, #wrapper .section_inner .price1, #wrapper .section_inner .price2, #wrapper .section_inner .price3, #wrapper .section_inner .price4, #wrapper .section_inner .price5{font-family: Montserrat, sans-serif; font-size: ; font-weight: ; color: }


        :root{}

    </style>

    <style></style>

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons&amp;display=swap" type="text/css"><link rel="stylesheet" href="/fonts/font-awesome-4.7.0/css/fa.min.css" type="text/css"></head>


<body class="editor_false  lang_ru     not_ie"><div class="alerts"></div>


<div id="wrapper" class="">


    <div class="section section105 bg_mode_color" style="	background-color:#fff;	;	--dropdown-menu-bg-color:#ffffff;	--dropdown-menu-text-color:#333333;	--dropdown-menu-border-color:#f1f1f1;	--dropdown-menu-hover-bg-color:#f8f9fa;	--dropdown-menu-hover-text-color:#333333;	--dropdown-menu-shadow:0 3px 10px rgba(0, 0, 0, 0.2);	--dropdown-menu-item-padding:4px 15px;	padding-top:20px;	padding-bottom:20px" data-id="1709038" id="b_1709038">
        <div class="section_inner all_border width1170">
            <div class="logo">
                <div class="logo_img"><img src="/assets/img/logo_top.png" loading="lazy"></div>
            </div>
            <div class="menu-and-phone-and-btn">
                <div class="phones-wrapper" style="--phone-text-color:;--phone-font-size:20px;--phone-font-weight:500;">
                    <div class="phone1 zphone show_phone_icon"><a href="tel:<?=$core->cfgRead('site_phone')?>"><?=$core->cfgRead('site_phone')?></a></div>
                </div>
                <div style="color:#000;background-color:rgba(0,0,0,0)" class="menu_mobile_btn square new_burger">
                    <svg width="800px" height="800px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M20 7L4 7" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                    <path d="M20 12L4 12" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                    <path d="M20 17L4 17" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round"/>
                    </svg>
                </div>
                <div class="menu1" style="font-size:16px;background-color:#fff;color:#333333;font-weight:300">
                    <ul>
                        <li class="level0 "><a href="#anchor1" title="ПОЧЕМУ МЫ">ПОЧЕМУ МЫ</a></li>
                        <li class="level0 ">
                            <a href="#anchor3" title="КАТАЛОГ" onmouseover="showMenu('catalog')">КАТАЛОГ</a>
                            <div class="new_menu catalog" onmouseout="hideMenu('catalog')" style="display: none; position: absolute; background: #fff; z-index: 1; -webkit-box-shadow: 0px 8px 11px 6px rgba(34, 60, 80, 0.2);
-moz-box-shadow: 0px 8px 11px 6px rgba(34, 60, 80, 0.2); box-shadow: 0px 8px 11px 6px rgba(34, 60, 80, 0.2); margin-top: 10px; margin-left: 30px;">
                                <ul style="padding: 20px;">
                                    <?php foreach($objects_types as $objects_type) {?>
                                            <li class="level1 " style="margin-top: 10px;"><a style="padding-top: 10px; text-transform: uppercase; text-decoration: none;" href="/catalog?type=<?=$objects_type['id']?>"><?=$objects_type['name']?></a></li>

                                    <?php } ?>
                                </ul>
                            </div>
                        </li>
                        <li class="level0 "><a href="#anchor4" title="КОНТАКТЫ">КОНТАКТЫ</a></li>
                        <li class="level0 "><a href="/cab" title="КАБИНЕТ">КАБИНЕТ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="section section1154 clip_none  bg_mode_image dark" style="	background-image:url(/assets/img/top_bg.jpg);--section-background-repeat:no-repeat;--section-background-position:center center;--section-background-size:cover;	padding-top:150px;	padding-bottom:100px;	" data-id="1709039" id="b_1709039">
        <a name="a_1698109"></a>
        <div class="dark"></div>
        <div class="back_dark" style="opacity:0.35;background:linear-gradient(to bottom, #212121 0%, #212121 100%)"></div>
        <div class="section_inner width1170 all_border">
            <div class="headliner  ">
                <div class="title dark" style="margin-bottom:24px;font-weight:600">
                    <span style="font-size: 54px;"><b>Ваш ключ к счастливой жизни! </b></span>
                </div>
                <div class="sub_title dark" style="margin-bottom:24px;font-weight:400">
                    <p>Мы понимаем, что покупка или продажа жилья — это не просто сделка, а важный шаг на пути к вашей мечте. Поэтому мы делаем процесс простым, прозрачным и безопасным.</p>
                </div>
                <div class="btn1 surround" data-hcolor="#475a64" style="background-color:#f9c000;  border-radius: 0em;   box-shadow: 0;  font-size: 20px;   ">Оставить заявку сейчас</div>
            </div>
            <div class="popup_form">
                <div class="popup_form_inner">
                    <!--noindex--><div class="popup_form_close"></div>
                    <div class="popup_form_title">Оставить  заявку</div>
                    <form action="handler.php" enctype="multipart/form-data" method="post">
                        <div class="form1">
                            <input type="hidden" name="Название формы" value="">
                            <div class="field">
                                <div class="field_title ">Введите имя</div>
                                <div class="field_description"></div>
                                <div class="field_input field_input_text">
                                    <input type="text" required="required" name="Введите имя" placeholder="Введите имя" autocomplete="off">
                                </div>
                            </div>
                            <div class="field">
                                <div class="field_title ">Введите E-mail</div>
                                <div class="field_description"></div>
                                <div class="field_input field_input_email">
                                    <input type="email" required="required" name="Введите E-mail" placeholder="mail@mail.ru" autocomplete="off">
                                </div>
                            </div>
                            <div class="field">
                                <div class="field_title ">Введите номер телефона</div>
                                <div class="field_description">Наш менеджер Вам перезвонит</div>
                                <div class="field_input field_input_phone">
                                    <input type="text" pattern="[+)( .-]*[0-9]+[0-9+)( .-]*" minlength="6" required="required" name="Введите номер телефона" placeholder="xxx-xxx-xxx" autocomplete="off">
                                </div>
                            </div>
                            <div class="field field-submit"><div class="field_input"><input type="submit" class="submit_btn surround" data-hcolor="#475a64" data-action="thanks" data-metrica_event="" data-fb_pixel="" data-vk_pixel="" data-gtag_event="" data-url="" data-amount="0" data-product_name="" value="Записаться сейчас!" style="background-color:#f9c000;  border-radius: 0em; box-shadow: 0;  " autocomplete="off"></div></div>
                        </div>
                    </form>
                    <div class="popup_form_text">Нажимая на кнопку, Вы принимаете <a target="_blank" href="/?personal_data=1">Положение</a> и <a target="_blank" href="/?personal_data=2">Согласие</a> на обработку персональных данных.</div>
                    <!--/noindex-->
                </div>
            </div>
            <div class="popup_thanks">
                <div class="popup_thanks_inner">
                    <!--noindex-->
                    <div class="popup_thanks_close">X</div>
                    <div class="popup_thanks_title">Спасибо за заявку!</div>
                    <div class="popup_thanks_text">Заявка отправлена. Наш менеджер свяжется с Вами в ближайшее время.</div>
                    <!--/noindex-->
                </div>
            </div>	</div>
    </div>

    <div class="	section section1127	clip_none 	size_700x500					decor_line	bg_mode_color" style="	background-color:#ffffff;	padding-top:100px;	padding-bottom:60px;	" data-id="1709040" id="b_1709040">
        <a name="a_1705835"></a><div class="noise" style="background-image:url(/img/natural-paper.png)"></div>
        <div class="section_inner all_border width1170">
            <div class="arr1">
                <div data-link="" class="image1  top_left size_700x500">
                    <img src="/assets/img/index1.png"  width="700px" height="500px" loading="lazy">
                </div>
                <div class="right top_left size_700x500">
                    <div class="bg_right" style="opacity:1;background:#F2F2F2"></div>
                    <div class="title1" style="margin-bottom:1rem;font-weight:500"><strong><span style="font-size:26px"><span style="color:#000000"><span style="font-family:montserrat">О НАШЕЙ КОМПАНИИ</span></span></span></strong></div>				<div class="txt1">
                        <span style="color:#333333"></span><p>Описание компании нужно вставить сюда тем же шрифтом и тем же Описание компании нужно вставить сюда тем же шрифтом и тем же размером текста.&nbsp;Описание компании нужно вставить сюда тем же шрифтом и тем же размером текста.</p>
                        <span style="color:#333333"></span>
                    </div>				<div class="btn1 surround" data-hcolor="#475a64" style="background-color:#f9c000;  border-radius: 0em;   box-shadow: 0;  font-size: 18px;   ">ОСТАВИТЬ ЗАЯВКУ</div>
                    <div class="popup_form">
                        <div class="popup_form_inner">
                            <!--noindex--><div class="popup_form_close"></div>
                            <div class="popup_form_title">Оставить  заявку</div>
                            <form action="handler.php" enctype="multipart/form-data" method="post">
                                <div class="form1">
                                    <input type="hidden" name="Название формы" value="">
                                    <div class="field">
                                        <div class="field_title ">Введите имя</div>
                                        <div class="field_description"></div>
                                        <div class="field_input field_input_text">
                                            <input type="text" required="required" name="Введите имя" placeholder="Введите имя" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="field_title ">Введите E-mail</div>
                                        <div class="field_description"></div>
                                        <div class="field_input field_input_email">
                                            <input type="email" required="required" name="Введите E-mail" placeholder="mail@mail.ru" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="field_title ">Введите номер телефона</div>
                                        <div class="field_description"></div>
                                        <div class="field_input field_input_phone">
                                            <input type="text" pattern="[+)( .-]*[0-9]+[0-9+)( .-]*" minlength="6" required="required" name="Введите номер телефона" placeholder="xxx-xxx-xxx" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="field field-submit"><div class="field_input"><input type="submit" class="submit_btn surround" data-hcolor="#475a64" data-action="thanks" data-metrica_event="" data-fb_pixel="" data-vk_pixel="" data-gtag_event="" data-url="" data-amount="0" data-product_name="" value="Отправить" style="background-color:#f9c000;  border-radius: 0em; box-shadow: 0;  " autocomplete="off"></div></div>
                                </div>
                            </form>
                            <div class="popup_form_text">Нажимая на кнопку, Вы принимаете <a target="_blank" href="/?personal_data=1">Положение</a> и <a target="_blank" href="/?personal_data=2">Согласие</a> на обработку персональных данных.</div>
                            <!--/noindex-->
                        </div>
                    </div>
                    <div class="popup_form">
                        <div class="popup_form_inner">
                            <!--noindex--><div class="popup_form_close"></div>
                            <div class="popup_form_title">Оставить  заявку</div>
                            <form action="handler.php" enctype="multipart/form-data" method="post">
                                <div class="form2">
                                    <input type="hidden" name="Название формы" value="">
                                    <div class="field">
                                        <div class="field_title ">Введите имя</div>
                                        <div class="field_description"></div>
                                        <div class="field_input field_input_text">
                                            <input type="text" required="required" name="Введите имя" placeholder="Введите имя" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="field_title ">Введите E-mail</div>
                                        <div class="field_description"></div>
                                        <div class="field_input field_input_email">
                                            <input type="email" required="required" name="Введите E-mail" placeholder="mail@mail.ru" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="field">
                                        <div class="field_title ">Введите номер телефона</div>
                                        <div class="field_description"></div>
                                        <div class="field_input field_input_phone">
                                            <input type="text" pattern="[+)( .-]*[0-9]+[0-9+)( .-]*" minlength="6" required="required" name="Введите номер телефона" placeholder="xxx-xxx-xxx" autocomplete="off">
                                        </div>
                                    </div>
                                    <div class="field field-submit"><div class="field_input"><input type="submit" class="submit_btn surround" data-hcolor="#475a64" data-action="thanks" data-metrica_event="" data-fb_pixel="" data-vk_pixel="" data-gtag_event="" data-url="" data-amount="0" data-product_name="" value="Отправить" style="background-color:#f9c000;  border-radius: 0em; box-shadow: 0;  " autocomplete="off"></div></div>
                                </div>
                            </form>
                            <div class="popup_form_text">Нажимая на кнопку, Вы принимаете <a target="_blank" href="/?personal_data=1">Положение</a> и <a target="_blank" href="/?personal_data=2">Согласие</a> на обработку персональных данных.</div>
                            <!--/noindex-->
                        </div>
                    </div>							</div>		</div>
            <div class="popup_thanks">
                <div class="popup_thanks_inner">
                    <!--noindex-->
                    <div class="popup_thanks_close">X</div>
                    <div class="popup_thanks_title">Спасибо за заявку!</div>
                    <div class="popup_thanks_text">Заявка отправлена. Наш менеджер свяжется с Вами в ближайшее время.</div>
                    <!--/noindex-->
                </div>
            </div>
        </div>
    </div>

    <!--div class="section section130 	btn_align_center clip_none s_mode_c_icon mobile_col2 transparent_ico bg_mode_color" style="background-color:#ffffff; padding-top:80px; padding-bottom:10px; --tiles_radius:0px; --tiles_shadow:none; --tiles-padding:20px; --bg_color:#ffffff;	--tiles-text-align:center" data-id="1709041" id="b_1709041">
        <a name="a_1698545"></a>
        <div class="noise" style="background-image:url(/img/natural-paper.png)"></div>
        <div class="section_inner all_border width1170" style=";--icon_size:64px;--btn_fweight:300;--btn_fsize:18px;--item_title_fweight:400">
            <div class="catalog_items short_text count4 c_icon ">
                <div class="arr1">
                    <div class="col_4">
                        <div class="c_ico1  radius " style="background-image:url(/cicons/copier.svg)"></div>
                        <div class="title1"><span style="color:#333333"><span style="font-size:22px"><span style="font-family:ubuntu"><strong>ОПЫТ РАБОТЫ</strong></span></span></span></div>
                        <div class="txt1"><p>Подробное описание преимуществ Вашей компании</p></div>
                    </div>
                </div>
                <div class="arr1">
                    <div class="col_4">
                        <div class="c_ico1  radius " style="background-image:url(/cicons/files.svg)"></div>
                        <div class="title1"><span style="font-size:22px"><span style="font-family:ubuntu"><strong><span style="color:#555555">​​​​​​​</span>КАЧЕСТВО</strong></span></span></div>
                        <div class="txt1">Подробное описание преимуществ Вашей компании</div>
                    </div>
                </div>
                <div class="arr1">
                    <div class="col_4">
                        <div class="c_ico1  radius " style="background-image:url(/cicons/telescope.svg)"></div>
                        <div class="title1"><span style="color:#333333"><span style="font-size:22px"><span style="font-family:ubuntu"><strong>ГОТОВАЯ СТРАТЕГИЯ</strong></span></span></span></div>
                        <div class="txt1">Подробное описание преимуществ Вашей компании</div>
                    </div>
                </div>
                <div class="arr1">
                    <div class="col_4">
                        <div class="c_ico1  radius " style="background-image:url(/cicons/megaphone.svg)"></div>
                        <div class="title1"><span style="font-family:ubuntu,sans-serif;"><span style="font-size:22px"><strong>ВЫГОДНАЯ ЦЕНА</strong></span></span></div>
                        <div class="txt1">Подробное описание преимуществ Вашей компании</div>
                    </div>
                </div>
            </div>
        </div>
    </div-->

    <div class="section section250	clip_none bg_text mode_3 bg_mode_color" style="background-color:#f5f5f5; --section-image-radius:0; padding-top:80px; padding-bottom:80px;" data-id="1709042" id="b_1709042">
        <a name="anchor1"></a><div class="noise" style="background-image:url(/img/natural-paper.png)"></div>
        <div class="section_inner all_border width1170">	<div class="title" style="margin-bottom:1rem;font-weight:500">
                <p><span style="color:#696969"><span style="font-size:17px"><strong>П Р Е И М У Щ Е С Т В А</strong></span></span></p>
                <p><span style="font-size:48px"><strong>НАС ВЫБИРАЮТ</strong></span></p>
            </div>
            <div class="arr1">
                <div class="col_2">
                    <div class="overlay_image_box">
                        <div class="overlay_image_title title1"><span style="font-size:22px">#1 – <span style="font-family:ubuntu,sans-serif;">Преимущества работы с вашей компанией</span></span></div>
                        <div class="overlay_image_subtitle subtitle1"><p>Подробное описание этого преимущества в идеальном соотношении - это текст в 2 строчки. Так выглядеть текст будет максимально элегантно.</p></div>
                    </div>
                </div>
                <div class="col_2 last">
                    <div class="overlay_image_box">
                        <div class="overlay_image_title title2"><span style="font-size:22px">#2 –&nbsp;<span style="font-family:ubuntu">Еще преимущества работы с Вами</span></span></div>
                        <div class="overlay_image_subtitle subtitle2"><p>Подробное описание этого преимущества в идеальном соотношении - это текст в 2 строчки. Так выглядеть текст будет максимально элегантно.</p></div>
                    </div>
                </div>
            </div>
            <div class="arr1">
                <div class="col_2">
                    <div class="overlay_image_box">
                        <div class="overlay_image_title title1"><span style="font-size:22px">#3 –&nbsp;<span style="font-family:ubuntu">Еще преимущества работы с Вами</span></span></div>
                        <div class="overlay_image_subtitle subtitle1"><p>Подробное описание этого преимущества в идеальном соотношении - это текст в 2 строчки. Так выглядеть текст будет максимально элегантно.</p></div>
                    </div>
                </div>
                <div class="col_2 last">
                    <div class="overlay_image_box">
                        <div class="overlay_image_title title2"><span style="font-size:22px">#4 –&nbsp;<span style="font-family:ubuntu">Еще одно преимущество работы с Вами</span></span></div>
                        <div class="overlay_image_subtitle subtitle2"><p>Подробное описание этого преимущества в идеальном соотношении - это текст в 2 строчки. Так выглядеть текст будет максимально элегантно.</p></div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <!--div class="	section section1417	clip_none 					bg_mode_color" style="	background-color:#ffffff;	padding-top:40px;	padding-bottom:80px;	" data-id="1709043" id="b_1709043">
        <a name="a_1698234"></a><div class="section_inner all_border width1170">	<div class="title" style="margin-bottom:1rem;font-weight:500">
                <p><span style="color:#A9A9A9;"><span style="font-size:17px"><strong><span style="font-family:ubuntu">Э Т А П Ы&nbsp; Р А Б О Т Ы</span></strong></span></span></p>
                <p><span style="font-size:48px"><span style="font-family:ubuntu"><span style="color:#444444"><strong>КАК ПРОХОДИТ РАБОТА</strong></span></span></span></p>
            </div>	<div class="sub_title" style="margin-bottom:2rem;font-weight:400"><br></div>			<div class="arr1">			<div class="line" style="background-color:#333"></div>			<div class="mdico" style="background-color:#333"><i class="md md-brightness-1"></i></div>			<div class="col2 col_2">				<div class="extra_descr">1 этап</div>			</div>			<div class="col1 col_2">			<div class="title"><span style="font-size:26px">Вы оставляете заявку</span></div>			<div class="descr">на нашем сайте. Сделать это можно при помощи любой формы для связи</div>			</div>			<div class="clear"></div>		</div>			<div class="arr1">			<div class="line" style="background-color:#333"></div>			<div class="mdico" style="background-color:#333"><i class="md md-brightness-1"></i></div>			<div class="col2 col_2">				<div class="extra_descr">2 этап</div>			</div>			<div class="col1 col_2">			<div class="title"><span style="font-size:26px">Уточняем детали</span></div>			<div class="descr">практическое домашнее задание с&nbsp;проверкой и&nbsp;обратной связью</div>			</div>			<div class="clear"></div>		</div>			<div class="arr1">			<div class="line" style="background-color:#333"></div>			<div class="mdico" style="background-color:#333"><i class="md md-brightness-1"></i></div>			<div class="col2 col_2">				<div class="extra_descr">3 этап</div>			</div>			<div class="col1 col_2">			<div class="title"><span style="font-size:26px;">Общение с экспертами</span></div>			<div class="descr">Каждый студент может пообщаться с&nbsp;экспертами&nbsp;</div>			</div>			<div class="clear"></div>		</div>			<div class="arr1">			<div class="line" style="background-color:#333"></div>			<div class="mdico" style="background-color:#333"><i class="md md-brightness-1"></i></div>			<div class="col2 col_2">				<div class="extra_descr">4 этап</div>			</div>			<div class="col1 col_2">			<div class="title"><span style="font-size:26px;">Помощь с карьерой</span></div>			<div class="descr">Центр развития карьеры поможет с составлением резюме</div>			</div>			<div class="clear"></div>		</div>	</div>
    </div-->

    <!--div class="	section section146 	clip_none		square						bg_mode_color" style="	background-color:#f8f8f8;	--img-gap-Y:15px;	--img-gap-X:20px;	padding-top:60px;	padding-bottom:60px;	--images-justify-content:center;" data-id="1709044" id="b_1709044">
        <a name="a_1707632"></a><div class="section_inner all_border width1170" style=";--img_radius:0px;--img_grayscale:0;--img_blur:0px">	<div class="title" style="margin-bottom:1rem;font-weight:500">
                <span style="font-size:40px"><span style="font-family:montserrat"></span></span><p><span style="font-size:17px"><span style="color:#A9A9A9"><strong><span style="font-family:ubuntu">Н А Г Р А Д Ы</span></strong></span></span></p>
                <p><span style="font-size:48px"><span style="font-family:ubuntu"><span style="color:#444444"><strong>2019 REWARD КОМПАНИЯ</strong></span></span></span></p>
                <span style="font-size:40px"><span style="font-family:montserrat"></span></span>
            </div>	<div class="sub_title" style="margin-bottom:2rem;font-weight:400">
                <span style="font-size:22px">Планируя свои дни в городе, пожалуйста, отведите достаточно времени на то, чтобы увидеть не только Колизей, Испанскую лестницу, площадь Навона и обалдеть от красоты и количества туристов, но и для того, чтобы познакомиться с другим, жилым, спокойным, но не менее красивым Римом.&nbsp;</span>​​​​​​​</div>	<div class="images">					<div class="arr1 image_box">				<img src="/img/400x400/e10c0920b28341a4ffb6fb99babe4d76.jpg" srcset="/img/400x400/e10c0920b28341a4ffb6fb99babe4d76.jpg 1x, /img/800x800/e10c0920b28341a4ffb6fb99babe4d76.jpg 2x" width="400px" height="400px" loading="lazy">				<div class="overlay_image_box  active_off" data-link="" data-link-target="0">					<div class="overlay_image_title">Any bit of imaginable information rests at your fingertips</div>					<div class="overlay_image_descr">And search away</div>				</div>			</div>					<div class="arr1 image_box">				<img src="/img/400x400/4ff07182656fcd7db9cdb9790ea9a9e9.jpg" srcset="/img/400x400/4ff07182656fcd7db9cdb9790ea9a9e9.jpg 1x, /img/800x800/4ff07182656fcd7db9cdb9790ea9a9e9.jpg 2x" width="400px" height="400px" loading="lazy">				<div class="overlay_image_box  active_off" data-link="" data-link-target="0">					<div class="overlay_image_title">Any bit of imaginable information rests at your fingertips</div>					<div class="overlay_image_descr">And search away</div>				</div>			</div>					<div class="arr1 image_box">				<img src="/img/400x400/40e8d6efe5e66a62b35c5ca9fabab4ad.jpg" srcset="/img/400x400/40e8d6efe5e66a62b35c5ca9fabab4ad.jpg 1x, /img/800x800/40e8d6efe5e66a62b35c5ca9fabab4ad.jpg 2x" width="400px" height="400px" loading="lazy">				<div class="overlay_image_box  active_off" data-link="" data-link-target="0">					<div class="overlay_image_title">Any bit of imaginable information rests at your fingertips</div>					<div class="overlay_image_descr">And search away</div>				</div>			</div>			</div>
        </div>
    </div-->

    <!--div class="	section section304	clip_none 				bg_mode_color" style="	background-color:#FFFFFF;	padding-top:80px;	padding-bottom:40px;	--content-bg-color:#ffffff;	--content-bg-radius:7px;	" data-id="1709045" id="b_1709045">
        <a name="a_1698137"></a><div class="section_inner all_border width1170">	<div class="title" style="margin-bottom:1rem;font-weight:500">
                <p><span style="font-family:ubuntu"><span style="color:#A9A9A9"><span style="font-size:17px"><strong>П Р О Г Р А М М А</strong></span></span><br><span style="font-size:48px"><span style="color:#444444"><strong>ПРОФЕССИОНАЛЬНО</strong></span></span></span></p>
                <p style="text-align:left"><br></p>
            </div>				<div class="arr1">			<div class="spoiler close">				<div class="spoiler_title s_title">Принципы поисковых алгоритмов</div>				<div class="spoiler_content">											<div data-link="" class="s_image  ">							<img src="/img/400x300/f70dd57692cfc84cd14927f8bd3dae07.jpg" srcset="/img/400x300/f70dd57692cfc84cd14927f8bd3dae07.jpg 1x, /img/800x600/f70dd57692cfc84cd14927f8bd3dae07.jpg 2x" width="400px" height="300px" loading="lazy">						</div>										<div class="s_content ">Узнаем типы поисковых алгоритмов, выявим конкурентов. Определим коммерческие факторы, оказывающие влияние на ранжирование. Научимся на базовом уровне визуально разбираться в коде страниц сайта.<div>
                                <p><strong><br>Навыки, которые вы получите</strong></p>
                                <ul>
                                    <li>определение типов поисковых запросов</li>
                                    <li>выявление своих конкурентов в поиске</li>
                                    <li>умение определять коммерческие факторы, которые оказывают влияние на ранжирование в вашей тематике</li>
                                    <li>умение на базовом уровне визуально разбираться в коде и находить ошибки, допущенные при html-верстке документов</li>
                                </ul>
                            </div>
                        </div>				</div>				<div class="spoiler_toggle" style="background-color:#333">+</div>			</div>		</div>			<div class="arr1">			<div class="spoiler close">				<div class="spoiler_title s_title">Постановка и отслеживание целей</div>				<div class="spoiler_content">											<div data-link="" class="s_image  ">							<img src="/img/400x300/ba045ba3ff2c15f10ec78f12cfd0ded7.jpg" srcset="/img/400x300/ba045ba3ff2c15f10ec78f12cfd0ded7.jpg 1x, /img/800x600/ba045ba3ff2c15f10ec78f12cfd0ded7.jpg 2x" width="400px" height="300px" loading="lazy">						</div>										<div class="s_content ">Узнаем типы поисковых алгоритмов, выявим конкурентов. Определим коммерческие факторы, оказывающие влияние на ранжирование. Научимся на базовом уровне визуально разбираться в коде страниц сайта.<div>
                                <p><br><strong>Навыки, которые вы получите</strong></p>
                                <ul>
                                    <li>определение типов поисковых запросов</li>
                                    <li>выявление своих конкурентов в поиске</li>
                                    <li>умение определять коммерческие факторы, которые оказывают влияние на ранжирование в вашей тематике</li>
                                    <li>умение на базовом уровне визуально разбираться в коде и находить ошибки, допущенные при html-верстке документов</li>
                                </ul>
                            </div>
                        </div>				</div>				<div class="spoiler_toggle" style="background-color:#333">+</div>			</div>		</div>			<div class="arr1">			<div class="spoiler close">				<div class="spoiler_title s_title">Работа с клиентом</div>				<div class="spoiler_content">											<div data-link="" class="s_image  ">							<img src="/img/400x300/af7bc0420131f5dd449703a06468b7ab.jpg" srcset="/img/400x300/af7bc0420131f5dd449703a06468b7ab.jpg 1x, /img/800x600/af7bc0420131f5dd449703a06468b7ab.jpg 2x" width="400px" height="300px" loading="lazy">						</div>										<div class="s_content ">Узнаем типы поисковых алгоритмов, выявим конкурентов. Определим коммерческие факторы, оказывающие влияние на ранжирование. Научимся на базовом уровне визуально разбираться в коде страниц сайта.<div>
                                <p><br><strong>Навыки, которые вы получите</strong></p>
                                <ul>
                                    <li>определение типов поисковых запросов</li>
                                    <li>выявление своих конкурентов в поиске</li>
                                    <li>умение определять коммерческие факторы, которые оказывают влияние на ранжирование в вашей тематике</li>
                                    <li>умение на базовом уровне визуально разбираться в коде и находить ошибки, допущенные при html-верстке документов</li>
                                </ul>
                            </div>
                        </div>				</div>				<div class="spoiler_toggle" style="background-color:#333">+</div>			</div>		</div>			<div class="arr1">			<div class="spoiler close">				<div class="spoiler_title s_title">Внутренняя оптимизация</div>				<div class="spoiler_content">											<div data-link="" class="s_image  ">							<img src="/img/400x300/ea3937adeaadafd74940b94fae9955fc.jpg" srcset="/img/400x300/ea3937adeaadafd74940b94fae9955fc.jpg 1x, /img/800x600/ea3937adeaadafd74940b94fae9955fc.jpg 2x" width="400px" height="300px" loading="lazy">						</div>										<div class="s_content ">Узнаем типы поисковых алгоритмов, выявим конкурентов. Определим коммерческие факторы, оказывающие влияние на ранжирование. Научимся на базовом уровне визуально разбираться в коде страниц сайта.<div>
                                <p><br><strong>Навыки, которые вы получите</strong></p>
                                <ul>
                                    <li>определение типов поисковых запросов</li>
                                    <li>выявление своих конкурентов в поиске</li>
                                    <li>умение определять коммерческие факторы, которые оказывают влияние на ранжирование в вашей тематике</li>
                                    <li>умение на базовом уровне визуально разбираться в коде и находить ошибки, допущенные при html-верстке документов</li>
                                </ul>
                            </div>
                        </div>				</div>				<div class="spoiler_toggle" style="background-color:#333">+</div>			</div>		</div>			<div class="arr1">			<div class="spoiler close">				<div class="spoiler_title s_title">Внешняя оптимизация и маркетинг</div>				<div class="spoiler_content">											<div data-link="" class="s_image  ">							<img src="/img/400x300/2e306332fc321f5607a49e620f7f018b.jpg" srcset="/img/400x300/2e306332fc321f5607a49e620f7f018b.jpg 1x, /img/800x600/2e306332fc321f5607a49e620f7f018b.jpg 2x" width="400px" height="300px" loading="lazy">						</div>										<div class="s_content ">Узнаем типы поисковых алгоритмов, выявим конкурентов. Определим коммерческие факторы, оказывающие влияние на ранжирование. Научимся на базовом уровне визуально разбираться в коде страниц сайта.<div>
                                <p><br><strong>Навыки, которые вы получите</strong></p>
                                <ul>
                                    <li>определение типов поисковых запросов</li>
                                    <li>выявление своих конкурентов в поиске</li>
                                    <li>умение определять коммерческие факторы, которые оказывают влияние на ранжирование в вашей тематике</li>
                                    <li>умение на базовом уровне визуально разбираться в коде и находить ошибки, допущенные при html-верстке документов</li>
                                </ul>
                            </div>
                        </div>				</div>				<div class="spoiler_toggle" style="background-color:#333">+</div>			</div>		</div>			<div class="arr1">			<div class="spoiler close">				<div class="spoiler_title s_title">Дипломная работа</div>				<div class="spoiler_content">											<div data-link="" class="s_image  ">							<img src="/img/400x300/ff87fb2993197871280f5243dc19edf4.jpg" srcset="/img/400x300/ff87fb2993197871280f5243dc19edf4.jpg 1x, /img/800x600/ff87fb2993197871280f5243dc19edf4.jpg 2x" width="400px" height="300px" loading="lazy">						</div>										<div class="s_content ">
                            <p>Узнаем типы поисковых алгоритмов, выявим конкурентов. Определим коммерческие факторы, оказывающие влияние на ранжирование. Научимся на базовом уровне визуально разбираться в коде страниц сайта.</p>
                            <div>
                                <p><br><strong>Навыки, которые вы получите</strong></p>
                                <ul>
                                    <li>определение типов поисковых запросов</li>
                                    <li>выявление своих конкурентов в поиске</li>
                                    <li>умение определять коммерческие факторы, которые оказывают влияние на ранжирование в вашей тематике</li>
                                    <li>умение на базовом уровне визуально разбираться в коде и находить ошибки, допущенные при html-верстке документов</li>
                                </ul>
                            </div>
                        </div>				</div>				<div class="spoiler_toggle" style="background-color:#333">+</div>			</div>		</div>	</div>
    </div-->

    <div class="	section section1250	clip_none 					bg_mode_color" style="	background-color:#ffffff;	padding-top:40px;	padding-bottom:120px;	" data-id="1709046" id="b_1709046">
        <a name="a_1698142"></a><div class="section_inner all_border width1170 middle center">					<div class="arr1">			<div class="btn1    " data-hcolor="#475a64" style="color:#f9c000;  border-radius: 0em;   box-shadow: 0;  font-size: 18px;    ">Бесплатная консультация</div>
                <div class="popup_form">
                    <div class="popup_form_inner">
                        <!--noindex--><div class="popup_form_close"></div>
                        <div class="popup_form_title">Оставить  заявку</div>
                        <form action="handler.php" enctype="multipart/form-data" method="post">
                            <div class="form1">
                                <div class="field">
                                    <div class="field_title ">Введите имя</div>
                                    <div class="field_description"></div>
                                    <div class="field_input field_input_text">
                                        <input type="text" required="required" name="Введите имя" placeholder="Введите имя" autocomplete="off">
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="field_title ">Введите E-mail</div>
                                    <div class="field_description"></div>
                                    <div class="field_input field_input_email">
                                        <input type="email" required="required" name="Введите E-mail" placeholder="mail@mail.ru" autocomplete="off">
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="field_title ">Введите номер телефона</div>
                                    <div class="field_description"></div>
                                    <div class="field_input field_input_phone">
                                        <input type="text" pattern="[+)( .-]*[0-9]+[0-9+)( .-]*" minlength="6" required="required" name="Введите номер телефона" placeholder="xxx-xxx-xxx" autocomplete="off">
                                    </div>
                                </div>
                                <div class="field field-submit"><div class="field_input"><input type="submit" class="submit_btn surround" data-hcolor="#475a64" data-action="thanks" data-metrica_event="" data-fb_pixel="" data-vk_pixel="" data-gtag_event="" data-url="" data-amount="0" data-product_name="" value="Отправить" style="background-color:#f9c000;  border-radius: 0em; box-shadow: 0;  " autocomplete="off"></div></div>
                            </div>
                        </form>
                        <div class="popup_form_text">Нажимая на кнопку, Вы принимаете <a target="_blank" href="/?personal_data=1">Положение</a> и <a target="_blank" href="/?personal_data=2">Согласие</a> на обработку персональных данных.</div>
                        <!--/noindex-->
                    </div>
                </div>										<div class="btn2 surround" data-hcolor="#475a64" style="background-color:#f9c000;  border-radius: 0em;   box-shadow: 0;  font-size: 20px;   ">Заказать услуги</div>
                <div class="popup_form">
                    <div class="popup_form_inner">
                        <!--noindex--><div class="popup_form_close"></div>
                        <div class="popup_form_title">Оставить  заявку</div>
                        <form action="handler.php" enctype="multipart/form-data" method="post">
                            <div class="form2">
                                <div class="field">
                                    <div class="field_title ">Введите имя</div>
                                    <div class="field_description"></div>
                                    <div class="field_input field_input_text">
                                        <input type="text" required="required" name="Введите имя" placeholder="Введите имя" autocomplete="off">
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="field_title ">Введите E-mail</div>
                                    <div class="field_description"></div>
                                    <div class="field_input field_input_email">
                                        <input type="email" required="required" name="Введите E-mail" placeholder="mail@mail.ru" autocomplete="off">
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="field_title ">Введите номер телефона</div>
                                    <div class="field_description"></div>
                                    <div class="field_input field_input_phone">
                                        <input type="text" pattern="[+)( .-]*[0-9]+[0-9+)( .-]*" minlength="6" required="required" name="Введите номер телефона" placeholder="xxx-xxx-xxx" autocomplete="off">
                                    </div>
                                </div>
                                <div class="field field-submit"><div class="field_input"><input type="submit" class="submit_btn surround" data-hcolor="#475a64" data-action="thanks" data-metrica_event="" data-fb_pixel="" data-vk_pixel="" data-gtag_event="" data-url="" data-amount="0" data-product_name="" value="Отправить" style="background-color:#f9c000;  border-radius: 0em; box-shadow: 0;  " autocomplete="off"></div></div>
                            </div>
                        </form>
                        <div class="popup_form_text">Нажимая на кнопку, Вы принимаете <a target="_blank" href="/?personal_data=1">Положение</a> и <a target="_blank" href="/?personal_data=2">Согласие</a> на обработку персональных данных.</div>
                        <!--/noindex-->
                    </div>
                </div>									</div>	</div>
    </div>

    <div class="section section1153 clip_none      bg_mode_image dark" style="	background-image:url(/img/1920x0/4784c051ec1dc4767f763824a20b543b.jpg);--section-background-repeat:no-repeat;--section-background-position:center center;--section-background-size:cover;	" data-id="1709047" id="b_1709047">
        <a name="a_1698348"></a><div class="back_dark" style="opacity:0.8;background:linear-gradient(to bottom, #424242 0%, #212121 100%)"></div>
        <div class="dark"></div>
        <div class="section_inner all_border width1170">	<div class="title dark" style="margin-bottom:1rem;font-weight:500">
                <div><span style="font-size:54px;"><strong><br></strong></span></div>
                <p><span style="font-size:54px;"><strong>НАШИ ПАРТНЕРЫ</strong></span></p>
            </div>	<div class="sub_title dark" style="margin-bottom:2rem;font-weight:400">
                <p><span style="font-size:22px"><span style="color:#dddddd">&nbsp;<strong>______________</strong></span></span></p>
                <p><br></p>
                <p><span style="font-size:30px;">Продолжение описания компании нужно вставить сюда тем же шрифтом<br>&nbsp;и тем же размером текста</span></p>
            </div>	<div class="images">					<div class="image_box  arr1">				<div class="img1153" style="background-image:url(/img/0x150/logo_6.png)"></div>				<div class="overlay_image_box" data-link-target="" data-link="">				</div>			</div>					<div class="image_box  arr1">				<div class="img1153" style="background-image:url(/img/0x150/logo_7.png)"></div>				<div class="overlay_image_box" data-link-target="" data-link="">				</div>			</div>					<div class="image_box  arr1">				<div class="img1153" style="background-image:url(/img/0x150/logo_8.png)"></div>				<div class="overlay_image_box" data-link-target="" data-link="">				</div>			</div>					<div class="image_box  arr1">				<div class="img1153" style="background-image:url(/img/0x150/logo_9.png)"></div>				<div class="overlay_image_box" data-link-target="" data-link="">				</div>			</div>					<div class="image_box  arr1">				<div class="img1153" style="background-image:url(/img/0x150/logo_10.png)"></div>				<div class="overlay_image_box" data-link-target="" data-link="">				</div>			</div>			</div>
        </div>
    </div>

    <!--div class="section section258     btn-m  section_direction_column icons_direction_column clip_none  bg_mode_image light" style="	background-image:url(/img/1920x0/2e1f3af8f905b5743a7c736ce62f0867.jpg);--section-background-repeat:no-repeat;--section-background-position:center center;--section-background-size:cover;	padding-top:40px;	padding-bottom:40px;	--icons-bg:;		--icons-count:3;	--icons-gap-Y:25px;	--icons-gap-X:25px;	" data-id="1709048" id="b_1709048">
        <a name="a_1698246"></a><div class="back_dark" style="opacity:0.96;background:linear-gradient(to bottom, #ffffff 0%, #ffffff 100%)"></div>
        <div class="section_inner width1170">	<div class="title light" style="margin-bottom:1rem;font-weight:500">
                <p style="text-align:center"><span style="color:#000000;"><br></span></p>
                <p style="text-align:center"><span style="color:#000000;"><br></span></p>
                <p style="text-align:center"><span style="color:#000000;"><span style="font-size:48px"><strong>КОМУ НУЖНЫ НАШИ УСЛУГИ?</strong></span></span></p>
            </div>	<div class="sub_title light" style="margin-bottom:2rem;font-weight:400"><p style="text-align:center"><span style="font-size:24px"><span style="color:#444444">Профессиональные услуги&nbsp;стоимостью&nbsp;<strong>30 000 руб. </strong>вы получаете за<strong> 19 900 руб.&nbsp;</strong></span></span></p></div>		<div class="content_block">					<div class="form_wrapper" style="color:#ebebeb;border-color:#ebebeb;border-radius:0">				<div class="form_bg_color" style="opacity:1"></div>									<div class="form_title"><div><p style="text-align:center"><span style="font-family:ubuntu"><span style="color:#444444"><span style="font-size:22px"><strong>Оставьте заявку&nbsp;</strong></span></span></span></p></div></div>					<div class="form_sub_title"></div>					<div class="form1">						<form action="handler.php" enctype="multipart/form-data" method="post">															<input type="hidden" name="Название формы" value="">
                            <div class="field">
                                <div class="field_title ">Введите имя</div>
                                <div class="field_description"></div>
                                <div class="field_input field_input_text">
                                    <input type="text" required="required" name="Введите имя" placeholder="Введите имя" autocomplete="off">
                                </div>
                            </div>
                            <div class="field">
                                <div class="field_title ">Введите E-mail</div>
                                <div class="field_description"></div>
                                <div class="field_input field_input_email">
                                    <input type="email" required="required" name="Введите E-mail" placeholder="mail@mail.ru" autocomplete="off">
                                </div>
                            </div>															<div class="field field-submit"><div class="field_input"><input type="submit" class="submit_btn surround" data-hcolor="#475a64" data-action="thanks" data-metrica_event="" data-fb_pixel="" data-vk_pixel="" data-gtag_event="" data-url="" data-amount="0" data-product_name="" value="Записаться на курс" style="background-color:#f9c000;  border-radius: 0em; box-shadow: 0;  " autocomplete="off"></div></div>													</form>					</div>					<div class="form_text">Нажимая на кнопку, Вы принимаете <a target="_blank" href="/?personal_data=1">Положение</a> и <a target="_blank" href="/?personal_data=2">Согласие</a> на обработку персональных данных.</div>							</div>				<div class="arr_block">							<div class="arr1">					<div class="col_3">						<div class="icon_layer">							<div class="mdico1" style="color:#333"><i class="md svg-icon-idea"></i></div>							<div class="title1">
                                    <strong><span style="color:#FAEBD7"><span style="font-family:montserrat"><span style="font-size:28px"></span></span></span></strong><span style="color:#000000;">Новички digital-сферы​​​​​​​</span><strong><span style="color:#FAEBD7"><span style="font-family:montserrat"><span style="font-size:28px"></span></span></span></strong>
                                </div>						</div>						<div class="txt1">
                                <span style="font-family:montserrat"></span><span style="color:#000000;">Единственный в своем роде курс</span><span style="font-family:montserrat"></span>
                            </div>					</div>				</div>							<div class="arr1">					<div class="col_3">						<div class="icon_layer">							<div class="mdico1" style="color:#333"><i class="md svg-icon-bodyguard"></i></div>							<div class="title1">
                                    <span style="color:#FAEBD7"><span style="font-family:montserrat"><span style="font-size:28px"><strong></strong></span></span></span><span style="color:#000000;">Руководители и владельцы бизнеса</span><span style="color:#FAEBD7"><span style="font-family:montserrat"><span style="font-size:28px"><strong></strong></span></span></span>
                                </div>						</div>						<div class="txt1">
                                <span style="font-family:montserrat"></span><span style="color:#000000;">Курс создан профессиональными опытными специалистами</span><span style="font-family:montserrat"></span>
                            </div>					</div>				</div>							<div class="arr1">					<div class="col_3">						<div class="icon_layer">							<div class="mdico1" style="color:#333"><i class="md svg-icon-technician"></i></div>							<div class="title1">
                                    <span style="color:#FAEBD7"><span style="font-family:montserrat"><span style="font-size:28px"><strong></strong></span></span></span><span style="color:#000000;">Специалисты смежных профессий</span><span style="color:#FAEBD7"><span style="font-family:montserrat"><span style="font-size:28px"><strong></strong></span></span></span>
                                </div>						</div>						<div class="txt1">
                                <div>
                                    <span style="color: rgb(0, 0, 0);">Материал полезен и для новичков и для профессионалов</span><br>
                                </div>
                                <div><span style="color: rgb(0, 0, 0);"><br></span></div>
                                <div><span style="color: rgb(0, 0, 0);"><br></span></div>
                                <div>
                                    <span style="color: rgb(0, 0, 0);"></span><span style="color: rgb(0, 0, 0);"></span><span style="color: rgb(0, 0, 0);">​​​​​​​<br></span>
                                </div>
                                <div><span style="color: rgb(0, 0, 0);"><br></span></div>
                            </div>					</div>				</div>					</div>	</div>
            <div class="popup_thanks">
                <div class="popup_thanks_inner">


                    <div class="popup_thanks_close">X</div>
                    <div class="popup_thanks_title">Спасибо за заявку!</div>
                    <div class="popup_thanks_text">Заявка отправлена. Наш менеджер свяжется с Вами в ближайшее время.</div>


                </div>
            </div>	</div>
    </div-->

    <!--div class="	section section117 	clip_none 				bg_text	bg_mode_color" style="	background-color:#ffffff;	--section-image-radius:0;	padding-top:80px;	padding-bottom:60px;	" data-id="1709049" id="b_1709049">
        <a name="anchor3"></a><div class="section_inner all_border width1170">	<div class="title" style="margin-bottom:1rem;font-weight:500">
                <p><span style="color:#A9A9A9"><span style="font-size:17px"><span style="font-family:ubuntu"><strong>Э К С П Е Р Т Ы&nbsp;</strong></span></span></span></p>
                <p><span style="color:#444444"><span style="font-size:48px"><span style="font-family:ubuntu"><strong>Наши лучшие специалисты</strong></span></span></span></p>
            </div>	<div class="sub_title" style="margin-bottom:2rem;font-weight:400"><p>Каждый выпускник&nbsp;получает помощь&nbsp;и поддержку опытных наставников</p></div>	<div class="arr_wrapper">			<div class="arr1">							<div data-link="" class="col_2  image1  border image_size_940x680  border1">											<img src="/img/470x340/a1b6ac99552ea2fe56a66db2dbf7d644.jpg" srcset="/img/470x340/a1b6ac99552ea2fe56a66db2dbf7d644.jpg 1x, /img/940x680/a1b6ac99552ea2fe56a66db2dbf7d644.jpg 2x" width="470px" height="340px" loading="lazy">									</div>						<div class="col_2">				<div class="descr1"><p><span style="color:#444444"><span style="font-size:30px">Александр&nbsp;Андреев</span></span></p></div>				<div class="txt1">
                            <p><span style="color:#333333">Дипломированный специалист&nbsp;</span>в области веб-аналитики и поисковой оптимизации. Почти десятилетний опыт работы над интернет-проектами.</p>
                            <p><br></p>
                            <p>Руководитель агентства интернет-маркетинга impulse.guru и основатель сервиса автоматизации отчетности в digital SEO-reports.ru.</p>
                            <p><br>Есть десяток причин, почему сайт конкурентов в топе, а ваш — нет. На моём занятии мы разбираем чуть менее, чем все факторы ранжирования, и учимся нажимать на все кнопочки сразу, чтобы поднять вас на первые позиции в выдаче.</p>
                        </div>			</div>		</div>			<div class="arr1">							<div data-link="" class="col_2  image1  border image_size_940x680  border1">											<img src="/img/470x340/ba6cd2420039156e16ce1b11716bc572.jpeg" srcset="/img/470x340/ba6cd2420039156e16ce1b11716bc572.jpeg 1x, /img/940x680/ba6cd2420039156e16ce1b11716bc572.jpeg 2x" width="470px" height="340px" loading="lazy">									</div>						<div class="col_2">				<div class="descr1"><p><span style="color:#444444"><span style="font-family:ubuntu"><span style="font-size:30px">Вячеслава Михайлова</span></span></span></p></div>				<div class="txt1">
                            <p><span style="color:#333333">Дипломированный специалист&nbsp;</span>в области веб-аналитики и поисковой оптимизации. Почти десятилетний опыт работы над интернет-проектами.</p>
                            <p><br></p>
                            <p>Руководитель агентства интернет-маркетинга impulse.guru и основатель сервиса автоматизации отчетности в digital SEO-reports.ru.</p>
                            <p><br>Есть десяток причин, почему сайт конкурентов в топе, а ваш — нет. На моём занятии мы разбираем чуть менее, чем все факторы ранжирования, и учимся нажимать на все кнопочки сразу, чтобы поднять вас на первые позиции в выдаче.</p>
                        </div>			</div>		</div>		</div>
        </div>
    </div-->

    <div data-autoslide="0" class="section section320 clip_none slider bg_text bg_mode_color " style="background-color:#ffffff;padding-top:120px;padding-bottom:80px;" data-id="1709050" id="b_1709050">
        <a name="a_1698370"></a><div class="back_dark" style="opacity:0.69;background:linear-gradient(to bottom, #3a2923 0%, #424242 100%)"></div>
        <div class="dark"></div>
        <div class="section_inner all_border width1170">
            <div class="title" style="margin-bottom:1rem;font-weight:500">
                <p><br></p>
                <p><span style="color:#444444"><span style="font-size:40px"><strong><span style="font-family:ubuntu">Отзывы наших клиентов</span></strong></span></span></p>
            </div>	<div class="sub_title" style="margin-bottom:2rem;font-weight:400"></div>
            <div class="slider_wrapper" style="left: 0%;">
                <div class="go_left"><i class="fa fa-angle-left"></i></div>
                <div class="go_right"><i class="fa fa-angle-right"></i></div>
                <div class="arr1 slide" style="display: block;">
                    <div class="col_1">
                        <div class="image1 img_radius" data-link="">
                            <img src="/assets/img/review.jpg" width="220px" height="220px" loading="lazy">
                        </div>
                        <div class="overlay_image_box">
                            <div class="overlay_image_title title1">
                                <p style="text-align:center"><span style="font-size:24px">Михаил Савинский</span></p>
                            </div>
                            <div class="overlay_image_subtitle subtitle1">
                                <p style="text-align:center">Выражаю огромную благодарность агентству за креативный подход и качественную работу.&nbsp;Я сотрудничаю с ними уже не первый год и могу сказать, что очень доволен результатом нашего сотрудничества.&nbsp;</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="arr1 slide" style="display: none;">
                    <div class="col_1">
                        <div class="image1 img_radius" data-link="">
                            <img src="/assets/img/review.jpg" width="220px" height="220px" loading="lazy">					</div>					<div class="overlay_image_box">						<div class="overlay_image_title title1">
                                <p style="text-align:center"><span style="font-size:24px;">Александр Александров</span></p>
                            </div>
                            <div class="overlay_image_subtitle subtitle1">
                                <p style="text-align:center">Компания доказала профессионализм каждого специалиста. Мы выражаем благодарность всей команде и руководителю агентства, в частности. Планируем обращаться в дальнейшем и рекомендовать нашим партнерам.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="scroller"><div class="point current" data-id="0"></div>
                    <div class="point" data-id="1"></div>
                </div>
            </div>
        </div>
    </div>

    <!--div class="	section section1121	clip_none 	size_900x700				bg_mode_color" style="	background-color:#ffffff;	padding-top:100px;	padding-bottom:80px;	" data-id="1709051" id="b_1709051">
        <a name="anchor4"></a>	<div class="section_inner">		<div class="wrapp change_place">			<div class="image1 size_900x700">				<img src="/img/900x700/78df2fd933ea5c04d96ba778c1ec38f1.jpg" srcset="/img/900x700/78df2fd933ea5c04d96ba778c1ec38f1.jpg 1x, /img/1800x1400/78df2fd933ea5c04d96ba778c1ec38f1.jpg 2x" width="900px" height="700px" loading="lazy">			</div>			<div class="form_wrapp">				<div class="title" style="margin-bottom:1rem;font-weight:500"><p><span style="font-size:42px"><strong><span style="color:#333333"><span style="font-family:ubuntu">Успейте записаться на прием</span></span></strong></span></p></div>				<div class="sub_title" style="margin-bottom:2rem;font-weight:400"><u>Скидка первым 20-ти записавшимся 20%</u></div>			<div class="form1">				<form action="handler.php" enctype="multipart/form-data" method="post">											<input type="hidden" name="Название формы" value="">
                            <div class="field">
                                <div class="field_title ">Введите имя</div>
                                <div class="field_description"></div>
                                <div class="field_input field_input_text">
                                    <input type="text" required="required" name="Введите имя" placeholder="Введите имя" autocomplete="off">
                                </div>
                            </div>
                            <div class="field">
                                <div class="field_title ">Введите email</div>
                                <div class="field_description"></div>
                                <div class="field_input field_input_email">
                                    <input type="email" required="required" name="Введите email" placeholder="Введите email" autocomplete="off">
                                </div>
                            </div>
                            <div class="field">
                                <div class="field_title ">Введите телефон</div>
                                <div class="field_description"></div>
                                <div class="field_input field_input_phone">
                                    <input type="text" pattern="[+)( .-]*[0-9]+[0-9+)( .-]*" minlength="6" required="required" name="Введите телефон" placeholder="xxx-xxx-xxx" autocomplete="off">
                                </div>
                            </div>											<div class="field field-submit"><div class="field_input"><input type="submit" class="submit_btn surround" data-hcolor="#475a64" data-action="thanks" data-metrica_event="" data-fb_pixel="" data-vk_pixel="" data-gtag_event="" data-url="" data-amount="0" data-product_name="" value="Записаться" style="background-color:#f9c000;  border-radius: 0em; box-shadow: 0;  " autocomplete="off"></div></div>									</form>			</div>			<div class="form_text">Нажимая на кнопку, Вы принимаете <a target="_blank" href="/personal-data-1/">Положение</a> и <a target="_blank" href="/personal-data-2/">Согласие</a> на обработку персональных данных.</div>		</div>	</div>
            <div class="popup_thanks">
                <div class="popup_thanks_inner">

                </div>
            </div>
        </div>
    </div-->

    <div class="section section119 bg_mode_color" style="background-color:#f3f3f3; padding-top:40px; padding-bottom:40px" data-id="1709052" id="b_1709052">
        <a name="a_1698412"></a>
        <div class="section_inner all_border all_border width1170">
            <div class="logo">
                <!--div class="logo_text"><span style="color:#696969"><span style="font-family:montserrat"><strong>YourLogo</strong></span></span></div-->
                <div class="logo_img"><img src="/assets/img/logo_top.png" loading="lazy"></div>
            </div>
            <div class="address-and-ua">
                <div class="address1">АН "Солнечный город", 123456, Краснодарский край, ст. Старонижестеблиевская ......<br>ИНН 1234567890 ОГРН 123456789012</div>
                <div class="policy2">Политика конфиденциальности</div>
            </div>
            <div class="phone-and-address">
                <div class="phones-wrapper" style="--phone-text-color:;--phone-font-size:20px;--phone-font-weight:500;">
                    <div class="phone1 zphone show_phone_icon"><a href="tel:<?=$core->cfgRead('site_phone')?>"><?=$core->cfgRead('site_phone')?></a></div>
                </div>
                <div class="text1">Звонок по России бесплатный</div>

                <div class="social_icons icon-circle">
                    <a target="_blank" style="background:#fff;color:#000;" class="sn sn-whatsup  link_whatsup" href=""></a>
                    <a target="_blank" style="background:#fff;color:#000;" class="sn sn-tg  link_tg" href=""></a>
                </div>
            </div>
            <div class="policy2_popup">
                <div class="policy2_title">Политика конфиденциальности</div>
                <div class="policy2_body">
                    <p>Данный сайт уважает Ваше право и соблюдает конфиденциальность при заполнении, передаче и хранении Ваших конфиденциальных сведений.<br>
                        Размещение заявки на данном сайте означает Ваше согласие на обработку данных и дальнейшей передачи ваших контактных данных нашей компании.<br>
                        Под персональными данными подразумевается информация, относящаяся к субъекту персональных данных, в частности имя, контактные реквизиты (адрес электронной почты) и иные данные, относимые Федеральным законом от 27 июля 2006 года № 152-ФЗ «О персональных данных» к категории персональных данных.<br>
                        Целью обработки персональных данных является информирование об оказываемых услугах нашей компании.</p>
                </div>
            </div>
        </div>
    </div>

</div>





<script>

    (function(){

        var resources_css = [
            'https://fonts.googleapis.com/icon?family=Material+Icons&display=swap',
            '/fonts/font-awesome-4.7.0/css/fa.min.css'
        ];

        var resource = [];
        _.each(resources_css, function(element, index) {
            resource[index] = document.createElement('link');
            resource[index].setAttribute("rel", "stylesheet");
            resource[index].setAttribute("href", element);
            resource[index].setAttribute("type", "text/css");

            var head = document.getElementsByTagName('head')[0];
            head.appendChild(resource[index]);
        });

    })();

</script>















<script src="/assets/js/swipe.min.js" defer=""></script>


<script type="text/javascript" src="/assets/js/mask.min.js"></script>
<script type="text/javascript" src="/assets/js/lazyload.min.js"></script>
<script type="text/javascript" src="/assets/js/anime.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.section105 .menu_mobile_btn').on('click', function(e) {
            e.stopPropagation();
            var $menu = $('.section105 .menu1');
            var $btn = $(this);
            
            if ($menu.hasClass('active')) {
                $menu.removeClass('active');
                $btn.removeClass('active');
            } else {
                $menu.addClass('active');
                $btn.addClass('active');
            }
        });
        
        $(document).on('click', function(e) {
            var $menu = $('.section105 .menu1');
            var $btn = $('.section105 .menu_mobile_btn');
            if (!$(e.target).closest('.section105 .menu1').length && 
                !$(e.target).closest('.section105 .menu_mobile_btn').length) {
                $menu.removeClass('active');
                $btn.removeClass('active');
            }
        });
        
        $('.section105 .menu1 a').on('click', function() {
            var $menu = $('.section105 .menu1');
            var $btn = $('.section105 .menu_mobile_btn');
            $menu.removeClass('active');
            $btn.removeClass('active');
        });
     });
</script>









</body></html>