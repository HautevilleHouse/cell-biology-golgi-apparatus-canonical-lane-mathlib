import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiStack where
  carrier : Type u
  topology : TopologicalSpace carrier
  cisternae : List (carrier -> Prop)
  polarized : Prop
  cisternalMaturation : Prop

structure GolgiAdmittedObject where
  stack : GolgiStack
  membraneBound : Prop
  transportVesiclesAttached : Prop
  conclusion : membraneBound ∧ transportVesiclesAttached

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse