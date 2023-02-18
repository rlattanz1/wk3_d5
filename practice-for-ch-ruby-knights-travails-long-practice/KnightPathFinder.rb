require_relative "../PolyTreeNode/practice-for-ch-ruby-poly-tree-node-long-practice/lib/tree_node.rb"
class KnightPathFinder


    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions =
        self.build_move_tree
    end

    def self.valid_moves(pos)

    end


end
