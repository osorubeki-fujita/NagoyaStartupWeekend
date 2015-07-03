class TrainLocation::Info < ActiveRecord::Base
  include TrainLocationInfoCommonSettings
  include ::Association::To::FromStation::Info
  include ::Association::To::ToStation::Info
end