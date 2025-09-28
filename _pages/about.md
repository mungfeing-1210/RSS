---
layout: default
title: 关于
permalink: /about/
---

# 关于这个博客

## 系统架构

这是一个基于 **Jekyll + GitHub Pages** 的静态博客系统，实现了"只上传 Markdown → 自动生成网页 + RSS"的完整自动化流程。

## 技术栈

- **Jekyll**：静态网站生成器，将 Markdown 转换为 HTML
- **GitHub Pages**：免费静态网站托管服务
- **jekyll-feed**：RSS 生成插件
- **Markdown**：轻量级标记语言，用于内容编写

## 工作流程

1. **编写内容**：在 `_posts/` 目录下创建 Markdown 文件
2. **版本控制**：使用 Git 管理内容变更
3. **自动构建**：GitHub Pages 自动运行 Jekyll 构建
4. **自动部署**：生成的 HTML 和 RSS 自动部署到线上

## 第一性原理

### 静态网站的本质
网站就是一组纯文件（HTML/CSS/JS/XML），浏览器通过 HTTP 协议访问这些文件。

### 为什么需要构建过程？
- Markdown 不是浏览器原生支持的格式，需要转换为 HTML
- RSS 需要将文章数据聚合为 XML 格式
- 需要模板系统来保持页面结构的一致性

### 自动化的价值
- 减少手动操作，提高效率
- 确保构建过程的一致性和可重复性
- 版本控制提供变更追踪和回滚能力

## RSS 订阅

RSS 地址：[{{ site.baseurl }}/feed.xml]({{ site.baseurl }}/feed.xml)

支持以下 RSS 阅读器：
- Readwise Reader
- Feedly
- Inoreader
- Apple News
- 任何支持 RSS 标准的阅读器

## 开源与透明

这个博客的完整源码都托管在 GitHub 上，遵循开源精神。你可以：

- 查看完整的源代码
- 了解系统的工作原理
- 基于此模板创建自己的博客
- 贡献改进建议

## 联系方式

如果你有任何问题或建议，欢迎通过以下方式联系：

- GitHub Issues
- Email
- RSS 订阅（关注更新）

感谢你的访问！
