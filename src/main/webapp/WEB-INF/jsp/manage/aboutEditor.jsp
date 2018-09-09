<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    function check() {
        var content = CKEDITOR.instances.content.getData();
        if (content == null || content == "") {
            $("#info").text("内容不能为空！");
            showErrorInfo();
            return false;
        }
        return true;
    }
</script>
<div class="row">
    <div class="col s12">
        <div class="card-panel">
            <form action="${pageContext.request.contextPath}/manage/about/save" method="post" onsubmit="return check()">
                <textarea class="ckeditor" id="content" name="content">${about.content}</textarea>
                <br>
                <button class="btn waves-effect waves-light green" type="submit" name="action">保存</button>
            </form>
        </div>
    </div>
</div>