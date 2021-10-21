#ifndef utils_H
#define utils_H

#include <random>
#include <chrono>

namespace utils{
    extern unsigned seed;
    extern std::default_random_engine ran;
    extern std::uniform_real_distribution<double> ureal;

    double rand(); // return a uniform random number
}

#endif
