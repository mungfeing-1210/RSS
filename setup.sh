#!/bin/bash

# Jekyll 博客快速配置脚本
# 使用方法：./setup.sh 你的用户名 你的仓库名

set -e

# 检查参数
if [ $# -ne 2 ]; then
    echo "使用方法: $0 <GitHub用户名> <仓库名>"
    echo "示例: $0 john myblog"
    exit 1
fi

USERNAME=$1
REPO_NAME=$2

echo "🚀 开始配置 Jekyll 博客..."
echo "用户名: $USERNAME"
echo "仓库名: $REPO_NAME"

# 备份原始配置文件
if [ -f "_config.yml" ]; then
    cp _config.yml _config.yml.backup
    echo "✅ 已备份原始配置文件"
fi

# 更新 _config.yml
echo "📝 更新配置文件..."

# 根据仓库名确定 URL 配置
if [ "$REPO_NAME" = "${USERNAME}.github.io" ]; then
    # 根仓库
    BASEURL=""
    echo "检测到根仓库配置"
else
    # 子仓库
    BASEURL="/${REPO_NAME}"
    echo "检测到子仓库配置"
fi

# 创建新的配置文件
cat > _config.yml << EOF
# Jekyll 配置文件
# 这是整个系统的核心配置，定义了如何将 Markdown 转换为 HTML 和 RSS

# 站点基本信息
title: ${USERNAME}的博客
description: 只上传 Markdown，自动生成网站与 RSS
author: ${USERNAME}
email: ${USERNAME}@example.com

# URL 配置 - 这是关键的第一性原理配置
url: "https://${USERNAME}.github.io"
baseurl: "${BASEURL}"

# 主题选择 - Jekyll 的"视图层"
theme: jekyll-theme-minimal

# 插件配置 - 这是生成 RSS 的核心
plugins:
  - jekyll-feed  # 自动生成 feed.xml

# 永久链接配置 - 确保文章链接稳定，这对 RSS 订阅很重要
permalink: /:year/:month/:day/:title/

# 构建配置
markdown: kramdown
highlighter: rouge

# 排除文件 - 避免 Jekyll 处理不必要的文件
exclude:
  - README.md
  - Gemfile
  - Gemfile.lock
  - node_modules
  - vendor/bundle/
  - vendor/cache/
  - vendor/gems/
  - vendor/ruby/
  - setup.sh
  - DEPLOYMENT.md

# 包含文件 - 确保必要文件被处理
include:
  - _pages

# 默认 Front Matter - 为所有页面设置默认值
defaults:
  - scope:
      path: ""
      type: "posts"
    values:
      layout: "post"
  - scope:
      path: ""
      type: "pages"
    values:
      layout: "default"

# 集合配置 - 如果需要特殊的内容类型
collections:
  pages:
    output: true
    permalink: /:name/

# 时区设置
timezone: Asia/Shanghai

# 语言设置
lang: zh-CN
EOF

echo "✅ 配置文件已更新"

# 更新 README.md
echo "📝 更新 README.md..."
cat > README.md << EOF
# ${USERNAME}的博客

这是一个基于 Jekyll 和 GitHub Pages 的静态博客系统。

## 🚀 访问地址

- 网站：https://${USERNAME}.github.io${BASEURL}/
- RSS：https://${USERNAME}.github.io${BASEURL}/feed.xml

## 📝 如何添加文章

在 \`_posts/\` 目录下创建新的 Markdown 文件，文件名格式：\`YYYY-MM-DD-文章标题.md\`

## 📡 RSS 订阅

RSS 地址：[https://${USERNAME}.github.io${BASEURL}/feed.xml](https://${USERNAME}.github.io${BASEURL}/feed.xml)

支持任何 RSS 阅读器，如 Readwise Reader、Feedly 等。

## 🏗️ 技术栈

- **Jekyll**：静态网站生成器
- **GitHub Pages**：免费静态网站托管
- **jekyll-feed**：RSS 生成插件
- **Markdown**：内容编写格式

## 📚 更多信息

详细的使用说明请参考 [DEPLOYMENT.md](DEPLOYMENT.md)

---

**享受写作的乐趣！** ✍️
EOF

echo "✅ README.md 已更新"

# 显示下一步操作
echo ""
echo "🎉 配置完成！"
echo ""
echo "📋 下一步操作："
echo "1. 将文件上传到 GitHub 仓库：https://github.com/${USERNAME}/${REPO_NAME}"
echo "2. 在仓库 Settings → Pages 中启用 GitHub Pages"
echo "3. 等待构建完成（通常 1-3 分钟）"
echo "4. 访问你的博客：https://${USERNAME}.github.io${BASEURL}/"
echo "5. 订阅 RSS：https://${USERNAME}.github.io${BASEURL}/feed.xml"
echo ""
echo "📖 详细部署说明请参考 DEPLOYMENT.md"
echo ""
echo "🔧 如需恢复原始配置：mv _config.yml.backup _config.yml"
