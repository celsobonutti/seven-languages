class Tree
  attr_accessor :children, :node_name

  def self.from_hash(hash)
    hash.map do |name, children|
      children = Tree.from_hash(children)
      Tree.new(name, children)
    end
  end

  def initialize(name, children = [])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit(&block)
    children.each { |c| c.visit_all(&block) }
  end

  def visit(&block)
    block.call self
  end
end

test_hash = { "grandpa" => { "dad" => { "child 1" => {}, "child 2" => {} },
                           "uncle" => { "child 3" => {}, "child 4" => {} } } }

Tree.from_hash(test_hash)[0].visit_all { |node| puts node.node_name }
