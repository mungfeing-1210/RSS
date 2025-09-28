---
layout: default
title: 首页
description: 欢迎来到我的博客
---

# 欢迎来到我的博客

这是一个基于 Jekyll + GitHub Pages 的静态博客，实现了"只上传 Markdown → 自动生成网页 + RSS"的完整流程。

## 系统工作原理

### 第一性原理解释

1. **静态网站本质**：网站就是一组纯文件（HTML/CSS/JS/XML），浏览器通过 HTTP 下载并渲染
2. **Markdown 转换**：Markdown 需要转换为 HTML 才能被浏览器展示
3. **RSS 生成**：RSS 是 XML 格式，需要将文章数据聚合生成 feed.xml
4. **自动化触发**：当仓库更新时，GitHub Pages 自动重新构建和部署

### 最新文章

{% for post in site.posts limit:5 %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y年%m月%d日" }}
{% endfor %}

## RSS 订阅

RSS 地址：[{{ site.baseurl }}/feed.xml]({{ site.baseurl }}/feed.xml)

你可以将这个地址添加到任何 RSS 阅读器中，如：
- Readwise Reader
- Feedly
- Inoreader
- 或任何支持 RSS 的阅读器

## 如何使用

1. 在 `_posts/` 目录下创建新的 Markdown 文件
2. 文件名格式：`YYYY-MM-DD-文章标题.md`
3. 提交并推送到 GitHub
4. 系统自动生成网页和更新 RSS

## 技术栈

- **Jekyll**：静态网站生成器
- **GitHub Pages**：免费静态网站托管
- **jekyll-feed**：RSS 生成插件
- **Markdown**：内容编写格式
