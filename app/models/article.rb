class Article < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
end
