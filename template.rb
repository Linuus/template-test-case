require "active_support/all"

def generate_app
  after_bundle do
    rake("db:drop")
    rake("db:create")
    rake("db:migrate")

    generate(:model, "author name:string")
    generate(:model, "article title:string body:text")
  end
end

generate_app
