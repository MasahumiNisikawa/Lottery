class Ticket < ApplicationRecord
    has_many :entrys, class_name: "entry", foreign_key: "reference_id"
    has_many :uaers, through: :entrys
    belongs_to :operator, class_name: "operator", foreign_key: "operator_id"
end

