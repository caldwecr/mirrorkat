class MeerkatStream < ActiveRecord::Base
  has_many :restreams, class_name: "MeerkatStream"
end
