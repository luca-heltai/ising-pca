#include "./include/lattice.hpp"

#include <pybind11/pybind11.h>
#include <pybind11/eigen.h>
#include <pybind11/numpy.h>

namespace py = pybind11;

PYBIND11_MODULE(ising, m) {
    py::class_<Lattice>(m, "Lattice")
        .def(py::init<const int>())
        .def("get_configuration", &Lattice::get_configuration);
}
