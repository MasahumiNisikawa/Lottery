class Entry < ApplicationRecord
    belongs_to :user, class_name: "user", foreign_key: "user_id"
    belongs_to :ticket, class_name: "ticket", foreign_key: "ticket_id"
end
