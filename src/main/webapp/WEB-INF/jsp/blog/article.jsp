<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="article" items="${articles}">
    <div class="row">
        <div class="col s12">
            <div class="card small hoverable">
                <div class="card-image">
                    <img src="images/article/${article.image}">
                    <span class="card-title">${article.title}</span>
                </div>
                <div class="card-content">
                    『${article.pubDate }』
                    <span>|</span>
                    <a href="${pageContext.request.contextPath}/blog/category/${article.category.categoryId}">${article.category.categoryName}</a>
                    <span>|</span>
                        ${article.clicks}&nbspViews
                    <span>|</span>
                    author：<a onclick="return false;" style="cursor: pointer;">${article.user.username}</a>
                </div>
                <div class="card-action">
                    <a href="${pageContext.request.contextPath}/blog/article/${article.articleId}">详情</a>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
<div>${pageCode}</div>
