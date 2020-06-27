class PostState < ApplicationRecord
  class << self
    def seed
      Post.states.each do |state, id|
        find_or_create_by!(id: id, name: state)
      end
    end
  end
end
