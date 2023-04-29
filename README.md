# jsp-indexResult
每次上传项目到GitHub总会遇到不一样的问题，还好这次解决的很快，没有昨天那么慢<br>
记录下这次遇到的解决方法 <br>
问题报错图片：<br>
![图片](https://user-images.githubusercontent.com/104661473/235286989-4b7d40b0-a430-4371-9790-a95612af7781.png)<br><br>
解决方法（来自csdn）:<br>
https://blog.csdn.net/haltwang/article/details/127330284<br>
![图片](https://user-images.githubusercontent.com/104661473/235287427-368daf5f-d386-4f56-a71f-79028b59c285.png)<br>
总结简易解决方法：<br>
加一条命令即可：<br>
git config --global --add safe.directory “+目录”<br><br>
![图片](https://user-images.githubusercontent.com/104661473/235287121-de4719d0-eb5b-42dc-bd67-43bf6939a30a.png)<br>
![图片](https://user-images.githubusercontent.com/104661473/235287147-25af066c-011d-41f4-afcc-a279f4d996ab.png)<br>

项目：为课程期中考试，记录下，代码从一个页面跳转到另一个界面乱码解决方法。<br>
问了chatGpt如何解决，搞了两三天，不断的换提问方式喂它，都没解决<br>
最后被老师上课讲的方法解决了，老师真的是神，这是chatgpt帮助不了的。<br>


问题截图：<br>

![图片](https://user-images.githubusercontent.com/104661473/235287252-9d8aef2e-914d-4828-954a-e5f4bfb30dd6.png)<br>
![图片](https://user-images.githubusercontent.com/104661473/235287303-c3e98fc0-3dd6-4670-9302-de8709a4e687.png)<br>

解决方法：<br>
代码其中之一：<br>
转码ISO8859_1再到utf-8<br>
<p>您的系别：<%=new String(request.getParameter("department").getBytes("ISO8859_1"),"UTF-8") %></p><br>
![图片](https://user-images.githubusercontent.com/104661473/235287373-4f2fc8e6-b401-4941-bd05-ca6a7fcc4653.png)<br>

项目运行成功截图:<br>
![图片](https://user-images.githubusercontent.com/104661473/235287439-9012ec60-3639-4e63-82f3-1b2b3c6ddd18.png)<br>
![图片](https://user-images.githubusercontent.com/104661473/235287497-e639d25c-6a60-4a18-8ef7-f437367f49a0.png)
<br>