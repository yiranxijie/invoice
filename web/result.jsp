<%@page pageEncoding="UTF-8"%>
<!--content begin-->
<div id="content" class="clearfix">
    <a href="#" id="dialogclose">&times;</a>

    <div id="cms_r">
        <div class="title">发票查验明细</div>
        <div class="cms_r_main">
            <div class="chayan_div">
                <div id="print_area" class="printdiv">
                    <table border="1" class="comm_table2" width="100%">
                        <tr>
                            <td colspan="4" style="background-color:#2498ef;color:#fff; ">
                                <span id="cysj">查验时间：2015-07-08 09:37:22</span>
                                <span style="float:right">
			    <button id="closebt" class="white_button" style="position:relative!important;z-index:100;color:buttontext;"
                    onmousemove="this.className='green_button';" onmouseout="this.className='white_button';"
                    onclick="cancel_shield()">关闭</button></span>
                            </td>
                        </tr>
                    </table>
                    <!--原始信息 <a href="#" id="dialog-close" style="position: absolute; top: 0; right: 4px; font-size: 20px; color: #000; text-decoration: none; outline: none;">&times;</a>-->


                    <div id="tabPage2">
                        <div id="tabPage-zzszyfp">
                            <h1 id="fpcc_zp" style="color:#574B9D;padding:5px 0px 5px 0px; text-align:center;">
                                <strong>四川增值税专用发票</strong></h1>
                            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                                <tr height="30">
                                    <td class="align_left">发票代码：<span class="content_td_blue"
                                                                      id="fpdm_zp"></span></td>
                                    <td>&nbsp;</td>
                                    <td class="align_left">发票号码：<span class="content_td_blue"
                                                                      id="fphm_zp"></span></td>
                                    <td>&nbsp;</td>
                                    <td class="align_left">开票日期：<span class="content_td_blue"
                                                                      id="kprq_zp"></span></td>
                                    <td>&nbsp;</td>
                                    <td class="align_left">校验码：<span class="content_td_blue" id="jym_zp"></span>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="align_left" id="jqxx_zp" style="display:none">机器编号：<span
                                            class="content_td_blue" id="jqbh_zp"></span></td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <table style="width:100%" border="0" cellspacing="0" cellpadding="0"
                                   class="fppy_table">
                                <tr>
                                    <td rowspan="6" class="align_center" width="20"><p>购</p>
                                        <p>买</p>
                                        <p>方</p></td>
                                    <td class="align_left borderNo" width="105">名称：</td>
                                    <td nowrap class="align_left borderNo bgcolorWhite" width="36%"><span
                                            class="content_td_blue" id="gfmc_zp"></span></td>
                                    <td rowspan="6" class="align_center" width="20"><p>销</p>
                                        <p>售</p>
                                        <p>方</p></td>
                                    <td class="align_left borderNo" width="105">名称：</td>
                                    <td class="align_left borderNo"><span class="content_td_blue"
                                                                          id="xfmc_zp"></span></td>
                                </tr>
                                <tr>
                                    <td class="align_left borderNo">纳税人识别号：</td>
                                    <td nowrap class="align_left borderNo"><span class="content_td_blue"
                                                                                 id="gfsbh_zp"></span></td>
                                    <td class="align_left borderNo">纳税人识别号：</td>
                                    <td class="align_left borderNo"><span class="content_td_blue"
                                                                          id="xfsbh_zp"></span></td>
                                </tr>
                                <tr>
                                    <td class="align_left borderNo" valign="top">地址：</td>
                                    <td class="align_left borderNo" valign="top"><span class="content_td_blue"
                                                                                       id="gfdz_zp"> </span>
                                    </td>
                                    <td class="align_left borderNo">地址：</td>
                                    <td class="align_left borderNo"><span class="content_td_blue"
                                                                          id="xfdz_zp"></span></td>
                                </tr>
                                <tr>
                                    <td class="align_left borderNo" valign="top">电话：</td>
                                    <td class="align_left borderNo" valign="top"><span class="content_td_blue"
                                                                                       id="gfdh_zp"> </span>
                                    </td>
                                    <td class="align_left borderNo">电话：</td>
                                    <td class="align_left borderNo"><span class="content_td_blue"
                                                                          id="xfdh_zp"></span></td>
                                </tr>
                                <tr>
                                    <td class="align_left borderNo" valign="top">开户行：</td>
                                    <td class="align_left borderNo" valign="top"><span class="content_td_blue"
                                                                                       id="gfyh_zp"></span>
                                    </td>
                                    <td class="align_left borderNo">开户行：</td>
                                    <td class="align_left borderNo"><span class="content_td_blue"
                                                                          id="xfyh_zp"></span></td>
                                </tr>
                                <tr>
                                    <td class="align_left borderNo" valign="top">账号：</td>
                                    <td class="align_left borderNo" valign="top"><span class="content_td_blue"
                                                                                       id="gfzh_zp"></span>
                                    </td>
                                    <td class="align_left borderNo" valign="top">账号：</td>
                                    <td class="align_left borderNo" valign="top"><span class="content_td_blue"
                                                                                       id="xfzh_zp"></span>
                                    </td>
                                </tr>

                                <!--表头-->
                                <tr>
                                    <td colspan="6">
                                        <table cellspacing="0" cellpadding="0" style="width:100%;"
                                               class="fppy_table_box">
                                            <tr id="tab_head_zp">
                                                <td class="align_center borderRight" width="30%">货物或应税劳务名称</td>
                                                <td class="align_center borderRight" width="10%">规格型号</td>
                                                <td class="align_center borderRight" width="5%">单位</td>
                                                <td class="align_center borderRight" width="10%">数量</td>
                                                <td class="align_center borderRight" width="10%">单价</td>
                                                <td class="align_center borderRight" width="15%">金额</td>
                                                <td class="align_center borderRight" width="5%">税率</td>
                                                <td class="align_center" width="15%">税额</td>
                                            </tr>
                                            <%--<tr>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="goodsname">Midea/美的 KFR-35GW/DY-DA400(D3) 1.5匹定速空调冷暖省电星</span>--%>
                                                <%--</td>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="specification">16H0073</span>--%>
                                                <%--</td>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="unit">次</span>--%>
                                                <%--</td>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="Amount">1</span>--%>
                                                <%--</td>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="unit_price">2050.42735043</span>--%>
                                                <%--</td>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="pretax_price">2050.43</span>--%>
                                                <%--</td>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="tax">0.17</span>--%>
                                                <%--</td>--%>
                                                <%--<td class="align_center borderRight borderTop">--%>
                                                    <%--<span class="content_td_blue" id="tax_price">-0.04</span>--%>
                                                <%--</td>--%>
                                            <%--</tr>--%>
                                            <%--<tr>--%>
                                                <%--<td class="align_center borderRight borderTop">合计</td>--%>
                                                <%--<td colspan="7" class="align_left borderTop"><span--%>
                                                        <%--class="content_td_blue" id="jshjdx_zp"></span></td>--%>
                                            <%--</tr>--%>
                                        </table>
                                    </td>
                                </tr>
                                <!--表头结束-->
                            </table>

                        </div>
                    </div>
                    <!--原始信息  end-->
                    <div id="icon_zf" style="position:absolute;top:0px;left:0px;display:none;"></div>
                </div>

                <div style="padding:30px 35px 0px 0px; color:#da534f; font-size:14px; line-height:25px;">
                    <strong>特别提示：</strong>
                    <br/>&raquo;&nbsp;&nbsp;本平台仅提供所查询发票票面信息的查验结果。
                    <br/>&raquo;&nbsp;&nbsp;若发现发票查验结果与实际交易不符，任何单位或个人有权拒收并向当地税务机关举报。
                </div>

            </div>

            <!-- <div class="comm_btn_div clearfix"> <button class="blue_button" onmousemove="this.className='green_button';" onmouseout="this.className='blue_button';" onclick="close_window()">返回</button></div> -->

        </div>
    </div>

</div>
<!--content end-->
