module TasksHelper
    def task_badge_class(status)
      case status
      when "pending"
        "inline-block px-2 py-1 text-xs font-semibold text-yellow-800 bg-yellow-100 rounded-full"
      when "in_progress"
        "inline-block px-2 py-1 text-xs font-semibold text-blue-800 bg-blue-100 rounded-full"
      when "completed"
        "inline-block px-2 py-1 text-xs font-semibold text-green-800 bg-green-100 rounded-full"
      else
        "inline-block px-2 py-1 text-xs font-semibold text-gray-800 bg-gray-100 rounded-full"
      end
    end

    def task_status_class(status)
      case status
      when "pending"
        "text-yellow-600 font-semibold"
      when "in_progress"
        "text-blue-600 font-semibold"
      when "completed"
        "text-green-600 font-semibold line-through"
      else
        "text-gray-600"
      end
    end
end
