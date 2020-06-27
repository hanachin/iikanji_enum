class PostType < ApplicationRecord
  def self.seed
    [PublishedPost, DraftPost].each do |klass|
      find_or_create_by!(id: klass.name)
    end
  end
end
