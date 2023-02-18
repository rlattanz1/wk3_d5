class PolyTreeNode
attr_reader :value, :children, :parent

    def initialize(value, children = [])
        @value = value
        @children = children
        @parent = nil
    end

    def parent=(new_parent)
        if parent == new_parent
            return
        elsif new_parent == nil
            @parent.children.delete(self)
            @parent = new_parent
        else
            # remove self from old parent
            @parent.children.delete(self) if @parent != nil
            @parent = new_parent
            @parent.children << self
        end
    end

    def add_child()

    end

    def remove_child()

    end
    
    def dfs()

    end

    def bfs()

    end

end

# p node_a = PolyTreeNode.new("a")
# p node_b = PolyTreeNode.new("b")
# p node_b.parent = node_a
# p node_b
