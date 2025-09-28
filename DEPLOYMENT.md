# 部署指南

本文档详细说明如何将这个 Jekyll 博客部署到 GitHub Pages。

## 🎯 部署目标

将本地项目部署到 GitHub Pages，实现：
- 自动构建静态网站
- 自动生成 RSS 订阅
- 通过 HTTPS 访问
- 免费托管

## 📋 部署前准备

### 1. 确保文件完整性

检查以下文件是否存在：

```
├── _config.yml          ✅ Jekyll 配置文件
├── index.md             ✅ 首页
├── _posts/              ✅ 文章目录
│   ├── 2025-01-28-系统搭建指南.md
│   └── 2025-01-28-示例文章.md
├── _pages/              ✅ 其他页面
│   └── about.md
├── Gemfile              ✅ Ruby 依赖
└── README.md            ✅ 说明文档
```

### 2. 配置检查

确保 `_config.yml` 中的配置正确：

```yaml
# 重要：根据你的实际仓库情况修改
url: "https://你的用户名.github.io"
baseurl: "/RSS"  # 如果仓库名是 RSS，保持这个；否则改为你的仓库名
```

## 🚀 部署步骤

### 步骤 1：创建 GitHub 仓库

1. 登录 GitHub
2. 点击右上角的 "+" → "New repository"
3. 填写仓库信息：
   - **Repository name**: 你的仓库名（例如：`myblog` 或 `用户名.github.io`）
   - **Description**: 可选，描述你的博客
   - **Public**: 选择公开（GitHub Pages 免费版要求）
   - **Initialize**: 不要勾选任何初始化选项
4. 点击 "Create repository"

### 步骤 2：上传文件

#### 方法 A：使用 GitHub Web 界面

1. 在仓库页面点击 "uploading an existing file"
2. 将所有项目文件拖拽到上传区域
3. 填写提交信息："Initial commit: Jekyll blog setup"
4. 点击 "Commit changes"

#### 方法 B：使用 Git 命令行

```bash
# 初始化 Git 仓库
git init

# 添加远程仓库
git remote add origin https://github.com/你的用户名/你的仓库名.git

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: Jekyll blog setup"

# 推送到 GitHub
git push -u origin main
```

### 步骤 3：启用 GitHub Pages

1. 进入仓库的 **Settings** 页面
2. 在左侧菜单中找到 **Pages**
3. 在 **Source** 部分：
   - 选择 **Deploy from a branch**
   - Branch 选择 **main**
   - Folder 选择 **/ (root)**
4. 点击 **Save**

### 步骤 4：等待构建

GitHub Pages 会自动开始构建过程：

1. **构建状态**：可以在仓库的 "Actions" 标签页查看构建进度
2. **构建时间**：通常需要 1-3 分钟
3. **成功标志**：仓库页面会显示绿色勾号

### 步骤 5：验证部署

#### 访问网站

- 如果仓库名是 `用户名.github.io`：`https://用户名.github.io`
- 如果仓库名是其他名称：`https://用户名.github.io/仓库名`

#### 检查 RSS

访问：`https://你的域名/feed.xml`

应该能看到 RSS XML 内容。

## 🔧 配置调整

### 修改 URL 配置

如果部署后发现链接不正确，需要修改 `_config.yml`：

```yaml
# 根仓库（用户名.github.io）
url: "https://你的用户名.github.io"
baseurl: ""  # 留空

# 子仓库（用户名.github.io/仓库名）
url: "https://你的用户名.github.io"
baseurl: "/仓库名"
```

修改后重新提交：

```bash
git add _config.yml
git commit -m "Fix URL configuration"
git push origin main
```

### 自定义域名（可选）

如果你想使用自己的域名：

1. 在仓库根目录创建 `CNAME` 文件，内容是你的域名
2. 在域名服务商处设置 CNAME 记录指向 `你的用户名.github.io`

## 📝 添加内容

### 创建新文章

1. 在 `_posts/` 目录下创建新文件：`YYYY-MM-DD-标题.md`
2. 添加 Front Matter 和内容
3. 提交并推送：

```bash
git add _posts/
git commit -m "Add new post: 文章标题"
git push origin main
```

### 修改页面

1. 编辑相应的 `.md` 文件
2. 提交并推送：

```bash
git add .
git commit -m "Update pages"
git push origin main
```

## 🔍 故障排除

### 构建失败

1. **检查 Actions 页面**：查看具体的错误信息
2. **常见问题**：
   - Front Matter 格式错误
   - 文件名包含特殊字符
   - Markdown 语法错误

### 网站无法访问

1. **检查 Pages 设置**：确保已正确启用
2. **检查 URL 配置**：确保 `_config.yml` 中的 URL 正确
3. **等待缓存更新**：可能需要几分钟

### RSS 不更新

1. **检查 feed.xml**：直接访问 RSS 地址
2. **检查文章格式**：确保 Front Matter 完整
3. **清除浏览器缓存**：强制刷新

## 📊 监控和维护

### 定期检查

- 确保网站正常访问
- 检查 RSS 是否正常更新
- 监控 GitHub Actions 构建状态

### 备份

虽然代码托管在 GitHub 上，但建议：
- 定期本地备份
- 保留重要文章的本地副本

## 🎉 部署完成

恭喜！你的 Jekyll 博客已经成功部署到 GitHub Pages。

### 下一步

1. **分享 RSS 地址**：`https://你的域名/feed.xml`
2. **添加更多内容**：开始写文章
3. **自定义样式**：根据需要调整主题
4. **设置域名**：如果需要，配置自定义域名

享受你的新博客！🎊
