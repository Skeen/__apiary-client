module Apiary
  module Command
    # Run commands
    class Runner
      def self.run(cmd, options)
        Apiary::Command.const_get(cmd.to_s.capitalize).send(:execute, options)
      end
    end
  end
end
