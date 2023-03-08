require_relative "../PolyTreeNode/practice-for-ch-ruby-poly-tree-node-long-practice/lib/tree_node.rb"
class KnightPathFinder
    attr_reader :considered_positions, :start_pos, :root_node
    def self.valid_moves(pos)
        r, c = pos
        pos_mov = []
        pos_mov << [r+2, c+1]
        pos_mov << [r+2, c-1]
        pos_mov << [r+1, c-2]
        pos_mov << [r+1, c+2]
        pos_mov << [r-1, c+2]
        pos_mov << [r-2, c+1]
        pos_mov << [r-1, c-2]
        pos_mov << [r-2, c-1]

        pos_mov.select! {|r, c| r <= 7 && r >= 0 && c <=7 && c >=0}
    end

    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = [start_pos]
        # self.build_move_tree
    end

    def new_move_positions(pos)
        new_pos = KnightPathFinder.valid_moves(pos) - considered_positions
        @considered_positions = considered_positions | new_pos
        new_pos
    end

end
