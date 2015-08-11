<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>案件外部函</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet"
			type="text/css" />
		<script src="${ctx}/public/FlexPaper/js/jquery.js"
			type="text/javascript"></script>
		<script src="${ctx}/public/FlexPaper/js/flexpaper_flash_debug.js"
			type="text/javascript"></script>
		<script src="${ctx}/public/FlexPaper/js/flexpaper_flash.js"
			type="text/javascript"></script>
	</head>
	<body>
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">&nbsp;</span>
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
						阅读插件下载&nbsp;&nbsp;
						<a class="list_data" target="_blank" href="${ctx}/public/Images/install_flash_player_11_for_ie.exe">IE版</a>
						<a class="list_data" target="_blank" href="${ctx}/public/Images/install_flash_player_10_for_other.exe">非IE版</a>
					</td>
				</tr>
			</table>
			<div class="line_10" style="text-align: center;">
				<center>
					<a id="viewerPlaceHolder"
						style="width: 700px; height: 700px; display: block;"></a>
					<!--设置一个隐蔽控件来得到要显示的文件的名字-->
					<input type="hidden" id="file" value='${ctx}/fileDown/swfDown.do?id=${id}&stamp=${stamp}&sign_msg=${sign_msg}' />
					<script type="text/javascript">
                            var fileURLFlash = $("#file").val();
                            var fp = new FlexPaperViewer(
                                '${ctx}/public/FlexPaper/FlexPaperViewer',
                                'viewerPlaceHolder',
                                { config: {
                                    SwfFile: escape(fileURLFlash),
                                    Scale: 0.8,
                                    ZoomTransition: 'easeOut',
                                    ZoomTime: 0.5,
                                    ZoomInterval: 0.2,
                                    FitPageOnLoad: true,
                                    FitWidthOnLoad: true,
                                    PrintEnabled: true,
                                    FullScreenAsMaxWindow: false,
                                    ProgressiveLoading: false,
                                    MinZoomSize: 0.2,
                                    MaxZoomSize: 5,
                                    SearchMatchAll: false,
                                    InitViewMode: 'Portrait',
                                    ViewModeToolsVisible: true,
                                    ZoomToolsVisible: true,
                                    NavToolsVisible: true,
                                    CursorToolsVisible: true,
                                    SearchToolsVisible: false,
                                    localeChain: 'en_US'
                                }
                                }
                                );
                        </script>
				</center>
			</div>
		</div>
	</body>
</html>