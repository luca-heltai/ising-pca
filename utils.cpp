#include "./include/utils.h"


namespace utils {
    unsigned seed = std::chrono::steady_clock::now().time_since_epoch().count();
    std::default_random_engine ran{seed};
    std::uniform_real_distribution<double> ureal{0.0, 1.0};

    double rand() {
        return utils::ureal(utils::ran);
    }
}
