import os, sys

currentdir = os.path.dirname(os.path.realpath(__file__))
parentdir = os.path.dirname(currentdir)
sys.path.append(parentdir)

import ising

def test_dimension():
    N = 10
    lattice = ising.Lattice(N)
    assert lattice.get_configuration().size == N*N