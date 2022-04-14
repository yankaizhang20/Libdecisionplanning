#include "simulator.h"

#include <iostream>
using namespace std;

CheeseMaze::CheeseMaze(const vector<vector<int>>& maze, const string& path, const vector<MatrixXd>& T,
                       const vector<MatrixXd>& O)
    : maze_(maze) {
        solver_ = StepSolver(path, T, O);
}
void CheeseMaze::Visualize() {
        for (int i = 0; i < maze_.size(); i++) {
                for (int j = 0; j < maze_[0].size(); j++) {
                        if (state_[0] == i && state_[1] == j) {
                                cout << "*";
                        } else {
                                cout << maze_[i][j];
                        }
                }
                cout << endl;
        }
}

//@action 0:N 1:S 2:E 3:W
void CheeseMaze::StateTrans(int action) {
        int x = state_[0], y = state_[1];
        switch (action) {
                case 0:
                        x -= 1;
                        break;
                case 1:
                        x += 1;
                        break;
                case 2:
                        y += 1;
                        break;
                case 3:
                        y -= 1;
                        break;
                default:
                        break;
        }
        if (maze_[x][y] == 1) {
                return;
        }
        state_[0] = x;
        state_[1] = y;
        printf("当前位置x=%d,y=%d\n", state_[0], state_[1]);
}

//观测值为周围四个格子的情况 1：障碍   0：可走   2：cheese
int CheeseMaze::getObservation() {
        int now = maze_[state_[0]][state_[1]];
        int left = maze_[state_[0]][state_[1] - 1];
        int right = maze_[state_[0]][state_[1] + 1];
        int up = maze_[state_[0] - 1][state_[1]];
        int down = maze_[state_[0] + 1][state_[1]];
        int obs = -1;
        if (left == 1 && up == 1 && right == 0 && down == 0) {
                obs = 0;
        } else if (left == 0 && up == 1 && right == 0 && down == 1) {
                obs = 1;
        } else if (left == 0 && up == 1 && right == 0 && down == 0) {
                obs = 2;
        } else if (left == 0 && up == 1 && right == 1 && down == 0) {
                obs = 3;
        } else if (left == 1 && up == 0 && right == 1 && (down == 0 || down == 2)) {
                obs = 4;
        } else if (left == 1 && up == 0 && right == 1 && down == 1 && now != 2) {
                obs = 5;
        } else if (left == 1 && up == 0 && right == 1 && down == 1 && now == 2) {
                obs = 6;
        } else {
                obs = -1;
        }
        printf("观测值：%d\n", obs);
        return obs;
}

// TODO:边界检查
void CheeseMaze::setState(int x, int y) { state_ = vector<int>{x, y}; }

void CheeseMaze::setBelief(VectorXd belief) { belief_ = belief; }

VectorXd CheeseMaze::getInitBelief() {
        int observationcur = getObservation();
        VectorXd o = solver_.getO(0, observationcur);
        int sum = o.sum();
        if (sum == 0) {
                cout << "初始置信状态为0" << endl;
                return VectorXd::Zero(o.size());
        }
        for (int i = 0; i < o.size(); i++) {
                o[i] /= sum;
        }
        return o;
}

void CheeseMaze::Process(const vector<int>& state_init) {
        setState(state_init[0], state_init[1]);

        int observationcur = getObservation();
        setBelief(solver_.getO(0, observationcur));
        while (maze_[state_[0]][state_[1]] != 2) {
                cout << "置信：" << belief_.transpose() << endl;
                Visualize();
                int action = solver_.FindBestAction(belief_);
                printf("===================\n");
                StateTrans(action);
                observationcur = getObservation();
                belief_ = solver_.StateEmulater(belief_, action, observationcur);
        }
        Visualize();
        printf("get the cheese!!!");
}
