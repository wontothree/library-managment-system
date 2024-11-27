import tkinter as tk
from tkinter import messagebox

class LoginPage:
    def __init__(self, root):
        # Initialize the window with title and size
        self.root = root
        self.root.title("Library Management System - Login")
        self.root.geometry("300x200")
        
        # Call the method to create the UI components
        self.create_widgets()

    def create_widgets(self):
        # Create a label and entry for the username input
        self.username_label = tk.Label(self.root, text="Username:")
        self.username_label.pack(pady=10)  # Add some vertical spacing
        self.username_entry = tk.Entry(self.root)
        self.username_entry.pack(pady=5)

        # Create a label and entry for the password input
        self.password_label = tk.Label(self.root, text="Password:")
        self.password_label.pack(pady=10)
        self.password_entry = tk.Entry(self.root, show="*")  # Hide the password input
        self.password_entry.pack(pady=5)

        # Create the login button and link it to the login function
        self.login_button = tk.Button(self.root, text="Login", command=self.login)
        self.login_button.pack(pady=20)

    def login(self):
        # Retrieve the username and password entered by the user
        username = self.username_entry.get()
        password = self.password_entry.get()

        # Check if the entered username and password are correct
        if username == "admin" and password == "password":
            # If correct, show a success message
            messagebox.showinfo("Login Success", "You have successfully logged in!")
        else:
            # If incorrect, show an error message
            messagebox.showerror("Login Failed", "Incorrect username or password.")
        
        # Debugging log to make sure event loop is still running
        print("Login attempted")

# Main function to run the application
def main():
    # Create the main Tkinter window
    root = tk.Tk()
    # Create the LoginPage instance and pass the root window
    login_page = LoginPage(root)
    # Start the Tkinter event loop
    root.mainloop()

# Execute the main function if this file is run directly
if __name__ == "__main__":
    main()
