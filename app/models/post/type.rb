class Post < ApplicationRecord
  class Type < ApplicationRecord
    class << self
      def seed
        [PublishedPost, DraftPost].each do |klass|
          find_or_create_by!(id: klass.name)
        end
      end
    end
  end
end
