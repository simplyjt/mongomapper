module UseSequenceAsMongoId
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      Sequence.create(:id => base.to_s) if Sequence.first(:id => base.to_s).nil?
      key :_id, Integer
    end
  end
  module ClassMethods
    def next_mongo_id
      Sequence.next_id(self.to_s)
    end
  end
end
