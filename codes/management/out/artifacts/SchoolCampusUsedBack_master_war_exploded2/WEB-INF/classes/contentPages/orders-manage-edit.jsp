<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="content-wrapper">

    <!-- 内容头部 -->
    <section class="content-header">
        <h1>
            全局管理
            <small>表单</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="admin.jsp?index=0"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="#">全局管理</a></li>
            <li class="active">表单</li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!--用户信息-->
        <div class="panel panel-default">
            <div class="panel-heading">订单信息</div>
            <div class="row data-type">

                <div class="col-md-2 title">用户ID</div>
                <div class="col-md-4 data">
                    <input type="text" class="form-control" placeholder="wait..." value="" disabled  id="userIdDiv" name="userId">
                </div>

                <div class="col-md-2 title">商品ID</div>
                <div class="col-md-4 data">
                    <input type="text" class="form-control" placeholder="wait..." value="" disabled id="goodsIdDiv" name="goodsId">
                </div>

<%--                <div class="col-md-2 title">下单时间</div>--%>
<%--                <div class="col-md-4 data">--%>
<%--                    <div class="input-group date">--%>
<%--                        <div class="input-group-addon">--%>
<%--                            <i class="fa fa-calendar"></i>--%>
<%--                        </div>--%>
<%--                        <input type="text" class="form-control pull-right" id="datepicker-a3">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <script>--%>
<%--                    $(document).ready(function() {--%>
<%--                        $('#datepicker-a3').datepicker({--%>
<%--                            autoclose: true,--%>
<%--                            language: 'zh-CN'--%>
<%--                        });--%>
<%--                    });--%>
<%--                </script>--%>

                <div class="col-md-2 title">支付ID</div>
                <div class="col-md-4 data">
                    <input type="text" class="form-control" placeholder="wait..." value="" id="payIdDiv" name="payId" disabled>
                </div>

                <div class="col-md-2 title">订单ID</div>
                <div class="col-md-4 data">
                    <input type="text" class="form-control" placeholder="wait..." value="" id="ordersIdDiv" name="ordersId" disabled>
                </div>

<%--                <div class="col-md-2 title">出发城市</div>--%>
<%--                <div class="col-md-4 data">--%>
<%--                    <select class="form-control select2" style="width: 100%;">--%>
<%--                        <option value="" selected="selected">Alabama</option>--%>
<%--                        <option value="">Alaska</option>--%>
<%--                        <option value="">California</option>--%>
<%--                        <option value="">Delaware</option>--%>
<%--                        <option value="">Tennessee</option>--%>
<%--                        <option value="">Texas</option>--%>
<%--                        <option value="">Washington</option>--%>
<%--                    </select>--%>
<%--                </div>--%>

                <div class="col-md-2 title">商品价格</div>
                <div class="col-md-4 data">
                    <input type="text" class="form-control" placeholder="wait..." value="" id="priceDiv" name="price" disabled>
                </div>

                <div class="col-md-6 data">
                    <!--留空-->
                </div>

                <div class="col-md-2 title">处理状态</div>
                <div class="col-md-4 data">
                    <select class="form-control select2" style="width: 100%;" id="adminStatusSelect" name="adminStatus">
                        <option value="1">已处理</option>
                        <option value="0">未处理</option>
                    </select>
                </div>

                <div class="col-md-2 title">订单状态</div>
                <div class="col-md-4 data">
                    <select class="form-control select2" style="width: 100%;" id="ordersStatusSelect" name="ordersStatus">
                        <option value="1">已完成</option>
                        <option value="0">未完成</option>
                        <option value="-1">有异议</option>
                    </select>
                </div>


<%--                <div class="col-md-2 title rowHeight2x">其他信息</div>--%>
<%--                <div class="col-md-10 data rowHeight2x">--%>
<%--                    <textarea class="form-control" rows="3" placeholder="其他信息"></textarea>--%>
<%--                </div>--%>

            </div>

            <!--工具栏-->
            <div class="box-tools text-center" style="margin-top: 20px;padding-bottom: 10px;">
                <button type="button" class="btn bg-maroon" style="margin-right: 10px;" onclick="update()" data-toggle="popover" data-placement="bottom" id="my-submit-button-1" data-trigger="focus">保存</button>
                <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
            </div>
            <!--工具栏/-->

        </div>
        <!--用户信息/-->

    </section>
    <!-- 正文区域 /-->

</div>

<script>
    $(document).ready(function() {
        // 激活导航位置
        //setSidebarActive("order-manage");

        //加载数据
        initNums();
    });

    //加载数据
    function initNums() {
        //取得goodsId
        let id = (window.location.href).split("=");
        $.get("/ordersManageServlet",{"id":id[id.length-1]},function (data) {
            $(data).each(function () {
                $("#userIdDiv").val(this.userId);
                $("#goodsIdDiv").val(this.goodsId);
                $("#payIdDiv").val(this.payId);
                $("#ordersIdDiv").val(this.ordersId);
                $("#priceDiv").val(this.price);
                if(this.ordersStatus == 1){
                    $("#ordersStatusSelect>option:first-child").attr("selected","selected");
                    $("#select2-ordersStatusSelect-container").html("已完成");
                }else if(this.ordersStatus == 0){
                    $("#ordersStatusSelect>option:nth-child(2)").attr("selected","selected");
                    $("#select2-ordersStatusSelect-container").html("未完成");
                }else{
                    $("#ordersStatusSelect>option:last-child").attr("selected","selected");
                    $("#select2-ordersStatusSelect-container").html("有异议");
                }
                if(this.adminStatus == 1){
                    $("#adminStatusSelect>option:first-child").attr("selected","selected");
                    $("#select2-adminStatusSelect-container").html("已处理");
                }else{
                    $("#adminStatusSelect>option:last-child").attr("selected","selected");
                    $("#select2-adminStatusSelect-container").html("未处理");
                }
            });
        },"json");
    }

    // function check() {
    //     let name = $("#nameDiv").val();
    //     let dscrip = $("#dscripDiv").val();
    //     let price = $("#priceDiv").val();
    //     let goodsLevel = $("#goodsLevelDiv").val();
    //     let hot = $("#hotDiv").val();
    //     if(name == "" || dscrip == "" || price == "" || goodsLevel == "" || hot == ""){
    //         $("#my-submit-button-1").attr("data-content","当前表单不能有空项！");
    //         $('#my-submit-button-1').popover('toggle');
    //         return false;
    //     }
    //     return true;
    // }

    function update() {
        // if(check()){
        let userId = $("#userIdDiv").val();
        let goodsId = $("#goodsIdDiv").val();
        let payId = $("#payIdDiv").val();
        let ordersId = $("#ordersIdDiv").val();
        let price = $("#priceDiv").val();
        let adminStatus = $("#adminStatusSelect").val();
        let ordersStatus = $("#ordersStatusSelect").val();
        let jsonMsg = new Object();
        jsonMsg.userId = userId;
        jsonMsg.goodsId = goodsId;
        jsonMsg.payId = payId;
        jsonMsg.ordersId = ordersId;
        jsonMsg.price = parseFloat(price);
        jsonMsg.adminStatus = parseInt(adminStatus);
        jsonMsg.ordersStatus = parseInt(ordersStatus);
        let json = JSON.stringify(jsonMsg);
        $.post("../ordersManageServlet",json,function () {
            //重新加载数据
            initNums();
        },"json");
        $("#my-submit-button-1").attr("data-content","请刷新界面查看结果，如果结果未修改，请查看格式是否正确");
        $('#my-submit-button-1').popover('toggle');
        //}
    }
</script>
