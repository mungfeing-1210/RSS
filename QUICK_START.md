# 🚀 快速开始指南

## 30 秒快速部署

### 方法一：使用配置脚本（推荐）

```bash
# 1. 运行配置脚本
./setup.sh 你的GitHub用户名 你的仓库名

# 2. 上传到 GitHub
# 3. 启用 GitHub Pages
# 4. 访问你的博客！
```

### 方法二：手动配置

1. **修改 `_config.yml`**：
   ```yaml
   url: "https://你的用户名.github.io"
   baseurl: "/你的仓库名"  # 如果仓库名是 用户名.github.io，则留空
   ```

2. **上传到 GitHub 仓库**

3. **启用 GitHub Pages**：
   - 仓库 Settings → Pages → Source: Deploy from a branch → main

4. **等待构建完成**

## 📍 访问地址

- **网站**：`https://你的用户名.github.io/仓库名/`
- **RSS**：`https://你的用户名.github.io/仓库名/feed.xml`

## ✍️ 添加文章

在 `_posts/` 目录创建文件：`YYYY-MM-DD-标题.md`

```markdown
---
layout: post
title: "我的新文章"
date: 2025-01-28
categories: [分类]
tags: [标签]
description: "文章描述"
---

# 文章内容

这里是你的 Markdown 内容...
```

## 📡 RSS 订阅

将 RSS 地址添加到任何阅读器：
- Readwise Reader
- Feedly  
- Inoreader
- Apple News

## 🎯 系统原理

1. **写 Markdown** → 推送到 GitHub
2. **GitHub Pages** → 自动运行 Jekyll 构建
3. **Jekyll** → 生成 HTML 网页
4. **jekyll-feed** → 生成 RSS XML
5. **自动部署** → 更新网站和 RSS

## 🔧 自定义

- **修改主题**：编辑 `_config.yml` 中的 `theme`
- **添加页面**：在 `_pages/` 目录创建 `.md` 文件
- **自定义样式**：创建 `assets/css/style.scss`

## 📚 详细文档

- [完整部署指南](DEPLOYMENT.md)
- [README](README.md)

---

**就这么简单！开始你的博客之旅吧！** 🎉
