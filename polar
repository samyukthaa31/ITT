#include <iostream>
using namespace std;
class Complex {
private:
    int real;
    int imaginary;
public:
    Complex(int r = 0, int i = 0) : real(r), imaginary(i) {}
    Complex add(const Complex& other) {
        return Complex(real + other.real, imaginary + other.imaginary);
    }
    Complex subtract(const Complex& other) {
        return Complex(real - other.real, imaginary - other.imaginary);
    }

    void display() const {
        if (imaginary >= 0)
            cout << real << " + " << imaginary << "i" << endl;
        else
            cout << real << " - " << -imaginary << "i" << endl;
    }
};

int main() {
    Complex c1(5, 3.), c2(2,1);

    Complex sum = c1.add(c2);
    Complex diff = c1.subtract(c2);

    cout << "Sum: ";
    sum.display();

    cout << "Difference: ";
    diff.display();

    return 0;
}
