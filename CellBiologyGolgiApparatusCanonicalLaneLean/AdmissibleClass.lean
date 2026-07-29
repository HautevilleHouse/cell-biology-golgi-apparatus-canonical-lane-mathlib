import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure AdmittedGolgiObject where
  transportVesicle : Type
  cisternaeNetwork : Prop
  proteinCargoSorted : Prop
  conclusion : proteinCargoSorted

def GolgiWitnessClosed (O : AdmittedGolgiObject) : Prop :=
  O.proteinCargoSorted

structure AdmissibleClass where
  object : AdmittedGolgiObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GolgiWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse