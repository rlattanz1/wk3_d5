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

    def add_child(child_node)
        if self.children.include?(child_node)
            return
        else
            child_node.parent=(self)
        end
    end

    def remove_child(child_node)
        if self.children.include?(child_node)
            self.children.delete(child_node)
            child_node.parent=(nil)
        else
            raise "node is not a child"
        end
    end

<<<<<<< HEAD
    end
    
=======
>>>>>>> b9e1c2d047af4a067883d83ada0de7ca5a648065
    def dfs()

    end

    def bfs()

    end

end
