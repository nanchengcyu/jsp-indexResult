<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <script>
        // 定义各个学院的系别和专业
        const departmentData = {
            '工学院': ['机械工程系', '电子工程系', '计算机工程系'],
            '文学院': ['中文系', '英语系', '翻译系']
        };
        const majorData = {
            '机械工程系': ['机械设计制造', '工业设计'],
            '电子工程系': ['电子信息工程', '通信工程'],
            '计算机工程系': ['计算机科学与技术', '软件工程'],
            '中文系': ['语言学', '文学'],
            '英语系': ['英语', '国际商务英语'],
            '翻译系': ['翻译', '口译']
        };

        // 根据学院更新系别列表
        function updateDepartments() {
            const collegeSelect = document.getElementById('college');
            const departmentSelect = document.getElementById('department');
            const majorSelect = document.getElementById('major');

            // 清空系别和专业列表
            departmentSelect.innerHTML = '<option value="">请选择</option>';
            majorSelect.innerHTML = '<option value="">请选择</option>';

            const college = collegeSelect.value;
            if (college in departmentData) {
                // 更新系别列表
                for (const department of departmentData[college]) {
                    const option = document.createElement('option');
                    option.value = department;
                    option.text = department;
                    departmentSelect.add(option);
                }
            }
        }

        // 根据系别更新专业列表
        function updateMajors() {
            const departmentSelect = document.getElementById('department');
            const majorSelect = document.getElementById('major');

            // 清空专业列表
            majorSelect.innerHTML = '<option value="">请选择</option>';

            const department = departmentSelect.value;
            if (department in majorData) {
                // 更新专业列表
                for (const major of majorData[department]) {
                    const option = document.createElement('option');
                    option.value = major;
                    option.text = major;
                    majorSelect.add(option);
                }
            }
        }
        //时间
        var t = null;
        t = setTimeout(time, 1000); //開始运行
        function time() {
            clearTimeout(t); //清除定时器
            dt = new Date();
            var y = dt.getFullYear();
            var mt = dt.getMonth() + 1;
            var day = dt.getDate();
            var h = dt.getHours(); //获取时
            var m = dt.getMinutes(); //获取分
            var s = dt.getSeconds(); //获取秒
            document.querySelector(".showTime").innerHTML =
                "当前时间：" +
                y +
                "年" +
                mt +
                "月" +
                day +
                "-" +
                h +
                "时" +
                m +
                "分" +
                s +
                "秒";
            t = setTimeout(time, 1000); //设定定时器，循环运行
        }
    </script>
</head>
<body>
<div class="showTime" style="color: teal"></div>

<form action="result.jsp" method="post">
    <label for="username">用户名:</label>
    <input type="text" id="username" name="username"><br>
    <label for="password">密码:</label>
    <input type="password" id="password" name="password"><br>
    <label for="confirm_password">确认密码:</label>
    <input type="password" id="confirm_password" name="confirm_password"><br>
    <label>性别：</label>
    <input name="sex" type="radio" value="男"/>男
    <input name="sex" type="radio" value="女"/>女<br/>
    <label >爱好:</label>
    <input name="like" type="checkbox" value="唱歌跳舞"/>唱歌跳舞
    <input name="like" type="checkbox" value="上网冲浪"/>上网冲浪
    <input name="like" type="checkbox" value="户外登山"/>户外登山
    <input name="like" type="checkbox" value="体育运动"/>体育运动
    <input name="like" type="checkbox" value="读书看报"/>读书看报
    <input name="like" type="checkbox" value="欣赏电影"/>欣赏电影
    <br/>
    <label for="email">邮箱:</label>
    <input type="email" id="email" name="email"><br>
    <label>学院：</label>
    <select id="college" name="college" onchange="updateDepartments()">
        <option value="">请选择</option>
        <option value="工学院">工学院</option>
        <option value="文学院">文学院</option>
    </select>
    <br/>
    <label>系别：</label>
    <select id="department" name="department" onchange="updateMajors()">
        <option value="">请选择</option>
    </select>
    <br/>
    <label>专业：</label>
    <select id="major" name="major">
        <option value="">请选择</option>
    </select>
    <br>
    <label for="introduction">个人简介:</label>
    <textarea id="introduction" name="introduction"></textarea><br>
    <input type=submit name=submit value=提交 />

</form>

<script src="bg.js"></script>
</body>

</html>
