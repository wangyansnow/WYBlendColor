module Fastlane
  module Actions
    module SharedValues
      GIT_REBASE_CUSTOM_VALUE = :GIT_REBASE_CUSTOM_VALUE
    end

    class GitRebaseAction < Action
      def self.run(params)
      
      # 1.取出传递过来的参数
      branchName = params[:branchName] # 分支名称 默认develop
  
      UI.message("正在rebase#{branchName}分支 🎯.")
      
      # 2. 执行命令
      resultCmd = "git rebase #{branchName}"
      Actions.sh(resultCmd)
      
      end

# action 描述
      def self.description
        "rebase分支"
      end
  # action 具体描述
      def self.details
        "git_rebase(branchName:develop) git_rebase() rebase分支"
      end
# 参数
      def self.available_options

        [
            FastlaneCore::ConfigItem.new(key: :branchName,
                                         description:"要rebase的分支名称",
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

# 作者 王俨

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
