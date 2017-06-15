class Owner < ApplicationRecord
end

# == Schema Information
#
# Table name: owners
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  phone           :string
#  address         :string
#  city            :string
#  state           :string
#  zip             :string
#  emergency_name  :string
#  emergency_phone :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
