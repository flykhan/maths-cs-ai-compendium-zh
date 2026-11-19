# 部署说明 — mathai.example.com

本仓库的线上站点不再使用 GitHub Pages，而是由 GitHub Actions 构建后 rsync 到自有服务器。

| 项目 | 值 |
|---|---|
| 站点地址 | https://mathai.example.com |
| 服务器 | `38.55.97.65`（root，SSH 端口 `2222`） |
| 站点目录 | `/var/www/mathai.example.com` |
| nginx 配置 | `/etc/nginx/sites-available/mathai.example.com` → `sites-enabled/` 软链 |
| 证书 | `/etc/nginx/cert/cert.crt` + `private.key`（acme.sh 签发的 `*.example.com` 泛域名证书，自动续期） |
| 自动部署 | `.github/workflows/deploy.yml`：push 到 `master` 或手动触发 |

## 流程

1. GitHub Actions 安装 `mkdocs-material`，执行 `mkdocs build --clean`；
2. 用仓库 Secret 中的专用部署私钥 SSH 到服务器；
3. `rsync -az --delete site/ root@38.55.97.65:/var/www/mathai.example.com/`。

## 仓库 Secrets

| Secret | 用途 |
|---|---|
| `MATHAI_SSH_KEY` | 专用部署私钥（`gh-actions-deploy@mathai.example.com`），公钥在服务器 `/root/.ssh/authorized_keys` |
| `MATHAI_SSH_HOST` | `38.55.97.65` |
| `MATHAI_SSH_PORT` | `2222` |
| `MATHAI_SSH_USER` | `root` |
| `MATHAI_KNOWN_HOSTS` | 服务器 2222 端口的 ED25519 host key，防止中间人 |

部署服务器若要重建，照 `nginx-mathai.example.com.conf` 放好 vhost、建好站点目录，再把新的公钥加进
`/root/.ssh/authorized_keys`，即可重新接管自动部署。

## 手动部署（本地）

```bash
pip install mkdocs-material mkdocs
mkdocs build --clean
rsync -az --delete -e 'ssh -p 2222' site/ root@38.55.97.65:/var/www/mathai.example.com/
```
