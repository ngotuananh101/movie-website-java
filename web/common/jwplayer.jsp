<%-- 
    Document   : jwplayer
    Created on : Jul 14, 2021, 12:49:41 AM
    Author     : ngotu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--Get parameter-->
<%
    String link = null;
    try {
        if (request.getParameter("link") != null) {
            link = request.getParameter("link");
        } else {
            link = "../common/video/default.mp4";
        }
    } catch (Exception e) {
        link = "../common/video/default.mp4";
    }
    pageContext.setAttribute("videolink", link);
%>
<!--Load jwplayer js file-->
<script src="https://cdn.jwplayer.com/libraries/ELCQaZr3.js" ></script>
<!--Set jwplayer api key (license key)-->
<script>jwplayer.key = "koTyB3KqGz4w0Q/z/csQdkf9G21G7tQ07YG/fk9sy6g=";</script>

<!--Hiển thi player qua thẻ div-->
<div id="myJwPlayer" class="align-self-center"></div>

<!--Setup player detail-->
<script type="text/JavaScript">
    jwplayer("myJwPlayer").setup({ 
    "playlist": [{
        "file":"${videolink}"
    }],
    "volume" : 70,
    "autostart" : false,
    
    });
</script>
