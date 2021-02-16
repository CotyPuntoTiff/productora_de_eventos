class Concert < ApplicationRecord
    belongs_to :group

    # def self.last_concerts(g)

    # where(group_id: g.id, event_date: Time.now.beginning_of_month..Time.now.end_of_month).order(event_date: :desc)         
    # end
    scope :last_concerts, -> (group) { where(group_id: group.id, event_date: Time.now.beginning_of_month..Time.now.end_of_month).order(event_date: :desc)}
    
    scope :max_audience, -> (group) { where(group_id: group.id).order(audience: :desc).includes(:group)}

    scope :max_time, -> (group) { where(group_id: group.id).order(duration: :desc).includes(:group)}
    
end
