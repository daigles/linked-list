if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
end

require 'linked-list'

gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Minitest::Spec
  def create_node(*args)
    LinkedList::Node.new(*args)
  end

  def create_list(*args)
    LinkedList::List.new(*args)
  end
end
