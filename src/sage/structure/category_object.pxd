###############################################################################
#   SAGE: System for Algebra and Geometry Experimentation
#       Copyright (C) 2006 William Stein <wstein@gmail.com>
#  Distributed under the terms of the GNU General Public License (GPL)
#  The full text of the GPL is available at:
#                  http://www.gnu.org/licenses/
###############################################################################

from cpython.object cimport *
include 'sage/ext/stdsage.pxi'

from sage.structure.sage_object cimport SageObject
from sage.structure.generators cimport Generators
# Want circular imports here to define _base as type Parent
# from sage.structure.parent cimport class Parent

cpdef inline check_default_category(default_category, category)

cdef class CategoryObject(sage_object.SageObject):

    cdef _generators
    cdef _category
    cdef public _base
    cdef public _cdata
    cdef public _names # will be _printer
    cdef public _factory_data
    cdef object __weakref__
    cdef long _hash_value

#    cpdef Generators gens(self, category = *)
#    cpdef gen(self, index = *, category = *)
#    cpdef ngens(self, category = *)
#    cpdef base(self, category = *)
#    cpdef base_extend(self, other, category = *)
