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
        else new_parent.children
    end

    def add_child()

    end

    def remove_child()

    end  #check
# check 2
    def dfs()

    end

    def bfs()

    end

end
