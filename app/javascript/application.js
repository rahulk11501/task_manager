// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import { Application } from "@hotwired/stimulus"
import DarkModeController from "./controllers/dark_mode_controller"

const application = Application.start()
application.register("dark-mode", DarkModeController)