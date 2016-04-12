module Authentication
  class Engine < ::Rails::Engine
    isolate_namespace Authentication

    Gem.loaded_specs['authentication'].dependencies.each do |d|
      require d.name
    end
  end
end
