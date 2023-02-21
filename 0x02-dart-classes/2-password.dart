// Create a class called Password and give it a string property called password.

// Add a method to Password calledisValid that returns true only

// The length of password should be between 8 and 16.
// password should contains Uppercase letters and lowercase letters
// password should contains numbers .
// toString :
// Example password = "ShouldWorkf7ne"
// Override the toString method of Password class to prints Your Password is: ShouldWorkf7ne.

class Password {
  constructor(password) {
    this.password = password;
    }
    isValid() {
        if (this.password.length >= 8 && this.password.length <= 16) {
            if (this.password.match(/[a-z]/g) && this.password.match(/[A-Z]/g) && this.password.match(/[0-9]/g)) {
            return true;
            }
        }
        return false;
        }
    toString() {
        return `Your Password is: ${this.password}`;
        }
    }
    const password = new Password("ShouldWorkf7ne");
    password.isValid();
    console.log(password.isValid());
    console.log(password.toString());
}
