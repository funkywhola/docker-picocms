# 在 Docker 上建立 Picocms

Server 需要先安裝 Docker & Docker-Compose
```
#確認版本
docker --version
Docker version 20.10.11, build dea9396

docker-compose -v
docker-compose version 1.28.5, build c4eb3a1f

```

佈署 Picocms (僅第一次佈署時執行，這個 script 會產生含有 picocms 的資料夾 "data"，如果重複執行這個 script，可能會造成 data 資料夾內文件遭到覆蓋)
```
sh init-pico.sh
```

檢查 docker container 狀態
```

docker ps

CONTAINER ID   IMAGE                    COMMAND                  CREATED         STATUS                 PORTS                                       NAMES
057522082cf1   picocms-docker_picocms   "docker-php-entrypoi…"   5 seconds ago   Up 2 seconds           0.0.0.0:10888->80/tcp, :::10888->80/tcp     picocms

```

瀏覽到 http://[IP]:10888

結束 container
```
docker-compose down
```

重新啟動 container
```
docker-compose up -d
```