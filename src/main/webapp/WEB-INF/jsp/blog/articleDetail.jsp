<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="col s12">
        <nav class="indigo lighten-1">
            <div class="nav-wrapper">
                <div class="col s12">
                    <a href="${pageContext.request.contextPath}/blog" class="breadcrumb">首页</a>
                    <a href="${pageContext.request.contextPath}/blog/category/${article.category.categoryId}"
                       class="breadcrumb">${article.category.categoryName}</a>
                    <a class="breadcrumb">${article.title}</a>
                </div>
            </div>
        </nav>
        <br>
        <div class="card hoverable">
            <div class="card-content">
                <span class="card-title">${article.title}</span>
                『${article.pubDate }』
                <span>|</span>
                <a href=${pageContext.request.contextPath}/blog/category/${article.category.categoryId}>${article.category.categoryName}</a>
                <span>|</span>
                ${article.clicks + 1}&nbspViews
                <span>|</span>
                author：<a onclick="return false;" style="cursor: pointer;">${article.user.username}</a>
                <p>${article.content}</p>
            </div>
            <div class="card-action">
                上一篇：<a href="${pageContext.request.contextPath}/blog/article/${preArticle.articleId}"
                       <c:if test='${preArticle.articleId==-1}'>onclick="return false;"</c:if> >${preArticle.title}</a>
                <br>
                下一篇：<a href="${pageContext.request.contextPath}/blog/article/${nextArticle.articleId}"
                       <c:if test='${nextArticle.articleId==-1}'>onclick="return false;"</c:if> >${nextArticle.title}</a>
                <br>
                转载注明：<a href="${pageContext.request.contextPath}/blog/about">${article.user.username}</a>&gt;&gt;<a
                    href="${pageContext.request.contextPath}/blog/article/${article.articleId}">${article.title}</a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="messageDetail.jsp"></jsp:include>
