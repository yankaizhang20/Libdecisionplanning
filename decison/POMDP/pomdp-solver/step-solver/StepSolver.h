#include <string>
#include <vector>

#include "Eigen/Dense"

using namespace std;
using namespace Eigen;

class StepSolver {
    public:
        StepSolver() = default;
        StepSolver(const string& valuepath);
        StepSolver(const string& valuepath, const vector<MatrixXd>& T, const vector<MatrixXd>& O);
        void SolvePOMDP(const string& path);
        int FindBestAction(VectorXd belief);
        VectorXd StateEmulater(const VectorXd& belief, int action, int observtion);
        void showValueFunc() const;
        void setT(const vector<MatrixXd>& T);
        void setO(const vector<MatrixXd>& O);
        void setR(const vector<vector<MatrixXd>>& R);
        VectorXd getO(int action,int o);
        void showModel();

    private:
        // pomdp解中每个动作对应的价值函数
        struct ActionValue {
                int action;
                RowVectorXd value;
        };

        void GetValueFunc(const string& path);

    private:
        int statusnums = 0;
        int observationnums = 0;
        int actionnums = 0;
        vector<ActionValue> ValueFunction_;
        //各个动作对应的转换矩阵s->s
        vector<MatrixXd> T_;
        //各个动作对应的观测矩阵s->o
        vector<MatrixXd> O_;
        // //在动作a,观测o,起始状态为s1，终止状态为s2 s1->s2
        // vector<vector<MatrixXd>> R_;
};