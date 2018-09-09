<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    function check() {
        var categoryName = document.getElementById("categoryName").value;
        if (categoryName == null || categoryName == "") {
            $("#info").text("类别名称不能为空！");
            showErrorInfo();
            return false;
        }
        return true;
    }
</script>
<div class="row">
    <div class="col s12">
        <div class="card-panel">
            <form action="${pageContext.request.contextPath}/manage/category/save/${category.categoryId}" method="post"
                  onsubmit="return check()">
                <div class="input-field col s6">
                    <input id="categoryName" name="categoryName" type="text" class="validate"
                           value="${category.categoryName}">
                    <label for="categoryName">类别名</label>
                </div>
                <br>
                <button class="btn waves-effect waves-light green" type="submit">保存</button>
            </form>
        </div>
    </div>
</div>