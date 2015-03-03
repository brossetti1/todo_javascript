# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :text
#  body       :text
#  finished   :boolean          default("f")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Todo < ActiveRecord::Base
  belongs_to :user
end
