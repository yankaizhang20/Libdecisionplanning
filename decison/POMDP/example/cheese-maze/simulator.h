#include <string>
#include <vector>

#include "Eigen/Dense"
#include "StepSolver.h"

using namespace std;
using namespace Eigen;

struct Observation {
        int left;
        int right;
        int up;
        int down;
        Observation(int l, int r, int u, int d) : left(l), right(r), up(u), down(d) {}
};

class CheeseMaze {
    public:
        explicit CheeseMaze(const vector<vector<int>>& maze, const string& path, const vector<MatrixXd>& T,
                            const vector<MatrixXd>& O);
        void Process(const vector<int>& state_init);
        int getObservation();

    private:
        struct Observation {
                int left;
                int right;
                int up;
                int down;
                Observation(int l, int r, int u, int d) : left(l), right(r), up(u), down(d) {}
        };
        void Visualize();
        void StateTrans(int action);
        void setBelief(VectorXd belief);
        void setState(int x, int y);
        VectorXd getInitBelief();

    private:
        VectorXd belief_;
        vector<int> state_;
        vector<vector<int>> maze_;
        StepSolver solver_;
};