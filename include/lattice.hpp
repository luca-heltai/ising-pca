#ifndef lattice_h
#define lattice_h

#include <iostream>
#include "utils.h"
#include <Eigen/Dense>

class Lattice { //square lattice

    public:
        Eigen::ArrayXXi spins;

        Lattice(const int N): spins{N, N} {
            for(int i=0; i<N; i++) {
                for(int j=0; j<N; j++) {
                    if(utils::rand() > 0.5) {
                        spins(i, j) = 1;
                    } else{
                        spins(i, j) = -1;
                    }
                }
            }
        };

        Eigen::ArrayXXi get_configuration() {return spins;}

        virtual ~Lattice() {}
};


#endif
