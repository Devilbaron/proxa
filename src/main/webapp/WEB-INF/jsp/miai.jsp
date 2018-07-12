<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/6/20
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>html5用户注册页面模板</title>


    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <![endif]-->

    <link href="css/normalize.css" rel="stylesheet"/>
    <link href="css/jquery-ui.css" rel="stylesheet"/>
    <link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

    <style type="text/css">
        body{
            font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;
            color: #222;background:url(images/pattern.png);
            overflow-y:scroll;
            padding:60px 0 0 0;
        }
        #my-form{
            width:755px;
            margin:0 auto;
            border:1px solid #ccc;
            padding:3em;border-radius:3px;
            box-shadow:0 0 2px rgba(0,0,0,.2);
        }
        #comments{
            width:350px;
            height:100px;
        }
        * { -ms-word-wrap: break-word; word-wrap: break-word; }
        html { -webkit-text-size-adjust: none; text-size-adjust: none; }
        html, body {height:100%;width:100%; }
        .wrap{width:464px;height:34px;margin:200px auto;border:0;position:relative;}
        .input{position:absolute;top:0;left:0;width:457px;margin:0;padding-left:5px;height:30px;line-height:30px;font-size:12px;border:1px solid #c9cacb;}
        s{position:absolute;top:1px;right:0;width:32px;height:32px;background:url("/images/arrow.png") no-repeat;}
        ._citys { width: 450px; display: inline-block; border: 2px solid #eee; padding: 5px; position: relative; }
        ._citys span { color: #05920a; height: 15px; width: 15px; line-height: 15px; text-align: center; border-radius: 3px; position: absolute; right: 10px; top: 10px; border: 1px solid #05920a; cursor: pointer; }
        ._citys0 { width: 95%; height: 34px; line-height: 34px; display: inline-block; border-bottom: 2px solid #05920a; padding: 0px 5px; font-size:14px; font-weight:bold; margin-left:6px; }
        ._citys0 li { display: inline-block; line-height: 34px; font-size: 15px; color: #888; width: 80px; text-align: center; cursor: pointer; }
        ._citys1 { width: 100%; display: inline-block; padding: 10px 0; }
        ._citys1 a { width: 83px; height: 35px; display: inline-block; background-color: #f5f5f5; color: #666; margin-left: 6px; margin-top: 3px; line-height: 35px; text-align: center; cursor: pointer; font-size: 12px; border-radius: 5px; overflow: hidden; }
        ._citys1 a:hover { color: #fff; background-color: #05920a; }
        .AreaS { background-color: #05920a !important; color: #fff !important; }
    </style>

</head>
<body>
<div class="row">

    <div class="eightcol last">

        <!-- Begin Form -->
        <form id="my-form" method="get" action="/proxa/addmiai">

            <section name="正确填写资料">

                <div><label>姓名:</label><input id="username" name="name" type="text" placeholder ="请填写您的姓名"/></div>
                <div><label>性别:</label><input id="sex" name="sex" type="text" placeholder ="男/女"/></div>
                <div><label>年龄:</label><input id="age" name="age"type="text" placeholder ="今年多少岁"/></div>
                <div><label>身高:</label><input name="height" type="text" placeholder="cm"/></div>
                <div><label>上传头像:</label><input id="via" name="via" onchange="bindAvatar1()" type="file"/></div>
                <div><label>微信号:</label><input name="wechat" type="text"/></div>
                <div><label>电话:</label><input type="tel" name="iphone"/></div>
                <div><label>地区:</label><input class="input" name="city" id="city" type="text" placeholder="请选择" autocomplete="off" readonly="true"/></div>
                <div><label>备注:</label><textarea  name="remarks"></textarea ></div>
            </section>

            <div><hr/></div>

            <div>
                <button type="submit">提交</button>
                <button id="reset" type="button">重置</button>
            </div>

        </form>

        <!-- End Form -->

    </div>

</div>


<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.idealforms.js"></script>

<%--<script type="text/javascript" src="/js/distpicker/jquery.min.js"></script>--%>
<script type="text/javascript" src="js/distpicker/Popt.js"></script>
<script type="text/javascript" src="js/distpicker/city.json.js"></script>
<script type="text/javascript" src="js/distpicker/citySet.js"></script>


<script type="text/javascript">
    var options = {

        onFail: function(){
            alert( $myform.getInvalid().length +' invalid fields.' )
        },

        inputs: {
//            'username': {
//                filters: 'required username',
//                data: {
//                    //ajax: { url:'validate.php' }
//                }
//            },
            'via': {
                filters: 'extension',
                data: {
                    extension: ['jpg'||'bmp' || 'gif' || 'png']
                }
            },
            'comments': {
                filters: 'min max',
                data: { min: 50, max: 200 }
            },
            'states': {
                filters: 'exclude',
                data: { exclude: ['default'] },
                errors : {
                    exclude: '选择国籍.'
                }
            },
            'langs[]': {
                filters: 'min max',
                data: { min: 2, max: 3 },
                errors: {
                    min: 'Check at least <strong>2</strong> options.',
                    max: 'No more than <strong>3</strong> options allowed.'
                }
            }
        }

    };

    var $myform = $('#my-form').idealforms(options).data('idealforms');

    $('#reset').click(function(){
        $myform.reset().fresh().focusFirst()
    });

    $myform.focusFirst();


</script>
<script type="text/javascript">
    $("#city").click(function (e) {
        SelCity(this,e);
    });
    $("s").click(function (e) {
        SelCity(document.getElementById("city"),e);
    });
</script>

<script type="text/javascript">
    /*Ajax上传至后台并返回图片的url*/
    function bindAvatar1() {
        $("#via").change(function () {
            var user = $("input[name='user']").val();
            var csrf = $("input[name='csrfmiddlewaretoken']").val();
            var formData=new FormData();
            formData.append("user",user);
            formData.append("csrfmiddlewaretoken",csrf);
            formData.append('avatar', $("#avatarSlect")[0].files[0]);  /*获取上传的图片对象*/
            $.ajax({
                url: '/proxa/upload2',
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function (args) {
                    console.log(args);  /*服务器端的图片地址*/
                    $("#avatarPreview").attr('src','/'+args);  /*预览图片*/
                    $("#avatar").val('/'+args);  /*将服务端的图片url赋值给form表单的隐藏input标签*/
                }
            })
        })
    }
</script>
<div style="text-align:center;">
    <p>来源：<a href="http://www.mycodes.net/" title="源码之家" target="_blank">源码之家</a></p>
</div>
</body>
</html>