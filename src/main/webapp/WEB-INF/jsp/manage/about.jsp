<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col s12">
        <div class="card-panel">
            <p>${about.content }</p>
            <div class="center">
                <a href="${pageContext.request.contextPath}/manage/about/modify" class="waves-effect waves-light btn green hoverable">修改</a>
            </div>
        </div>
    </div>
</div>