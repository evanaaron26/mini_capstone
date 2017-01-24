class Car < ApplicationRecord
    def friendly_updated_at
     updated_at.strftime('%b %e, %Y')
    end

    def long_name
        new_name = "#{year} #{manufacture} #{price}"
        new_name
    end 
end
