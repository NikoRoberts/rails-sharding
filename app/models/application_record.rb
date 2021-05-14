class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to shards: {
    default: { writing: :primary, reading: :primary },
    shard1: { writing: :shard1, reading: :shard1 }
  }
end
