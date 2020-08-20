#### 一、介绍

- 用来部署在docker上的scrapyd服务配置文件，方便与gerapy/scrapydweb/spiderkeeper配合使用，运行命令即可编译打包docker镜像。
- 对外访问设置为0.0.0.0:6800。
- docker时区默认为 上海时区



<br>
 
#### 二、使用
***
- 运行命令后，打开[127.0.0.1:6800](http://127.0.0.1:6800) 
    

        docker run -p 6800:6800 samge/scrapyd:latest



<br>

#### 一、编译docker镜像
***

        docker-compose up --build



<br>

#### 三、其他说明
***

- 如果有需要，可以自己编译并上传docker镜像到[https://hub.docker.com/](https://hub.docker.com/)

	    docker login
	    docker images
	    docker push 你的名称/scrapyd:latest



