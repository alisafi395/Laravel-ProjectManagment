# Project Management System 🏗️

A Laravel-based project management system that allows users to add project deadlines, edit, delete tasks, and manage tasks efficiently.

## 🚀 Features

- 🗂️ Add project deadlines
- ✏️ Edit & delete tasks
- 📋 View all tasks
- ✅ View only "My Tasks"
- 🔒 Authentication & authorization (if applicable)

## 🛠️ Installation

1. **Clone the repository**

    ```sh
    git clone https://github.com/Wcoder547/Laravel-ProjectManagment.git
    cd Laravel-ProjectManagment
    ```

2. **Install dependencies**

    ```sh
    composer install
    npm install
    ```

3. **Set up environment variables**  
   Copy `.env.example` and create a new `.env` file:

    ```sh
    cp .env.example .env
    ```

4. **Generate application key**

    ```sh
    php artisan key:generate
    ```

5. **Set up database**  
   Update `.env` with your database credentials, then run:

    ```sh
    php artisan migrate --seed
    ```

6. **Run the development server**

    ```sh
    php artisan serve
    npm run dev
    ```

## 🔧 Usage

- **Login/Register** to manage tasks.
- **Create, edit, and delete tasks** for projects.
- **Filter tasks** by "All Tasks" or "My Tasks".

## 🏗️ Tech Stack

- **Backend:** Laravel
- **Frontend:** Blade / Inertia.js with React
- **Database:** MySQL / PostgreSQL
- **Version Control:** Git & GitHub

## 📜 License

This project is licensed under the MIT License.

## 👨‍💻 Author

- [Waseem Akram](https://github.com/Wcoder547)
