#### 一、介绍

- 用来部署在docker上的scrapyd服务配置文件，方便与gerapy/scrapydweb/spiderkeeper配合使用，运行命令即可编译打包docker镜像。
- 对外访问设置为0.0.0.0:6800。
- docker时区默认为 上海时区



<br>
 
#### 二、使用

```
docker run -p 6800:6800 samge/scrapyd:latest
```
- 运行命令后，打开[127.0.0.1:6800](http://127.0.0.1:6800) 

- 【备选1】映射持久化路径为~/PRO/docker_data
```
docker run -it -v ~/PRO/docker_data:/data -p 6800:6800 samge/scrapyd:latest
```

- 【备选2】启动时指定容器名称为scrapyd（不指定的话每次启动话生成随机名）
```
docker run -it --name scrapyd -v ~/PRO/docker_data:/data -p 6800:6800 samge/scrapyd:latest
```

- 【备选3】启动时指定时区
```
docker run -it --name scrapyd -v ~/PRO/docker_data:/data -e TZ=Asia/Shanghai -p 6800:6800 samge/scrapyd:latest
```

<br>

#### 三、其他说明

如果有需要，可以自己编译并上传docker镜像到[https://hub.docker.com/](https://hub.docker.com/)

    docker-compose up --build

	docker login
	docker images
	docker push 你的名称/scrapyd:latest



