# frozen_string_literal: true

class Api::V1::Collects::DeploysController < Api::V1::Collects::ApplicationController
  ##
  # show lockers list that need to be deployed
  def index
    @lockers = current_location.lockers.deploying

    render json: @lockers, each_serializer: LockerSerializer, include: %i[order person asset]
  end
end
# #index response
# [
#   {
#     "serial_number"=>"1",
#     "locker_no"=>"1",
#     "status"=>"Free",
#     "order"=> {
#       "order_id"=>"-",
#       "order_num"=>"0"
#     },
#     "person"=> {
#       "first_name"=>"",
#       "last_name"=>""
#     },
#     "asset"=> {
#       "serial_number"=>nil,
#       "uid"=>"0000000001",
#       "type"=>"ullam",
#       "condition"=>"Operational",
#       "status"=>"Deploying"
#     }
#   },
#   ...
# ]
