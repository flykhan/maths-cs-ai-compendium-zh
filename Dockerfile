# syntax=docker/dockerfile:1
#
# 数学、计算机科学与 AI 百科全书（中文翻译版）—— 静态站点镜像
#
# 多阶段构建：先在本镜像内用 mkdocs 生成 site/，再交给 nginx 提供静态文件。
# 因此可以直接在本仓库根目录执行 `docker build -t flykhan/mathai .`，
# 无需预先在宿主机安装 Python / mkdocs。
#
# 运行： docker run -d -p 19080:80 --name mathai flykhan/mathai:latest
# 更新： 修改内容 → git pull → docker build -t flykhan/mathai:latest . → 重建容器

# ---------- 构建阶段 ----------
FROM python:3.12-slim AS build

ENV PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /build

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .
RUN mkdocs build --clean

# ---------- 运行阶段 ----------
FROM nginx:1.27-alpine

LABEL org.opencontainers.image.title="maths-cs-ai-compendium-zh" \
      org.opencontainers.image.description="数学、计算机科学与 AI 百科全书（中文翻译版）静态站点" \
      org.opencontainers.image.url="https://mathai.example.com/" \
      org.opencontainers.image.source="https://github.com/flykhan/maths-cs-ai-compendium-zh" \
      org.opencontainers.image.licenses="MIT"

RUN rm -f /etc/nginx/conf.d/default.conf
COPY deploy/nginx-container.conf /etc/nginx/conf.d/mathai.conf
COPY --from=build /build/site /usr/share/nginx/html

EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget -qO- http://127.0.0.1/ >/dev/null 2>&1 || exit 1

# 官方 nginx 镜像默认 CMD 即可
