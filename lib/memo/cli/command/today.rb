module Memo
  class Cli
    module Command
      class Today
        require "date"

        def initialize(*)
          @config = Memo::Config.new
          @today = Memo::Today.new
        end

        def call
          system "mkdir -p #{@today.dir}"
          system "#{@config.editor} #{@today.fullpath}"
        end
      end
    end
  end
end
