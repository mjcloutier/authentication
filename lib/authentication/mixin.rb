module Authentication
  module Mixin
    # Example:
    #   module ClarityConfig
    #     # Mixes in the ClarityConfig from ClarityCommon so that it can be
    #     # extended here
    #     include ClarityCommon::Mixin
    #
    #     MINE = 'test'
    #   end
    def self.included(base)
      if path = Engine.paths.keys.find {|e| Engine.root.join(e, "#{base.to_s.underscore}.rb").exist?}
        require_dependency Engine.root.join(path, "#{base.to_s.underscore}.rb").to_s
      else
        raise "Engine #{Engine} does not define #{base}"
      end
    end
  end
end
