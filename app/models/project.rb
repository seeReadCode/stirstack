# == Schema Information
#
# Table name: projects
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Project < ApplicationRecord
  validates :title, length: { minimum: 2 }
end
