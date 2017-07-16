module Fastlane
  module Actions
    module SharedValues
      GIT_PULL_CUSTOM_VALUE = :GIT_PULL_CUSTOM_VALUE
    end

    class GitPullAction < Action
      def self.run(params)
      
      # 1.取出传递过来的参数
      repo = params[:repo] # 仓库名称 默认gitlab
      branchName = params[:branchName] # 分支名称 默认develop
  
      UI.message("正在拉取#{repo} #{branchName}分支代码 🎯.")
      
      # 2. 执行命令
      resultCmd = "git pull #{repo} #{branchName}"
      Actions.sh(resultCmd)
      
      end

# action 描述
      def self.description
        "拉取远程分支代码"
      end
  # action 具体描述
      def self.details
        "git _pull(repo:gitlab, branchName:develop) git_pull(branchName:develop) 拉取远程分支代码"
      end
# 参数
      def self.available_options

        [
          FastlaneCore::ConfigItem.new(key: :repo,
                                       description:"要拉取的远程仓库名称",
                                       is_string:true,
                                       optional:true,
                                       default_value: "gitlab"
                                       ),
            FastlaneCore::ConfigItem.new(key: :branchName,
                                         description:"要拉取的分支名称",
                                         is_string:true,
                                         optional:true,
                                         default_value:"develop"
                                         )
        ]
      end
# 输出
      def self.output
        ""
      end
# 返回值
      def self.return_value
        nil
      end

# 作者

      def self.authors
        ["wangyan1@wanglibank.com"]
      end
# 平台支持
      def self.is_supported?(platform)
        # you can do things like
        # 
        #  true
        # 
        #  platform == :ios
        # 
        #  [:ios, :mac].include?(platform)
        # 

        platform == :ios
      end
    end
  end
end
