#include <cstdio>
#include <iostream>
#include <vector>

#include "Eigen/Dense"
using namespace Eigen;
using namespace std;

void test_VectorXd() {
        VectorXd vec;
        // VectorXd vec1 {{1,2,3}}; 这样不行，官方文档是这样初始化的啊
        // VectorXd vec1(1, 2, 3);  这样只能为指定尺寸的向量进行初始化
        // VectorXd vec1; 在赋值之前要指明矩阵大小
        // vec1 << 1.0, 2.0, 3.0;
        VectorXd vec1(3);
        vec1 << 1.0, 2.0, 3.0;
        vec = vec1;

        RowVectorXd rowvec(3);
        rowvec << 1, 2, 3;

        VectorXd state(11);

        MatrixXd ans1 = vec * rowvec;
        MatrixXd ans2 = rowvec * vec;
        cout << vec << endl;
        cout << rowvec << endl;
        cout<<"vec.sum():"<<vec.sum()<<endl;
        cout << "vec*rowvec:" << endl << ans1 << endl;
        cout << "rowvec*vec:" << endl << ans2 << endl;
        cout<<"state:"<<state<<endl;
}
void test_MatrixXd() {
        vector<vector<double>> v(3, vector<double>(4, 8));
        // MatrixXd mat(&v);  这样不行
        MatrixXd mat(v.size(), v[0].size());
        for (int i = 0; i < v.size(); i++) {
                for (int j = 0; j < v[0].size(); j++) {
                        mat(i, j) = v[i][j];
                }
        }
        cout << mat << endl;
}

int main() {
        test_VectorXd();
        return 0;
}