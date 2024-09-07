class Board < ApplicationRecord
    TILE_TYPES = %w[forest pasture fields hills mountains desert].freeze
    TILE_COUNTS = { 'forest' => 4, 'pasture' => 4, 'fields' => 4, 'hills' => 3, 'mountains' => 3, 'desert' => 1 }.freeze
    NUMBER_TOKENS = [2, 3, 3, 4, 4, 5, 5, 6, 6, 8, 8, 9, 9, 10, 10, 11, 11, 12].freeze
  
    def self.generate_random_board
      tiles = TILE_COUNTS.flat_map { |type, count| [type] * count }.shuffle
      numbers = NUMBER_TOKENS.shuffle
      { tiles: tiles, numbers: numbers }
    end
  end
  