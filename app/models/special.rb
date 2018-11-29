class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :title

  def self.average_runtime
    average(:runtime).to_f.round(2)
  end
end
