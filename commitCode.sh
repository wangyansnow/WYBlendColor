#! /bin/bash

# 网利宝代码脚本
# 作者王俨

# 请输入此次更新内容
read -p "请输入此次代码提交更新内容：" commit

#获取当前脚本所在路径
build_path=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)
echo "工程目录：${build_path}................."
cd ${build_path}

echo "开始提交代码............."

fastlane gitCode c:${commit}
