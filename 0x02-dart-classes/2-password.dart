// Create a class called Password and give it a string property called password.

// Add a method to Password calledisValid that returns true only

// The length of password should be between 8 and 16.
// password should contains Uppercase letters and lowercase letters
// password should contains numbers .
// toString :
// Example password = "ShouldWorkf7ne"
// Override the toString method of Password class to prints Your Password is: ShouldWorkf7ne.

class Password {
    String password = '';
    
    bool isValid() {
        return password.length >= 8 &&
            password.length <= 16 &&
            password.contains(RegExp(r'[A-Z]')) &&
            password.contains(RegExp(r'[a-z]')) &&
            password.contains(RegExp(r'[0-9]'));
    }
    
    @override
    String toString() {
        return 'Your Password is: $password';
    }
    }

