# 部署说明 — mathai.example.com

线上站点不再使用 GitHub Pages，也不用 GitHub Actions 自动部署：**内容很少变化**，
整站被打包成 Docker 镜像 `flykhan/mathai`，在服务器上以容器运行，宿主 nginx 只负责 TLS 和反向代理。

| 项目 | 值 |
|---|---|
| 站点地址 | https://mathai.example.com |
| 镜像 | `flykhan/mathai:latest`（Docker Hub） |
| 容器名 / 端口 | `mathai`，监听 `127.0.0.1:19080` → 容器 80 |
| 反向代理 | `/etc/nginx/sites-available/mathai.example.com` → `sites-enabled/` 软链 |
| 证书 | `/etc/nginx/cert/cert.crt` + `private.key`（acme.sh 签发的 `*.example.com` 泛域名证书，自动续期） |
| 容器内配置 | `deploy/nginx-container.conf` |
| 宿主机 vhost | `deploy/nginx-mathai.example.com.conf` |

## 镜像结构

`Dockerfile` 是多阶段构建，直接在本仓库根目录构建即可，无需在宿主机安装 Python/mkdocs：

1. `python:3.12-slim` 阶段：`pip install -r requirements.txt`，再 `mkdocs build --clean`；
2. `nginx:alpine` 阶段：把生成的 `site/` 拷到 `/usr/share/nginx/html`，套用 `deploy/nginx-container.conf`。

## 更新内容

```bash
# 1) 构建（或直接拉取 CI 之外新发布的镜像）
docker build -t flykhan/mathai:latest .

# 2) 需要发布给别人时推上去
docker push flykhan/mathai:latest

# 3) 服务器上重建容器
ssh -p 2222 root@example.com
docker pull flykhan/mathai:latest
docker rm -f mathai
docker run -d --name mathai --restart unless-stopped \
  -p 127.0.0.1:19080:80 flykhan/mathai:latest
```

宿主 nginx 不需要 reload（只改了容器内容时）。

## 首次部署（服务器）

```bash
docker run -d --name mathai --restart unless-stopped \
  -p 127.0.0.1:19080:80 flykhan/mathai:latest

# vhost 从「直接 root 到静态目录」改为「proxy_pass 到 127.0.0.1:19080」
cp deploy/nginx-mathai.example.com.conf /etc/nginx/sites-available/mathai.example.com
ln -sf /etc/nginx/sites-available/mathai.example.com /etc/nginx/sites-enabled/mathai.example.com
nginx -t && nginx -s reload
```
