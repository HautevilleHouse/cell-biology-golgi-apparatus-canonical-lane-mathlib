import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure CisternalMaturationEvidence {G : GolgiStack} where
  maturationProgression : Prop
  cargoTransport : Prop
  enzymeRetention : Prop
  membraneFusion : Prop

def CisternalMaturationClosed {G : GolgiStack} (E : CisternalMaturationEvidence G) : Prop :=
  E.maturationProgression ∧ E.cargoTransport ∧ E.enzymeRetention ∧ E.membraneFusion

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse