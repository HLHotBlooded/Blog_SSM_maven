<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col s12">
        <nav class="indigo lighten-1">
            <div class="nav-wrapper">
                <div class="col s12">
                    <a href="${pageContext.request.contextPath}/blog" class="breadcrumb">首页</a>
                    <a class="breadcrumb">留言</a>
                </div>
            </div>
        </nav>
        <br>
        <div class="card-panel hoverable">
            <span>${about.content}</span>
        </div>
    </div>
</div>