class Visit < ApplicationRecord
  def self.register(url, ip)
    visit = find_or_initialize_by url: url, ip: ip
    visit.number += 1
    visit.save!
    visit
  end
end
