docker compose up -d 


# #参考网站
# # https://zhengzeqin.netlify.app/2022/05/16/flutter%E6%90%AD%E5%BB%BA%E7%A7%81%E6%9C%89pub%E4%BB%93%E5%BA%93docker%E9%83%A8%E7%BD%B2/
# # https://www.jianshu.com/p/39e794909db7

# #mongo 
# docker run --name mongo --hostname=b0f200ed6c8f --env=PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin --env=GOSU_VERSION=1.12 --env=JSYAML_VERSION=3.13.1 --env=MONGO_PACKAGE=mongodb-org --env=MONGO_REPO=repo.mongodb.org --env=MONGO_MAJOR=5.0 --env=MONGO_VERSION=5.0.8 --env=HOME=/data/db --volume=C:\Users\Lenovo\.unpub_mongo:/data/db:rw --volume=/data/configdb --volume=/data/db --network=action_power_pub_default -p 27017:27017 --restart=always --label='com.docker.compose.config-hash=85fde43f59e920ea8286652e9de830006e0005f36904a2596be5db7b0fe6a5a9' --label='com.docker.compose.container-number=1' --label='com.docker.compose.depends_on=' --label='com.docker.compose.image=sha256:96c85f49715a19320f201ed70f73f8ce67962200a3e798dec12111fac170b6da' --label='com.docker.compose.oneoff=False' --label='com.docker.compose.project=action_power_pub' --label='com.docker.compose.project.config_files=E:\Projects\action_power_pub\docker-compose.yml' --label='com.docker.compose.project.working_dir=E:\Projects\action_power_pub' --label='com.docker.compose.service=mongo' --label='com.docker.compose.version=2.38.2' --runtime=runc -d mongo:5.0.8


# docker run --name mongo --hostname=b0f200ed6c8f --env=PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin --env=HOME=/data/db --volume=C:\Users\Lenovo\.unpub_mongo:/data/db:rw --volume=/data/configdb --volume=/data/db --network=action_power_pub_default --restart=always --label='com.docker.compose.project=action_power_pub' --runtime=runc -d mongo:5.0.8



# #un_pub 
# docker run --name un_pub --hostname=212a23df4021 --env=PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin --env=DART_SDK=/usr/lib/dart --volume=C:\Users\Lenovo\.unpub-packages:/app/unpub-packages:rw --network=action_power_pub_default --workdir=/app -p 4000:4000 --restart=always --label='com.docker.compose.config-hash=763df0e87aef263b08a60e4f5f5abaa92236457f9fddea5d5e142daed5e39867' --label='com.docker.compose.container-number=1' --label='com.docker.compose.depends_on=mongo:service_started:false' --label='com.docker.compose.image=sha256:9e0d5ae7ac62b932a3f02741d5909fe872b822918c47139934776c327187902b' --label='com.docker.compose.oneoff=False' --label='com.docker.compose.project=action_power_pub' --label='com.docker.compose.project.config_files=E:\Projects\action_power_pub\docker-compose.yml' --label='com.docker.compose.project.working_dir=E:\Projects\action_power_pub' --label='com.docker.compose.service=unpub' --label='com.docker.compose.version=2.38.2' --runtime=runc -d action_power_pub-unpub


# docker run --name un_pub --hostname=212a23df4021 --env=PATH=/usr/lib/dart/bin:/root/.pub-cache/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin --env=DART_SDK=/usr/lib/dart --volume=C:\Users\Lenovo\.unpub-packages:/app/unpub-packages:rw --network=action_power_pub_default --workdir=/app -p 4000:4000 --restart=always --label='com.docker.compose.project=action_power_pub' --runtime=runc -d action_power_pub-unpub




# #创建网络：
# docker network rm action_power_pub_default

# #移除网络：
# docker network rm action_power_pub_default


# #导出镜像
# docker save -o D:/flutter_docker/mongo.tar mongo
# #导入镜像
# docker load -i mongo.tar

# #导出容器
# docker export -o mongo.tar mongo
# #导入容器
# docker import .\mongo.tar mongo


# # 先安装 docker 环境启动后， 在当前 docker-compose.yml 文件下执行下面命令即可
# docker compose up -d 
