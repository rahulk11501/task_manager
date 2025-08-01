# 📝 Task Manager App (Rails 8 + Tailwind)

A clean, minimal, and mobile-first task manager built with Rails 8 and Tailwind CSS. Easily track your tasks, set priorities, due dates, and stay productive on the go!

---

## ✨ Features

- ✅ User Authentication (Devise-based Login/Signup)
- 📋 CRUD for Tasks (Create, Read, Update, Delete)
- ⏳ Set Task Status (Pending, In Progress, Completed)
- 📅 Set Due Date for each Task
- ⚠️ Set Priority (Low, Medium, High)
- 🔁 Optional Task Recurrence (Daily, Weekly, Monthly)
- 🌙 Dark Mode (auto adapts)
- 📱 Fully Responsive Design for mobile and desktop

---

## 📷 Screenshots

> Add your own screenshots under `/app/assets/images/screenshots` and reference them below:

| Mobile View | Dark Mode |
|-------------|-----------|
| ![Mobile Home](app/assets/images/screenshots/mobile_home.png) | ![Dark Mode](app/assets/images/screenshots/dark_mode.png) |

---

## 🚀 Getting Started

### 🔧 Prerequisites

- Ruby 3.3+
- Rails 8.0.2
- Node.js & Yarn (for Tailwind)
- SQLite (or preferred DB)

### 📦 Installation

```bash
# 1. Clone the repository
git clone https://github.com/your_username/task-manager-app.git
cd task-manager-app

# 2. Install dependencies
bundle install

# 3. JavaScript Setup (No Bundler Required)
# This app uses [Importmap for Rails](https://github.com/rails/importmap-rails), so no JavaScript bundler is required.
# All required JS libraries (Turbo, Stimulus, custom controllers) are pinned via `config/importmap.rb`.
# No need to run `npm install` or manage a `package.json`.


# 4. Setup database
bin/rails db:setup

# 5. Run the server
bin/dev
