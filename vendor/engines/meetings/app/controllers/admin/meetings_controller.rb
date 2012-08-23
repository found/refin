module Admin
  class MeetingsController < Admin::BaseController

    crudify :meeting, :xhr_paging => true

  end
end
