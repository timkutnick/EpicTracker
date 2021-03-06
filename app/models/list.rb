class List < ActiveRecord::Base
  validates :name, :project_id, presence: true
  
  belongs_to :project
  has_many :stories, dependent: :destroy
  has_many :weeks
  # class_name: "Story",
  # foreign_key: :list_id,
  # primary_key: :id
end
