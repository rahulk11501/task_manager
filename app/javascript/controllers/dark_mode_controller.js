import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    toggle() {
        document.documentElement.classList.toggle('dark')
        localStorage.theme = document.documentElement.classList.contains('dark') ? 'dark' : 'light'
    }

    connect() {
        if (localStorage.theme === 'dark') {
            document.documentElement.classList.add('dark')
        }
    }
}
