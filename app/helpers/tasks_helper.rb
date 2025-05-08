module TasksHelper
  def task_badge_class(status)
    base = "inline-block px-2 py-1 text-xs font-semibold rounded-full"
    case status
    when "pending"
      "#{base} text-yellow-800 bg-yellow-100"
    when "in_progress"
      "#{base} text-blue-800 bg-blue-100"
    when "completed"
      "#{base} text-green-800 bg-green-100"
    else
      "#{base} text-gray-800 bg-gray-100"
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
      "text-gray-600 font-medium"
    end
  end

  def due_date_badge(task)
    if task.due_date && task.due_date < Date.today
      content_tag :span, "Overdue", class: "inline-block bg-red-100 text-red-800 text-xs font-semibold px-2 py-1 rounded-full"
    elsif task.due_date
      task.due_date.strftime("%b %d, %Y")
    else
      "No due date"
    end
  end

  def priority_badge(task)
    badge_classes = "inline-block text-xs font-semibold px-2 py-1 rounded-full"
    case task.priority
    when "low"
      content_tag :span, "Low", class: "#{badge_classes} bg-green-100 text-green-800"
    when "medium"
      content_tag :span, "Medium", class: "#{badge_classes} bg-yellow-100 text-yellow-800"
    when "high"
      content_tag :span, "High", class: "#{badge_classes} bg-red-100 text-red-800"
    else
      content_tag :span, "Unknown", class: "#{badge_classes} bg-gray-100 text-gray-800"
    end
  end
end
