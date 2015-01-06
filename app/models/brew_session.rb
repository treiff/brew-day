class BrewSession < ActiveRecord::Base
  belongs_to :user

  validates_datetime :brewing_date, :on_or_after => lambda { Date.current }, :before => :create,
                                    :on_or_after_message => 'Date must be in future'
end
