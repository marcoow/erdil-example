module Erdil
  module Auth
    class Engine < ::Rails::Engine
      isolate_namespace Erdil::Auth
    end
  end
end
