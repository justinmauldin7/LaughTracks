class Special < ActiveRecord::Base
  belongs_to :comedian

  def find_a_comedians_specials(comedian_id)
    if comedian_id == special.comedian_id
      
    end
  end
end
