# taobao-adapter（for versions 2.4.6 to 2.4.10）

中文说明，点击[这里](./README-CN.md)

## Using the Plugin

1. Download the latest plugin from [here](https://github.com/ppgee/cocos-to-tbmp/releases?q=taobao-adapter&expanded=true) , including `build-templates.zip` and `taobao-builder.zip`

2. Extract `build-templates.zip` and copy it to the root directory of your game project. If `build-templates` is already exists, you can extract `build-templates/alipay` from the downloaded file and replace it with the one in your project. `build-templates` is provided by this plugin.

3. Extract `taobao-builder.zip` and copy it to `packages` in the root directory of your Cocos project.

4. Start building your Cocos project, and select "Alipay Mini Game" as the publishing platform. You can run the game after the build is completed.

## Using the Plugin After Secondary Development

If you need to modify the plugin, you can take the following steps:

1. Fork this project and clone it to your local machine.

2. Install project dependencies using [pnpm](https://pnpm.io/), and then build the plugin.

3. Copy `build-templates` to the root directory of your game project. If `build-templates` is already exists, directly replace it with `build-templates/alipay` provided by this plugin

4. Copy `dist/taobao-builder` to the packages folder in the root directory of your game project.

5. Start building your Cocos project, and select "Alipay Mini Game" as the publishing platform. You can run the game after the build is completed.

The following commands are used to install dependencies and build the plugin:

```bash
pnpm install

pnpm build
```

## What is the purpose of the "main" and "sub" folders in "build-templates"?

When the size of the game package is larger than the official requirements of Taobao, we need to split the game package. However, using the split package function in the Taobao developer tool will prevent the game from being displayed properly. Therefore, during development, please use the files in `main` to replace the corresponding files in the root directory of your game. When uploading, use `sub`. The build process uses `main` by default.
