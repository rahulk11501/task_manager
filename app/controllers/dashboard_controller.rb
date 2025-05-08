class DashboardController < ApplicationController
    before_action :authenticate_user!
    def daily_planner
        @today_tasks = current_user.tasks.where(due_date: Date.today)
        @tomorrow_tasks = current_user.tasks.where(due_date: Date.tomorrow)
    end
end
