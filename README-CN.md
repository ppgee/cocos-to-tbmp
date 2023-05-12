# 淘宝适配构建插件（适用于 2.4.6 到 2.4.10）

## 使用插件

1. 下载 [最新插件](https://github.com/ppgee/cocos-to-tbmp/releases?q=taobao-adapter&expanded=true) 中的 `build-templates.zip` 和 `taobao-builder.zip`

2. 将 `build-templates.zip` 解压并复制到游戏项目的根目录中，若项目目录中存在`build-templates`，可以解压好的 `build-templates/alipay` 覆盖到项目的 `build-templates` 中，需要项目的 `build-templates/alipay` 为本插件提供的

3. 将 `taobao-builder.zip` 解压并复制到需要构建项目根目录的 `packages` 中

4. 开始构建Cocos项目，发布平台请选择 `支付宝小游戏`，构建完成后即可运行

## 二次开发后使用插件

如果需要改动插件，可以采取一下步骤：

1. fork本项目并clone到本地

2. 通过[pnpm](https://pnpm.io/)安装项目依赖，安装后构建插件

3. 将 `build-templates` 复制到游戏项目的根目录中，若项目目录中存在`build-templates`，直接将 `build-templates/alipay` 覆盖到项目的 `build-templates` 中（需要保证项目的 `build-templates/alipay` 为本插件提供的）

4. 将 `dist/taobao-builder` 复制到游戏项目根目录的 `packages` 中

5. 开始构建游戏项目，发布平台请选择 `支付宝小游戏`，构建完成后即可运行

下面是安装依赖和构建插件的命令：

```bash
pnpm install

pnpm build
```

## build-templates 中 main、sub 文件夹有什么作用？

当我们游戏包体积大于淘宝官方要求时，需要将游戏包进行分包，而在淘宝开发者工具中，使用分包功能会使开发者工具无法正常显示游戏，所以在开发过程中，请使用 `main` 文件夹里面的文件覆盖对应游戏根目录文件，当需要上传时再使用 `sub`。构建默认使用 `main`
