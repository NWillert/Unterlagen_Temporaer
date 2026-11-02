#ifndef MATRIX_2X2_DOUBLE_H
#define MATRIX_2X2_DOUBLE_H

#include <ostream>
#include <istream>
#include <exception>

class matrix_2x2_double
{
public:
    matrix_2x2_double(double c11,double c12,double c21,double c22):c11_(c11),c12_(c12),c21_(c21),c22_(c22)
    {}
    double get_element(unsigned short i,unsigned short j) const
    {
        if (i == 0 && j == 0)
            return c11_;
        if (i == 0 && j == 1)
            return c12_;
        if (i == 1 && j == 0)
            return c21_;
        if (i == 1 && j == 1)
            return c22_;
        if (i > 1)
            throw std::out_of_range("Row index i > 1");
        if (j > 1)
            throw std::out_of_range("Column index j > 1");
        return 0.0; // should never happen; just to get rid of the warning
    }
    double determinant() const
    {
        return c11_ * c22_ - c12_ * c21_;
    }
    bool is_orthogonal() const
    {
        return multiply(transpose()).is_identity();
    }
    bool is_identity() const
    {
        if (c11_ == 1.0 && c22_ == 1.0 &&
            c12_ == 0.0 && c21_ == 0.0)
            return true;
        else
            return false;
    }
    matrix_2x2_double transpose() const
    {
        return matrix_2x2_double(c11_,c21_,c12_,c22_);
    }
    matrix_2x2_double multiply(const matrix_2x2_double& m) const
    {
        return matrix_2x2_double(c11_ * m.c11_ + c12_ * m.c21_,
                                 c11_ * m.c12_ + c12_ * m.c22_,
                                 c21_ * m.c11_ + c22_ * m.c21_,
                                 c21_ * m.c12_ + c22_ * m.c22_);
    }
private:
    double c11_,
           c12_,
           c21_,
           c22_;
};

#endif // MATRIX_2X2_DOUBLE_H
