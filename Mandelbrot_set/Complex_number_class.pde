class Complex {
    float real;   // the real part
    float img;   // the imaginary part

    public Complex(float real, float img) {
        this.real = real;
        this.img = img;
    }

    public Complex multi(Complex b) {
        float real = this.real * b.real - this.img * b.img;
        float img = this.real * b.img + this.img * b.real;
        return new Complex(real, img);
    }

    public Complex add(Complex b) {
        float real = this.real + b.real;
        float img = this.img + b.img;
        return new Complex(real,img);
    }

    public float modulus() {
        return (this.real*this.real + this.img*this.img);
    }
}