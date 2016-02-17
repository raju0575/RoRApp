class Company < ActiveRecord::Base
  has_many :sub_companies
end
