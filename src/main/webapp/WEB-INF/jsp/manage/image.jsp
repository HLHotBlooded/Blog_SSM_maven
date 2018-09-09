<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('.carousel').carousel();
    });
</script>

<div class="row">
    <div class="col s12">
        <div class="card-panel">
            <div class="carousel">
                <c:forEach var="userImage" items="${userImages}">
                    <div class="carousel-item black-text center">
                        <img src="${pageContext.request.contextPath}/images/user/${userImage}">
                        <h6>${userImage}</h6>
                    </div>
                </c:forEach>
            </div>
            <div class="carousel">
                <c:forEach var="articleImage" items="${articleImages}">
                    <div class="carousel-item black-text center">
                        <img src="${pageContext.request.contextPath}/images/article/${articleImage}">
                        <h6>${articleImage}</h6>
                    </div>
                </c:forEach>
            </div>
            <form name="uploadForm" method="POST" enctype="multipart/form-data" action="${pageContext.request.contextPath}/manage/image">
                用户图片:<input type="file" name="userImage" size="30"/>
                文章图片:<input type="file" name="articleImage" size="30"/>
                <input class="btn btn-primary" type="submit" name="submit" value="上传">
            </form>
        </div>
    </div>
</div>