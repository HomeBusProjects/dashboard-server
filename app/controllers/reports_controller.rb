class ReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @access = Device.access
    @cameras = Device.camera
    @discoballs = Device.discoball
    @furballs = Device.furball
    @printers_3d = Device.printers_3d

#    @network_active_hosts_max = Sample.where('created_at > ?', Time.now - 1.day).maximum("((data->'active_hosts'->>'arp_table_length')::integer)")
  end
end
