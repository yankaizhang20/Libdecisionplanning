#include "StepSolver.h"

#include <climits>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

StepSolver::StepSolver(const string& pomdppath) { GetValueFunc(pomdppath); }

StepSolver::StepSolver(const string& valuepath, const vector<MatrixXd>& T, const vector<MatrixXd>& O) : T_(T), O_(O) {
        GetValueFunc(valuepath);
        if (T_.size() == O_.size()) {
                actionnums = T_.size();
        } else {
                cerr << "T矩阵和O矩阵数量不一致！！！" << endl;
                exit(1);
        }
        if (T_[0].rows() == T_[0].cols()) {
                statusnums = T_[0].rows();
        } else {
                cerr << "T矩阵行列数不一致！！！" << endl;
                exit(1);
        }
        if (O_[0].rows() == statusnums) {
                observationnums = O_[0].cols();
        } else {
                cerr << "O矩阵行数和状态数不一致！！！" << endl;
                exit(1);
        }
}

void StepSolver::setT(const vector<MatrixXd>& T) { T_ = T; }

void StepSolver::setO(const vector<MatrixXd>& O) { O_ = O; }

VectorXd StepSolver::getO(int action, int col) { return O_[action].col(col); }


int StepSolver::FindBestAction(VectorXd belief) {
        if (belief == VectorXd::Zero(statusnums)) {
                return -1;
        }
        double maxvalue = INT_MIN;
        int bestaction = -1;
        for (auto map : ValueFunction_) {
                double value = map.value * belief;
                if (value > maxvalue) {
                        bestaction = map.action;
                        maxvalue = value;
                }
        }
        printf("bestacton:%d\n", bestaction);
        return bestaction;
}

void StepSolver::SolvePOMDP(const string& path) {
        // TODO:
}

VectorXd StepSolver::StateEmulater(const VectorXd& belief, int action, int observtion) {
        VectorXd newbelief = belief;
        //多变量贝叶斯概率公式
        for (int i = 0; i < statusnums; i++) {
                //求条件概率P(o|a,b)
                double P_o_a_b = 0;
                for (int s = 0; s < statusnums; s++) {
                        double O_a_s_o = O_[action](s, observtion);
                        double P_s = T_[action].col(s).transpose() * belief;
                        P_o_a_b += O_a_s_o * P_s;
                }
                if (P_o_a_b == 0) {
                        return VectorXd::Zero(11);
                }
                //求SEs(b,a,o)
                double O_a_sx_o = O_[action](i, observtion);
                double P_s = T_[action].col(i).transpose() * belief;
                double beliefs = O_a_sx_o * P_s / P_o_a_b;
                newbelief[i] = beliefs;
        }
        return newbelief;
}

void StepSolver::showValueFunc() const {
        for (auto map : ValueFunction_) {
                cout << "action:" << map.action << "  value:" << map.value << endl;
        }
}

void StepSolver::GetValueFunc(const string& path) {
        ifstream fs;
        fs.open(path.c_str());
        if (!fs.is_open()) {
                cerr << "open POMDP file failed" << endl;
                exit(-1);
        }
        string s;
        double tempd;
        while (getline(fs, s)) {
                ActionValue map;
                stringstream action(s);
                action >> tempd;
                map.action = (int)tempd;
                getline(fs, s);
                stringstream coefs(s);
                vector<double> coefbuff;
                while (coefs >> tempd) {
                        coefbuff.push_back(tempd);
                }
                map.value.resize(coefbuff.size());
                for (int i = 0; i < coefbuff.size(); i++) {
                        map.value[i] = coefbuff[i];
                }
                getline(fs, s);
                ValueFunction_.push_back(map);
        }
        // showValueFunc();
}

void StepSolver::showModel() {
        printf("T===================================\n");
        int i = 0;
        for (auto e : T_) {
                cout << "a" << i++ << "=" << endl << e << endl;
        }
        printf("O===================================\n");
        i = 0;
        for (auto e : O_) {
                cout << "a" << i++ << "=" << endl << e << endl;
        }
        // printf("R===================================\n");
        // i = 0;
        // int j = 0;
        // for (auto v : R_) {
        //         for (auto e : v) {
        //                 cout << "a" << i << "o" << j++ << endl << e << endl;
        //         }
        //         i++;
        //         j = 0;
        // }
        printf("=====================================\n");
}